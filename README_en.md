# STAR (Spatial Track And Reconstruction)

## File Info

| Item | Detail |
|---|---|
| File name | `STAR (Spatial Track And Reconstruction).wl` |
| Language | Wolfram Language (Mathematica package format, includes a `(* ::Package:: *)` header) |
| Third-party dependencies | None — only built-in Wolfram functions are used (`Solve`, `NSolve`, `Cross`, `Normalize`, `Tuples`, `DeleteCases`, `Reap`/`Sow`, etc.) |
| Purpose | Computes the geometric correspondence between detector elements across multiple layers of a position-sensitive particle detector array, for the purpose of straight-line track reconstruction |

## Overview

The script models a setup made of **6 detector modules**. Based on the variable naming (`Si`, `CsI`) and the geometric structure, each module is arranged along the particle's flight path as three consecutive layers:

1. **Si1** — first position-sensitive (strip) detector layer
2. **Si2** — second position-sensitive (strip) detector layer
3. **CsI** — a downstream scintillator/crystal array, segmented into a grid of crystal cells

The script assumes particles originate from a **finite-size source** (a 10 mm × 10 mm square aperture, rather than an idealized point source), and uses this to build geometric projections: starting from the four corners of the source aperture, lines are drawn through the opposite corners of a given Si1 strip cell and extended forward to find where they land on the Si2 plane and on the CsI plane. This effectively computes the "geometric shadow" cast by the strip cell once the finite source size (penumbra effect) is taken into account. With this machinery, the script answers questions such as:

- Given a hit strip `(n1, m1)` on Si1, which Si2 strips are geometrically possible to be associated with it?
- Given a strip on Si2, which CsI crystal cells are geometrically possible to be associated with it?
- Combining both steps, for a batch of Si1 strips, generate a Si1–Si2–CsI geometric coincidence table.

This kind of lookup table is typically used in Si–Si–CsI charged-particle telescopes (ΔE-E detectors) to identify, after the fact, which hits across the three layers plausibly belong to the same particle track.

## Core Data: `indata`

`indata` is a list of 6 elements (one per module). Each element is itself a list of 12 three-dimensional coordinate points (units inferred to be mm), describing the corner positions of the Si1, Si2, and CsI planes of that module in space. Based on how each point is used in the formulas, the role of the 12 points can be reconstructed as follows:

| Point # | Plane | Role |
|---|---|---|
| 1 | Si1 | Reference corner defining the +y direction of Si1's local coordinate system |
| 2 | Si1 | (Diagonal corner of the rectangle; not directly used in any formula) |
| 3 | Si1 | **Origin** of Si1's local coordinate system |
| 4 | Si1 | Reference corner defining the +x direction of Si1's local coordinate system |
| 5 | Si2 | +y reference corner; also used to compute the Si2 plane's normal vector |
| 6 | Si2 | Diagonal corner; also used to compute the Si2 plane's normal vector |
| 7 | Si2 | **Origin** of Si2's local coordinate system |
| 8 | Si2 | +x reference corner |
| 9 | CsI | In the 32-strip version, used as the reference point of the plane onto which CsI is projected (assumed parallel to the Si2 plane) |
| 10 | CsI | In the 16-strip version, used together with points 9 and 12 to independently compute the CsI plane's normal vector |
| 11 | CsI | **Origin** of the CsI grid's coordinate system |
| 12 | CsI | In the 16-strip version, used together with points 9 and 10 to independently compute the CsI plane's normal vector |

