# DLSdist
DLSdist[data,nreads,wells] takes raw SpectroLight dist.csv data and \
replots according to the number of reads, nreads, and time is \
calculated based on total wells on the plate, w.

In a new Mathematica notebook, the path that contains the package can be set to the current working directory with:
```
SetDirectory["PathToPackage"];
```
The package can then be loaded using: 
```
Needs["dlsdist`"];
```
dist.CSV from the SpectroLight can simply be dragged into the notebook when prefaced with a variable definition:
```
dlsdata = dragdatahere ;
```
Finally, the function is executed with mandatory defitions for the number of reads (<= max reads included in the file), and the total number of wells that were read on the plate so that the time of each read can be calculated (since it is not included in the file). 
```
DLSdist[dlsdata,20,5]
```
Output:
![alt text](https://user-images.githubusercontent.com/42656516/47939387-8a94e880-debd-11e8-9a8f-93b753f708ae.png)
