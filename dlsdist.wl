(* ::Package:: *)

BeginPackage["DLSdist`"]

DLSdist::usage="dlsdist[data,nreads,wells] takes raw SpectroLight dist.csv data and replots according to the number of reads, nreads, and time is calculated based on total wells on the plate, w."

Begin["`Private`"]

DLSdist[data_,n_,w_]:=
Module[
{a,b,c,d,e,f,g,plt},
a=Take[data,{3,Length[data]}];
b=Drop[#,1]&/@Partition[a,81];
c= Flatten[Table[Table[x,80],{x,1,n}]];
d=Append[Riffle[Flatten[b],c,3],25];
e=Partition[d,6000/n];
f=Partition[#,3]&/@e;
g=f/.{x_,y_,z_}->{z*(12.5*w),Log[x*10^12],100y};
plt=BubbleChart[
g,
PlotRange->All,
AspectRatio->1/3,
FrameStyle->Black,
FrameTicksStyle->16,
FrameLabel->{Style["Time (s)",16],Style["Radius (nm)",16]}
];
Print@plt
]

End[]

EndPackage[]