In other words, for modules 1–4 the code assumes the CsI plane is **strictly parallel** to the Si2 plane (it directly reuses the Si2 plane's normal vector). For modules 5 and 6, the CsI plane's normal vector is instead computed independently from points 9, 11, and 12, suggesting these two modules' CsI arrays may not share the same orientation as their Si2 plane.

## Grid / Geometry Constants

The script hardcodes two sets of parameters, corresponding to "32-strip" and "16-strip" detector geometries:

- **32-strip version** (modules 1–4, functions with `32` in their name): strip count `n=32`, active length `sil=64` (mm), fill factor `c=0.9` (90% of each strip cell is active area, 10% is dead space between strips); CsI crystal pitch parameters `csd1=19` (active crystal size) / `csd2=2` (dead space between crystals), with valid crystal index range restricted to 1–3.
- **16-strip version** (modules 5–6, functions with `16` in their name): strip count `n=16`, active length `sil=49.5` (mm), same fill factor `c=0.9`; CsI crystal pitch parameters `csd1=12.96` / `csd2=0.2`, with valid crystal index range of 1–5.
- **Source aperture**: both versions use `sourceWidth=10`, i.e. a 10×10 mm square centered at the origin (corners `f01`–`f04`), representing the finite size of the particle source/collimator opening.

## Function Reference

### Low-level geometry functions

- `judge32[{n1,m1}, i]` / `judge16[{n1,m1}, i]`
  Given a module index `i` and a Si1 strip address `{n1,m1}`, computes the candidate strip-index ranges that this strip cell projects onto the Si2 plane and the CsI plane. Returns `{ {n1,m1}, {Si2 x-candidate range, Si2 y-candidate range}, {CsI x-candidate range, CsI y-candidate range} }`.

- `judgeCsI32[{n1,m1}, i]` / `judgeCsI16[{n1,m1}, i]`
  Given a module index `i` and a Si2 strip address `{n1,m1}`, computes the candidate CsI crystal index pairs that this strip cell projects onto. Returns `{ {n1,m1}, list of candidate CsI index pairs }`.

### Per-module wrapper functions

- `judge01`…`judge06`: bind `judge32` (modules 1–4) or `judge16` (modules 5, 6) to a specific module index. Input is a Si1 strip address `{n1,m1}`; output has the same shape as `judge32`/`judge16`, except the ranges are expanded into `Tuples` (explicit lists of index pairs via Cartesian product).
- `judgeCsI01`…`judgeCsI06`: similarly bind `judgeCsI32`/`judgeCsI16` to a specific module index. Input is a Si2 strip address `{n1,m1}`; output is the corresponding list of candidate CsI crystal index pairs.

> Note: `judge16`, `judgeCsI16`, and all of `judge01`–`06` and `judgeCsI01`–`06` each appear **twice** in the file (the two copies are nearly identical, differing only in inline comments) — leftovers from earlier revisions. In Wolfram Language a later definition overrides an earlier one with the same pattern, so the definitions actually in effect are whichever appear **last** in the file. This doesn't break functionality, but the duplicate code is worth cleaning up.

### `judgeAll01`…`judgeAll06`

Given a Si1 strip address `{n,m}`, first calls the corresponding `judge0X` to get the candidate Si2 strips, then calls `judgeCsI0X` for each candidate Si2 strip and flattens the results into `{ {n,m}, Si2 candidate list, combined CsI candidate list }`. This chains the "Si1 → Si2" and "Si2 → CsI" geometric relations together, but does not filter the Si2/CsI candidates against any externally supplied range (it returns the full, unfiltered set).

### `outplan[data]`

The top-level batch-processing entry point, used to generate a Si1–Si2–CsI geometric coincidence table over a specified set of index ranges.

**Expected format of the `data` argument:**

```
{ {module index}, {Si1 n-range, Si1 m-range}, {Si2 n-range, Si2 m-range}, {CsI n-range, CsI m-range} }
```

For example, `{{1}, {Range[1,32], Range[1,32]}, {Range[1,32], Range[1,32]}, {Range[1,3], Range[1,3]}}` scans all 32×32 Si1 strips for module 1, restricting the geometric calculation to the given Si2/CsI index ranges.

**Main steps:**

1. For each Si1 strip address within `data[[2]]`, call the corresponding `judge0X`, then intersect the result with the supplied Si2 and CsI ranges, discarding combinations that are geometrically impossible.
2. Deduplicate and rearrange the filtered results (this step repeatedly `Flatten`s the same list to align indices across nested loops of different lengths — a pattern tied to specific assumed input shapes rather than a general-purpose algorithm; verify carefully before changing the range parameters).
3. For each (Si1, Si2) candidate pair, re-run the corresponding `judgeCsI0X` to recompute candidate CsI crystals and intersect them with the supplied CsI range.
4. Aggregate the output with `Reap`/`Sow`: for each Si1 strip address, first emit the number of matching combinations, immediately followed by that many `{ {Si1 index}, {Si2 index}, {CsI index} }` triples.

## Usage Example

```wolfram
(* Direct call to the low-level function: candidate Si2/CsI ranges for Si1 strip (16,16) on module 1 *)
judge32[{16, 16}, 1]

(* Equivalent call via the module wrapper *)
judge01[{16, 16}]

(* Full (unfiltered) list of candidate CsI crystals for Si1 strip (16,16) on module 1 *)
judgeAll01[{16, 16}]

(* Batch-generate the Si1-Si2-CsI coincidence table for module 1 over a given index range *)
outplan[{{1}, {Range[1, 32], Range[1, 32]}, {Range[1, 32], Range[1, 32]}, {Range[1, 3], Range[1, 3]}}]
```

## Notes and Caveats

1. The script is written in `(* ::Package:: *)` format but does **not** use `BeginPackage`/`EndPackage` or `Needs` for namespace isolation, and runs `ClearAll["Global`*"]` at the top — this clears every existing definition in the current `Global` context. Run it in a dedicated Notebook/Kernel session to avoid clobbering unrelated variables.
2. The detector geometry coordinates in `indata` are hardcoded at the top of the script. To adapt the model to an actual detector's real-world geometry, this constant must be edited directly.
3. The geometric solving relies heavily on symbolic `Solve`/numeric `NSolve` calls to find line–plane intersections, and each call to `judge32`/`judge16` re-solves several systems of equations from scratch — this is computationally expensive. For frequent, large-batch calls to `outplan`, consider pre-simplifying the formulas algebraically or caching results.
4. `outplan` contains logic that duplicates lists to align indices based on input length (e.g. `si02 = Flatten[{si02t} × 9]`), which only works correctly for the specific input shapes the original author had in mind. Before widening or narrowing the index ranges, test on a small scale first to avoid index misalignment.
