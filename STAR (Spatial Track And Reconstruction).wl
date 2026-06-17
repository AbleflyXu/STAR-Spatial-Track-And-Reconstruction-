(* ::Package:: *)

ClearAll["Global`*"];
indata={{{66.7934118353242`,-71.15594683355555`,100.6276257540927`},{67.20085497677155`,-11.47268149153636`,123.7304272690622`},{6.198915289921246`,-78.2307908986432`,119.9733268746197`},{6.60635768320995`,-18.54752437951691`,143.0761286234221`},{70.47043815049582`,-76.67184288054077`,111.4886657984189`},{70.83515456488358`,-16.9419164287851`,134.6133989354148`},{9.875941605092857`,-83.74668694562838`,130.834366919016`},{10.24065801948061`,-24.01676049387271`,153.9590991444535`},{73.7441584940562`,-81.70617320436531`,121.7334138080277`},{74.07252033664741`,-21.93290678886266`,144.8690184897258`},{13.14966194865325`,-88.78101726945293`,141.0791149286248`},{13.47802379124447`,-29.00775085395028`,164.2147187128639`}},{{-9.321358890096235`,-77.29549406521964`,118.0561416785928`},{-10.12920346067477`,-19.39288942148592`,145.2340960147694`},{-70.79013615727979`,-70.43333284012022`,101.6093103945652`},{-71.59798124547055`,-12.5307283584857`,128.7872638906226`},{-12.66246826294883`,-81.88964986054177`,128.6264242547761`},{-12.91453343263311`,-23.16525405521995`,154.0700748742354`},{-74.13124604774458`,-75.02748879754152`,112.1795921306293`},{-74.3833112174288`,-16.3030929922197`,137.6232427500886`},{-16.6249855049501`,-86.16283448081904`,139.7074225239657`},{-16.87311218734698`,-28.35600711515067`,164.7535159069672`},{-77.13331394620144`,-79.40789456695356`,123.5175720407059`},{-77.38144011098618`,-21.60106703918591`,148.5636662638267`}},{{-7.993101492083468`,22.3552605366705`,141.4649441346383`},{-8.4957773448549`,81.23136028046781`,116.3780040223564`},{-69.65448041230758`,15.21174638598134`,125.9355050749662`},{-70.1571561636548`,74.08784709312097`,100.8485647143193`},{-11.71737711920406`,27.21067447978781`,152.9346749718069`},{-12.22005297197546`,86.0867742235851`,127.847734859525`},{-73.03278253262712`,19.58021823851372`,136.2555046729964`},{-73.53545786778642`,78.45631814441026`,111.1685654008337`},{-15.83866252505345`,32.3543964133015`,163.8134219854918`},{-16.33348407170155`,90.3105582683796`,139.1184657588159`},{-76.19601476034836`,24.8431668379729`,147.3948638690747`},{-76.69083555883782`,82.7993275159439`,122.6999074085661`}},{{66.11166908107967`,13.95388405326646`,130.0745062274156`},{66.99791040322344`,73.26608554409354`,105.9533332320593`},{5.906390442203929`,22.84563074577517`,149.7267206871666`},{6.792630397152777`,82.15783228826778`,125.6055473338888`},{70.49529574179289`,18.73885718350729`,141.338947359879`},{70.96683280373844`,77.57674748900858`,116.1619169946942`},{10.29001710291706`,27.63060387601597`,160.99116181963`},{10.76190313234352`,86.51202523703995`,135.7955043331077`},{74.27217078072383`,23.86267722530012`,152.1185368588393`},{74.73634035987317`,81.78122391239393`,127.3348981141465`},{14.97697637063834`,32.62001279416424`,171.4736812565214`},{15.44114468401696`,90.53856049626589`,146.6900419055421`}},{{57.7182254580039`,85.00056256033493`,73.94853542300174`},{60.02131777665016`,110.7511560867287`,31.73651474209896`},{9.532166479220962`,95.64947528579197`,77.81569327087745`},{11.83525869644308`,121.4000678488434`,35.60367283833949`},{60.96762232166753`,96.98476401229078`,81.43653477683793`},{63.49288113220828`,123.5512633918947`,39.74605316993003`},{12.78156324146047`,107.6336757744055`,85.30369287307846`},{15.30682256961342`,134.2001753161087`,43.61321210628979`},{71.18057185519953`,101.1273402072188`,94.26197653057812`},{74.5270451253079`,136.3332592378406`,39.01375929771454`},{7.32187619804418`,115.2398384105998`,99.38693786251866`},{10.66834946815257`,150.4457574412216`,44.1387206296551`}},{{-18.91746401824653`,91.8285848486347`,77.97242425793195`},{-18.48396156004333`,118.970361186417`,36.57933362718089`},{-67.03484549743183`,82.35081676117355`,71.25390271274637`},{-66.6013430392286`,109.4925930989558`,29.86081208199529`},{-22.45893599092997`,104.1208178034917`,85.99544693884125`},{-22.02543438230956`,131.2625943550387`,44.60235679028794`},{-70.86373023700821`,95.70111679789218`,79.96769811842675`},{-70.43022777880498`,122.8428931356744`,38.57460748767573`},{-17.39555571383593`,111.8022432009807`,100.7118496778935`},{-16.82105539505275`,147.7719506955868`,45.85555314429364`},{-81.5441309474495`,100.644012522638`,92.72356044375135`},{-80.96963104485437`,136.6137208184872`,37.86726282166744`}}};

