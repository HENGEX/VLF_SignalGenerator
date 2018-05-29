# Standalone production: running the gridpack from CMSSW

<par>
The gridpack contains all the needed code to produce events (lhe format). 
If you want to create LHE files with your events, you can do the following. 
</par>

## You have the folder where you created the gridpack

<par>
you will have a directory named <i>NameOfYoursCarsd</i>, i.e. FFllUpTo3j_TauAndMuonDecays. Then you can just into its 
work subdirectory and launch the runcmsgrid.sh command from there
</par>

```bash
cd <NameOfYoursCarsd/NameOfYoursCarsd_gridpack>/work/
./runcmsgrid.sh <NEvents> <RandomSeed> <NumberOfCPUs>
```
## You want to test the gridpack.tar.xz
<par>
It is always best to test your gridpack: you should test it by going to a brand new release directory 
(N.B. must be the same release and architecture used for the gridpack creation, this you can see in the name of the gridpack), 
unpack it and run:
</par>

```bash
cmsrel CMSSW_X_Y_Z 
cd CMSSW_X_Y_Z/src
cmsenv
tar -xavf <PathOfGridpack>/NameOfYoursCarsd_gridpack_tarball.tar.xz
bash
./runcmsgrid.sh <NEvents> <RandomSeed> <NumberOfCPUs>

```
<par>
The <i>runcmsgrid.sh</i> script requires 3 parameters: the first one is the number of events to be generated, 
the second one is a random seed and the third one is the number of CPUs. 
Again, things work precisely alike for the NLO case.
</par>

<par>
Then you can compress it
</par>

```bash
gzip -9 cms_final.lhe
```