judge32[{n1_,m1_},i_]:=Module[{},
six=Normalize[indata[[i]][[4]]-indata[[i]][[3]]];
siy=Normalize[indata[[i]][[1]]-indata[[i]][[3]]];
n=32;c=0.9`;sil=64;
si1=(c sil)/n;
si2=((1-c) sil)/(n-1);
sixI=(c sil six)/n;
siyI=(c sil siy)/n;
sixId=((1-c) sil six)/(n-1);
siyId=((1-c) sil siy)/(n-1);
csd=19 3+2 2;
csd1=19;
csd2=2;
csxI=csd1 six;
csyI=csd1 siy;
csxId=csd2 six;
csyId=csd2 siy;
sourceWidth=10;
f01={-(sourceWidth/2),sourceWidth/2,0};
f02={sourceWidth/2,sourceWidth/2,0};
f03={-(sourceWidth/2),-(sourceWidth/2),0};
f04={sourceWidth/2,-(sourceWidth/2),0};
f11=(n1-1) (sixI+sixId)+m1 (siyI+siyId)+indata[[i]][[3]];
f12=n1 (sixI+sixId)+m1 (siyI+siyId)+indata[[i]][[3]];
f13=(n1-1) (sixI+sixId)+(m1-1) (siyI+siyId)+indata[[i]][[3]];
f14=n1 (sixI+sixId)+(m1-1) (siyI+siyId)+indata[[i]][[3]];
c2=(indata[[i]][[6]]-indata[[i]][[5]])\[Cross](indata[[i]][[7]]-indata[[i]][[5]]);
k1=f01-f14;k2=f02-f13;k3=f03-f12;
k4=f04-f11;f201={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[6]][[1]])+c2[[2]] (y-indata[[i]][[6]][[2]])+c2[[3]] (z-indata[[i]][[6]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];f202={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[6]][[1]])+c2[[2]] (y-indata[[i]][[6]][[2]])+c2[[3]] (z-indata[[i]][[6]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];f203={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[6]][[1]])+c2[[2]] (y-indata[[i]][[6]][[2]])+c2[[3]] (z-indata[[i]][[6]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];f204={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[6]][[1]])+c2[[2]] (y-indata[[i]][[6]][[2]])+c2[[3]] (z-indata[[i]][[6]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];cs1={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[9]][[1]])+c2[[2]] (y-indata[[i]][[9]][[2]])+c2[[3]] (z-indata[[i]][[9]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];cs2={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[9]][[1]])+c2[[2]] (y-indata[[i]][[9]][[2]])+c2[[3]] (z-indata[[i]][[9]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];cs3={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[9]][[1]])+c2[[2]] (y-indata[[i]][[9]][[2]])+c2[[3]] (z-indata[[i]][[9]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];cs4={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[9]][[1]])+c2[[2]] (y-indata[[i]][[9]][[2]])+c2[[3]] (z-indata[[i]][[9]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];tnm1={a,b}/. NSolve[{((f201-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[1]]==0,((f201-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[2]]==0},{a,b}][[1]];tnm2={a,b}/. NSolve[{((f202-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[1]]==0,((f202-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[2]]==0},{a,b}][[1]];tnm3={a,b}/. NSolve[{((f203-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[1]]==0,((f203-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[2]]==0},{a,b}][[1]];tnm4={a,b}/. NSolve[{((f204-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[1]]==0,((f204-indata[[i]][[7]])-(a (sixI+sixId)+b (siyI+siyId)))[[2]]==0},{a,b}][[1]];num1x=Floor[tnm1[[1]]]+1;num2x=Floor[tnm2[[1]]]+1;num3x=Floor[tnm3[[1]]]+1;num4x=Floor[tnm4[[1]]]+1;num1y=Floor[tnm1[[2]]]+1;num2y=Floor[tnm2[[2]]]+1;num3y=Floor[tnm3[[2]]]+1;num4y=Floor[tnm4[[2]]]+1;numx=DeleteCases[{num1x}\[Union]{num2x}\[Union]{num3x}\[Union]{num4x},-3|-2|-1|0|33|34|35|36];numy=DeleteCases[{num1y}\[Union]{num2y}\[Union]{num3y}\[Union]{num4y},-3|-2|-1|0|33|34|35|36];numxC=If[numx=={},{},Range[Min[numx]-1,Max[numx]+1]];numyC=If[numy=={},{},Range[Min[numy]-1,Max[numy]+1]];tnm21={a,b}/. NSolve[{((cs1-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs1-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];tnm22={a,b}/. NSolve[{((cs2-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs2-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];tnm23={a,b}/. NSolve[{((cs3-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs3-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];tnm24={a,b}/. NSolve[{((cs4-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs4-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];numCs1x=Floor[tnm21[[1]]]+1;numCs2x=Floor[tnm22[[1]]]+1;numCs3x=Floor[tnm23[[1]]]+1;numCs4x=Floor[tnm24[[1]]]+1;numCs1y=Floor[tnm21[[2]]]+1;numCs2y=Floor[tnm22[[2]]]+1;numCs3y=Floor[tnm23[[2]]]+1;numCs4y=Floor[tnm24[[2]]]+1;numCsx=DeleteCases[{numCs1x}\[Union]{numCs2x}\[Union]{numCs3x}\[Union]{numCs4x},-1|0|4|5];numCsy=DeleteCases[{numCs1y}\[Union]{numCs2y}\[Union]{numCs3y}\[Union]{numCs4y},-1|0|4|5];
numCsxC=If[numCsx=={},{},Range[Min[numCsx],Max[numCsx]]];
numCsyC=If[numCsy=={},{},Range[Min[numCsy],Max[numCsy]]];
resu={{n1,m1},{numxC,numyC},{numCsxC,numCsyC}}]

judgeCsI32[{n1_,m1_},i_]:=Module[{},six=Normalize[indata[[i]][[8]]-indata[[i]][[7]]];siy=Normalize[indata[[i]][[5]]-indata[[i]][[7]]];n=32;c=0.9`;sil=64;si1=(c sil)/n;si2=((1-c) sil)/(n-1);sixI=(c sil six)/n;siyI=(c sil siy)/n;sixId=((1-c) sil six)/(n-1);siyId=((1-c) sil siy)/(n-1);csd=19 3+2 2;csd1=19;csd2=2;csxI=csd1 six;csyI=csd1 siy;csxId=csd2 six;csyId=csd2 siy;
sourceWidth=10;
f01={-(sourceWidth/2),sourceWidth/2,0};f02={sourceWidth/2,sourceWidth/2,0};f03={-(sourceWidth/2),-(sourceWidth/2),0};f04={sourceWidth/2,-(sourceWidth/2),0};f11=(n1-1) (sixI+sixId)+m1 (siyI+siyId)+indata[[i]][[7]];f12=n1 (sixI+sixId)+m1 (siyI+siyId)+indata[[i]][[7]];f13=(n1-1) (sixI+sixId)+(m1-1) (siyI+siyId)+indata[[i]][[7]];f14=n1 (sixI+sixId)+(m1-1) (siyI+siyId)+indata[[i]][[7]];
c2=(indata[[i]][[6]]-indata[[i]][[5]])\[Cross](indata[[i]][[7]]-indata[[i]][[5]]);
(*c2=(indata\[LeftDoubleBracket]i\[RightDoubleBracket]\[LeftDoubleBracket]10\[RightDoubleBracket]-indata\[LeftDoubleBracket]i\[RightDoubleBracket]\[LeftDoubleBracket]9\[RightDoubleBracket])\[Cross](indata\[LeftDoubleBracket]i\[RightDoubleBracket]\[LeftDoubleBracket]11\[RightDoubleBracket]-indata\[LeftDoubleBracket]i\[RightDoubleBracket]\[LeftDoubleBracket]9\[RightDoubleBracket]);*)k1=f01-f14;k2=f02-f13;k3=f03-f12;k4=f04-f11;cs1={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[10]][[1]])+c2[[2]] (y-indata[[i]][[10]][[2]])+c2[[3]] (z-indata[[i]][[10]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];cs2={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[10]][[1]])+c2[[2]] (y-indata[[i]][[10]][[2]])+c2[[3]] (z-indata[[i]][[10]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];cs3={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[10]][[1]])+c2[[2]] (y-indata[[i]][[10]][[2]])+c2[[3]] (z-indata[[i]][[10]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];cs4={x,y,z}/. Solve[{c2[[1]] (x-indata[[i]][[10]][[1]])+c2[[2]] (y-indata[[i]][[10]][[2]])+c2[[3]] (z-indata[[i]][[10]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];tnm21={a,b}/. NSolve[{((cs1-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs1-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];tnm22={a,b}/. NSolve[{((cs2-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs2-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];tnm23={a,b}/. NSolve[{((cs3-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs3-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];tnm24={a,b}/. NSolve[{((cs4-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[1]]==0,((cs4-indata[[i]][[11]])-(a (csxI+csxId)+b (csyI+csyId)))[[2]]==0},{a,b}][[1]];numCs1x=Floor[tnm21[[1]]]+1;numCs2x=Floor[tnm22[[1]]]+1;numCs3x=Floor[tnm23[[1]]]+1;numCs4x=Floor[tnm24[[1]]]+1;numCs1y=Floor[tnm21[[2]]]+1;numCs2y=Floor[tnm22[[2]]]+1;numCs3y=Floor[tnm23[[2]]]+1;numCs4y=Floor[tnm24[[2]]]+1;numCsx=DeleteCases[{numCs1x}\[Union]{numCs2x}\[Union]{numCs3x}\[Union]{numCs4x},-1|0|4|5];numCsy=DeleteCases[{numCs1y}\[Union]{numCs2y}\[Union]{numCs3y}\[Union]{numCs4y},-1|0|4|5];numCsxC=If[numCsx=={},{},Range[Min[numCsx],Max[numCsx]]];numCsyC=If[numCsy=={},{},Range[Min[numCsy],Max[numCsy]]];
(*Print[numCsxC,numCsyC];*)abcc=Tuples[{numCsxC,numCsyC}];
resu={{n1,m1},abcc}]

judge16[{n1_,m1_},i_]:=Module[{},six=Normalize[indata[[i]][[4]]-indata[[i]][[3]]];
siy=Normalize[indata[[i]][[1]]-indata[[i]][[3]]];
n=16;
c=0.9;
sil=49.5;
si1=c*sil/n;
si2=(1-c)*sil/(n-1);
sixI=c*sil/n*six;
siyI=c*sil/n*siy;
sixId=(1-c)*sil/(n-1)*six;
siyId=(1-c)*sil/(n-1)*siy;
csd=65.6;
csd1=12.96;
csd2=0.2;
csxI=csd1*six;
csyI=csd1*siy;
csxId=csd2*six;
csyId=csd2*siy;
(*\:6539\:52a83*)sourceWidth=10;
f01={-sourceWidth/2,sourceWidth/2,0};
f02={sourceWidth/2,sourceWidth/2,0};
f03={-sourceWidth/2,-sourceWidth/2,0};
f04={sourceWidth/2,-sourceWidth/2,0};
f11=(n1-1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[3]];
f12=(n1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[3]];
f13=(n1-1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[3]];
f14=(n1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[3]];
c2=Cross[indata[[i]][[6]]-indata[[i]][[5]],indata[[i]][[7]]-indata[[i]][[5]]];
k1=f01-f14;
k2=f02-f13;
k3=f03-f12;
k4=f04-f11;
f201={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];
f202={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];
f203={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];
f204={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];
cs1={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];
cs2={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];
cs3={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];
cs4={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];
tnm1={a,b}/.NSolve[{((f201-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f201-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
tnm2={a,b}/.NSolve[{((f202-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f202-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
tnm3={a,b}/.NSolve[{((f203-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f203-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
tnm4={a,b}/.NSolve[{((f204-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f204-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
num1x=Floor[tnm1[[1]]]+1;
num2x=Floor[tnm2[[1]]]+1;
num3x=Floor[tnm3[[1]]]+1;
num4x=Floor[tnm4[[1]]]+1;
num1y=Floor[tnm1[[2]]]+1;
num2y=Floor[tnm2[[2]]]+1;
num3y=Floor[tnm3[[2]]]+1;
num4y=Floor[tnm4[[2]]]+1;
numx=DeleteCases[Union[{num1x},{num2x},{num3x},{num4x}],Alternatives[-3,-2,-1,0,33,34,35,36]];
numy=DeleteCases[Union[{num1y},{num2y},{num3y},{num4y}],Alternatives[-3,-2,-1,0,33,34,35,36]];
numxC=If[numx=={},{},Range[Min[numx],Max[numx]]];
numyC=If[numy=={},{},Range[Min[numy],Max[numy]]];
tnm21={a,b}/.NSolve[{((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm22={a,b}/.NSolve[{((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm23={a,b}/.NSolve[{((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm24={a,b}/.NSolve[{((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
numCs1x=Floor[tnm21[[1]]]+1;
numCs2x=Floor[tnm22[[1]]]+1;
numCs3x=Floor[tnm23[[1]]]+1;
numCs4x=Floor[tnm24[[1]]]+1;
numCs1y=Floor[tnm21[[2]]]+1;
numCs2y=Floor[tnm22[[2]]]+1;
numCs3y=Floor[tnm23[[2]]]+1;
numCs4y=Floor[tnm24[[2]]]+1;
numCsx=DeleteCases[Union[{numCs1x},{numCs2x},{numCs3x},{numCs4x}],Alternatives[-2,-1,0,4,5]];
numCsy=DeleteCases[Union[{numCs1y},{numCs2y},{numCs3y},{numCs4y}],Alternatives[-2,-1,0,4,5]];
numCsxC=If[numCsx=={},{},Range[Min[numCsx],Max[numCsx]]];
numCsyC=If[numCsy=={},{},Range[Min[numCsy],Max[numCsy]]];
resu={{n1,m1},{numxC,numyC},{numCsxC,numCsyC}}]

judgeCsI16[{n1_,m1_},i_]:=Module[{},six=Normalize[indata[[i]][[8]]-indata[[i]][[7]]];
siy=Normalize[indata[[i]][[5]]-indata[[i]][[7]]];
n=16;
c=0.9;
sil=49.5;
si1=c*sil/n;
si2=(1-c)*sil/(n-1);
sixI=c*sil/n*six;
siyI=c*sil/n*siy;
sixId=(1-c)*sil/(n-1)*six;
siyId=(1-c)*sil/(n-1)*siy;
csd=65.6;
csd1=12.96;
csd2=0.2;
csxI=csd1*six;
csyI=csd1*siy;
csxId=csd2*six;
csyId=csd2*siy;
sourceWidth=10;
f01={-sourceWidth/2,sourceWidth/2,0};
f02={sourceWidth/2,sourceWidth/2,0};
f03={-sourceWidth/2,-sourceWidth/2,0};
f04={sourceWidth/2,-sourceWidth/2,0};
f11=(n1-1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[7]];
f12=(n1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[7]];
f13=(n1-1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[7]];
f14=(n1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[7]];
c2=Cross[indata[[i]][[12]]-indata[[i]][[11]],indata[[i]][[9]]-indata[[i]][[11]]];
k1=f01-f14;
k2=f02-f13;
k3=f03-f12;
k4=f04-f11;
cs1={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];
cs2={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];
cs3={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];
cs4={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];
tnm21={a,b}/.NSolve[{((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm22={a,b}/.NSolve[{((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm23={a,b}/.NSolve[{((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm24={a,b}/.NSolve[{((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
numCs1x=Floor[tnm21[[1]]]+1;
numCs2x=Floor[tnm22[[1]]]+1;
numCs3x=Floor[tnm23[[1]]]+1;
numCs4x=Floor[tnm24[[1]]]+1;
numCs1y=Floor[tnm21[[2]]]+1;
numCs2y=Floor[tnm22[[2]]]+1;
numCs3y=Floor[tnm23[[2]]]+1;
numCs4y=Floor[tnm24[[2]]]+1;
numCsx=Select[Union[{numCs1x},{numCs2x},{numCs3x},{numCs4x}],1<=#<=5&];
numCsy=Select[Union[{numCs1y},{numCs2y},{numCs3y},{numCs4y}],1<=#<=5&];
numCsxC=If[numCsx=={},{},Range[Min[numCsx],Max[numCsx]]];
numCsyC=If[numCsy=={},{},Range[Min[numCsy],Max[numCsy]]];
resu={{n1,m1},Tuples[{numCsxC,numCsyC}]}]

judge01[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},1];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge02[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},2];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge03[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},3];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge04[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},4];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}];
judge05[{n1_,m1_}]:=Module[{},ju=judge16[{n1,m1},5];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge06[{n1_,m1_}]:=Module[{},ju=judge16[{n1,m1},6];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]

judgeCsI01[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},1];ju[[2]]];
judgeCsI02[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},2];ju[[2]]];
judgeCsI03[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},3];ju[[2]]];
judgeCsI04[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},4];ju[[2]]];
judgeCsI05[{n1_,m1_}]:=Module[{},ju=judgeCsI16[{n1,m1},5];ju[[2]]];
judgeCsI06[{n1_,m1_}]:=Module[{},ju=judgeCsI16[{n1,m1},6];ju[[2]]];

judge16[{n1_,m1_},i_]:=Module[{},six=Normalize[indata[[i]][[4]]-indata[[i]][[3]]];
siy=Normalize[indata[[i]][[1]]-indata[[i]][[3]]];
n=16;
c=0.9;
sil=49.5;
si1=c*sil/n;
si2=(1-c)*sil/(n-1);
sixI=c*sil/n*six;
siyI=c*sil/n*siy;
sixId=(1-c)*sil/(n-1)*six;
siyId=(1-c)*sil/(n-1)*siy;
csd=65.6;
csd1=12.96;
csd2=0.2;
csxI=csd1*six;
csyI=csd1*siy;
csxId=csd2*six;
csyId=csd2*siy;
(*\:6539\:52a83*)sourceWidth=10;
f01={-sourceWidth/2,sourceWidth/2,0};
f02={sourceWidth/2,sourceWidth/2,0};
f03={-sourceWidth/2,-sourceWidth/2,0};
f04={sourceWidth/2,-sourceWidth/2,0};
f11=(n1-1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[3]];
f12=(n1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[3]];
f13=(n1-1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[3]];
f14=(n1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[3]];
c2=Cross[indata[[i]][[6]]-indata[[i]][[5]],indata[[i]][[7]]-indata[[i]][[5]]];
k1=f01-f14;
k2=f02-f13;
k3=f03-f12;
k4=f04-f11;
f201={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];
f202={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];
f203={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];
f204={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[6]][[1]])+c2[[2]]*(y-indata[[i]][[6]][[2]])+c2[[3]]*(z-indata[[i]][[6]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];
cs1={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];
cs2={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];
cs3={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];
cs4={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];
tnm1={a,b}/.NSolve[{((f201-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f201-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
tnm2={a,b}/.NSolve[{((f202-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f202-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
tnm3={a,b}/.NSolve[{((f203-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f203-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
tnm4={a,b}/.NSolve[{((f204-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[1]]==0,((f204-indata[[i]][[7]])-(a*(sixI+sixId)+b*(siyI+siyId)))[[2]]==0},{a,b}][[1]];
num1x=Floor[tnm1[[1]]]+1;
num2x=Floor[tnm2[[1]]]+1;
num3x=Floor[tnm3[[1]]]+1;
num4x=Floor[tnm4[[1]]]+1;
num1y=Floor[tnm1[[2]]]+1;
num2y=Floor[tnm2[[2]]]+1;
num3y=Floor[tnm3[[2]]]+1;
num4y=Floor[tnm4[[2]]]+1;
(*\:6539\:52a84*)numx=DeleteCases[Union[{num1x},{num2x},{num3x},{num4x}],Alternatives[-3,-2,-1,0,33,34,35,36]];
numy=DeleteCases[Union[{num1y},{num2y},{num3y},{num4y}],Alternatives[-3,-2,-1,0,33,34,35,36]];
(*numxC=If[numx=={},{},Range[Min[numx],Max[numx]]];
numyC=If[numy=={},{},Range[Min[numy],Max[numy]]];*)numxC=If[numx=={},{},Range[Min[numx],Max[numx]]];
numyC=If[numy=={},{},Range[Min[numy],Max[numy]]];
tnm21={a,b}/.NSolve[{((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm22={a,b}/.NSolve[{((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm23={a,b}/.NSolve[{((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm24={a,b}/.NSolve[{((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
numCs1x=Floor[tnm21[[1]]]+1;
numCs2x=Floor[tnm22[[1]]]+1;
numCs3x=Floor[tnm23[[1]]]+1;
numCs4x=Floor[tnm24[[1]]]+1;
numCs1y=Floor[tnm21[[2]]]+1;
numCs2y=Floor[tnm22[[2]]]+1;
numCs3y=Floor[tnm23[[2]]]+1;
numCs4y=Floor[tnm24[[2]]]+1;
numCsx=DeleteCases[Union[{numCs1x},{numCs2x},{numCs3x},{numCs4x}],Alternatives[-2,-1,0,4,5]];
numCsy=DeleteCases[Union[{numCs1y},{numCs2y},{numCs3y},{numCs4y}],Alternatives[-2,-1,0,4,5]];
numCsxC=If[numCsx=={},{},Range[Min[numCsx],Max[numCsx]]];
numCsyC=If[numCsy=={},{},Range[Min[numCsy],Max[numCsy]]];
resu={{n1,m1},{numxC,numyC},{numCsxC,numCsyC}}]

judgeCsI16[{n1_,m1_},i_]:=Module[{},six=Normalize[indata[[i]][[8]]-indata[[i]][[7]]];
siy=Normalize[indata[[i]][[5]]-indata[[i]][[7]]];
n=16;
c=0.9;
sil=49.5;
si1=c*sil/n;
si2=(1-c)*sil/(n-1);
sixI=c*sil/n*six;
siyI=c*sil/n*siy;
sixId=(1-c)*sil/(n-1)*six;
siyId=(1-c)*sil/(n-1)*siy;
csd=65.6;
csd1=12.96;
csd2=0.2;
csxI=csd1*six;
csyI=csd1*siy;
csxId=csd2*six;
csyId=csd2*siy;
sourceWidth=10;
f01={-sourceWidth/2,sourceWidth/2,0};
f02={sourceWidth/2,sourceWidth/2,0};
f03={-sourceWidth/2,-sourceWidth/2,0};
f04={sourceWidth/2,-sourceWidth/2,0};
f11=(n1-1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[7]];
f12=(n1)*(sixI+sixId)+(m1-1)*(siyI+siyId)+indata[[i]][[7]];
f13=(n1-1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[7]];
f14=(n1)*(sixI+sixId)+(m1)*(siyI+siyId)+indata[[i]][[7]];
c2=Cross[indata[[i]][[12]]-indata[[i]][[11]],indata[[i]][[9]]-indata[[i]][[11]]];
k1=f01-f14;
k2=f02-f13;
k3=f03-f12;
k4=f04-f11;
cs1={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f01[[1]])/k1[[1]]==(y-f01[[2]])/k1[[2]],(z-f01[[3]])/k1[[3]]==(y-f01[[2]])/k1[[2]]},{x,y,z}][[1]];
cs2={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f02[[1]])/k2[[1]]==(y-f02[[2]])/k2[[2]],(z-f02[[3]])/k2[[3]]==(y-f02[[2]])/k2[[2]]},{x,y,z}][[1]];
cs3={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f03[[1]])/k3[[1]]==(y-f03[[2]])/k3[[2]],(z-f03[[3]])/k3[[3]]==(y-f03[[2]])/k3[[2]]},{x,y,z}][[1]];
cs4={x,y,z}/.Solve[{c2[[1]]*(x-indata[[i]][[9]][[1]])+c2[[2]]*(y-indata[[i]][[9]][[2]])+c2[[3]]*(z-indata[[i]][[9]][[3]])==0,(x-f04[[1]])/k4[[1]]==(y-f04[[2]])/k4[[2]],(z-f04[[3]])/k4[[3]]==(y-f04[[2]])/k4[[2]]},{x,y,z}][[1]];
tnm21={a,b}/.NSolve[{((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs1-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm22={a,b}/.NSolve[{((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs2-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm23={a,b}/.NSolve[{((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs3-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
tnm24={a,b}/.NSolve[{((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[1]]==0,((cs4-indata[[i]][[11]])-(a*(csxI+csxId)+b*(csyI+csyId)))[[2]]==0},{a,b}][[1]];
numCs1x=Floor[tnm21[[1]]]+1;
numCs2x=Floor[tnm22[[1]]]+1;
numCs3x=Floor[tnm23[[1]]]+1;
numCs4x=Floor[tnm24[[1]]]+1;
numCs1y=Floor[tnm21[[2]]]+1;
numCs2y=Floor[tnm22[[2]]]+1;
numCs3y=Floor[tnm23[[2]]]+1;
numCs4y=Floor[tnm24[[2]]]+1;
(*\:6539\:52a85*)numCsx=Select[Union[{numCs1x},{numCs2x},{numCs3x},{numCs4x}],1<=#<=5&];
numCsy=Select[Union[{numCs1y},{numCs2y},{numCs3y},{numCs4y}],1<=#<=5&];
numCsxC=If[numCsx=={},{},Range[Min[numCsx],Max[numCsx]]];
numCsyC=If[numCsy=={},{},Range[Min[numCsy],Max[numCsy]]];
resu={{n1,m1},Tuples[{numCsxC,numCsyC}]}]

judge01[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},1];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge02[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},2];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge03[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},3];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge04[{n1_,m1_}]:=Module[{},ju=judge32[{n1,m1},4];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}];
judge05[{n1_,m1_}]:=Module[{},ju=judge16[{n1,m1},5];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]
judge06[{n1_,m1_}]:=Module[{},ju=judge16[{n1,m1},6];data2=ju[[2]];data3=ju[[3]];{{n1,m1},Tuples[data2],Tuples[data3]}]

judgeCsI01[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},1];ju[[2]]];
judgeCsI02[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},2];ju[[2]]];
judgeCsI03[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},3];ju[[2]]];
judgeCsI04[{n1_,m1_}]:=Module[{},ju=judgeCsI32[{n1,m1},4];ju[[2]]];
judgeCsI05[{n1_,m1_}]:=Module[{},ju=judgeCsI16[{n1,m1},5];ju[[2]]];
judgeCsI06[{n1_,m1_}]:=Module[{},ju=judgeCsI16[{n1,m1},6];ju[[2]]];

judgeAll01[{n_,m_}]:=Module[{},tab=judge01[{n,m}];
td=Table[tdata=judgeCsI01[tab[[2]][[i]]](*;
{tab[[1]],tab[[2]][[i]],tdata}*),{i,1,Length[tab[[2]]]}];
{tab[[1]],tab[[2]],Flatten[td,1]}]

judgeAll02[{n_,m_}]:=Module[{},tab=judge02[{n,m}];
td=Table[tdata=judgeCsI02[tab[[2]][[i]]](*;
{tab[[1]],tab[[2]][[i]],tdata}*),{i,1,Length[tab[[2]]]}];
{tab[[1]],tab[[2]],Flatten[td,1]}]
judgeAll03[{n_,m_}]:=Module[{},tab=judge03[{n,m}];
td=Table[tdata=judgeCsI03[tab[[2]][[i]]](*;
{tab[[1]],tab[[2]][[i]],tdata}*),{i,1,Length[tab[[2]]]}];
{tab[[1]],tab[[2]],Flatten[td,1]}]
judgeAll04[{n_,m_}]:=Module[{},tab=judge04[{n,m}];
td=Table[tdata=judgeCsI04[tab[[2]][[i]]](*;
{tab[[1]],tab[[2]][[i]],tdata}*),{i,1,Length[tab[[2]]]}];
{tab[[1]],tab[[2]],Flatten[td,1]}]
judgeAll05[{n_,m_}]:=Module[{},tab=judge05[{n,m}];
td=Table[tdata=judgeCsI05[tab[[2]][[i]]](*;
{tab[[1]],tab[[2]][[i]],tdata}*),{i,1,Length[tab[[2]]]}];
{tab[[1]],tab[[2]],Flatten[td,1]}]
judgeAll06[{n_,m_}]:=Module[{},tab=judge06[{n,m}];
td=Table[tdata=judgeCsI06[tab[[2]][[i]]](*;
{tab[[1]],tab[[2]][[i]],tdata}*),{i,1,Length[tab[[2]]]}];
{tab[[1]],tab[[2]],Flatten[td,1]}]

outplan[data_]:=Module[{indataSi1,indataSi2,indataCsI,plan,ntc,outdata,plan1,si01,si02t,si02,datasi2,si03t,si03,si04t,si04,datacs,datacs01t,datacs01,dataT,out,reapResult},

indataSi1=Tuples[data[[2]]];
indataSi2=Tuples[data[[3]]];
indataCsI=Tuples[data[[4]]];
plan={};
Do[ntc=indataSi1[[i]];
outdata=Which[data[[1]]=={1},judge01[ntc],data[[1]]=={2},judge02[ntc],data[[1]]=={3},judge03[ntc],data[[1]]=={4},judge04[ntc],data[[1]]=={5},judge05[ntc],data[[1]]=={6},judge06[ntc]];

plan=Append[plan,{ntc,Intersection[outdata[[2]],indataSi2],Intersection[outdata[[3]],indataCsI]}];,{i,1,Length[Tuples[data[[2]]]]}];
plan1=plan;

Do[If[plan1[[i,2]]=={},plan1[[i,3]]={};plan1[[i,1]]={};];,{i,1,Length[plan]}];
plan1=DeleteCases[plan1,{{},{},{}}];
si01=plan1[[All,1]][[All,1]]//DeleteDuplicates;
si02t=plan1[[All,1]][[All,2]]//DeleteDuplicates;
si02=Flatten[{si02t,si02t,si02t,si02t,si02t,si02t,si02t,si02t,si02t}];
datasi2=Flatten[plan1[[All,2]],1];
si03t=datasi2[[All,1]]//DeleteDuplicates;
si03=Flatten[{si03t,si03t,si03t,si03t,si03t,si03t,si03t,si03t}];
si04t=datasi2[[All,2]]//DeleteDuplicates;
si04=Flatten[{si04t,si04t,si04t,si04t,si04t,si04t,si04t,si04t,si04t,si04t}];
datacs=Flatten[{plan1[[All,3]]},1]//DeleteDuplicates;
datacs01t=datacs;
csnm=Intersection[outdata[[3]],indataCsI];
dataT={};
out={};
Do[Do[Do[

tcc = Which[
    data[[1]] == {1}, judgeCsI01[{si03[[nm1+nm3]], si04[[nm1]]}],
    data[[1]] == {2}, judgeCsI02[{si03[[nm1+nm3]], si04[[nm1]]}],
    data[[1]] == {3}, judgeCsI03[{si03[[nm1+nm3]], si04[[nm1]]}],
    data[[1]] == {4}, judgeCsI04[{si03[[nm1+nm3]], si04[[nm1]]}],
    data[[1]] == {5}, judgeCsI05[{si03[[nm1+nm3]], si04[[nm1]]}],
    data[[1]] == {6}, judgeCsI06[{si03[[nm1+nm3]], si04[[nm1]]}]
];
accc=Intersection[indataCsI,tcc];
nmcslength=Length[accc];

If[accc=!={},Do[dataT=Append[dataT,{{si01[[nm1]],si02[[nm1+nm2]]},{si03[[nm1+nm3]],si04[[nm1]]},accc[[nm4]]}];,{nm4,1,Length[accc]}],(*accc \:4e3a\:7a7a\:65f6\:ff1a\:8ffd\:52a0\:5360\:4f4d\:8bb0\:5f55\:6216\:76f4\:63a5\:8df3\:8fc7\:ff0c\:6309\:9700\:9009\:62e9*)dataT=Append[dataT,{{si01[[nm1]],si02[[nm1+nm2]]},{si03[[nm1+nm3]],si04[[nm1]]},{}}]];
,{nm1,1,Length[si01]}];
out=Append[out,dataT];
dataT={};,{nm2,0,Length[si02t]-1}];,{nm3,0,Length[si03t]-1}];



reapResult=Last@Reap[Do[Sow[Length[out[[i]]]];
Do[Sow[out[[i]][[j]]],{j,1,Length[out[[i]]]}],{i,1,Length[out]}]];
Flatten[reapResult,1]]
