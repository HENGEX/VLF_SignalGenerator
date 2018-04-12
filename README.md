<!-- To automatic generation of install.sh: All no code lines must start with #, <par>, * , or contain # -->
# VLF_SignalGenerator

<!-- Comments -->

## Quick tutorial on how to produce a gridpack
<par> The [instal.sh](./install.sh) script is generated automatically with the following commands in this file </par>

<par>First you have to copy the local gridpack_generation.sh file to the genproductions/bin/MadGraph5_aMCatNLO</par>

<par> We instruct users to clone the whole genproductions from git and work there. On a lxplus machine (not in a release area), you can do the following:</par>

```bash
PATHCAS="$(pwd)"
#git clone git@github.com:cms-sw/genproductions.git genproductions
git clone git@github.com:cms-sw/genproductions.git genproductions -b mg26x
```
<par>Then you should copy a modyfy 'gridpack_generation.sh' to the 'PATH/genproductions/bin/MadGraph5_aMCatNLO/' folder</par>

```bash
cp $PATHCAS/gridpack_generation_6_2_x.sh $PATHCAS/genproductions/bin/MadGraph5_aMCatNLO/
$PATHCAS/genproductions/bin/MadGraph5_aMCatNLO/gridpack_generation.sh FFllUpTo3j_TauAndMuonDecays $PATHCAS/Model 1nd 
```

<par> Note: the output directory specified in the *_proc_card.dat should match the name of the process as used in the gridpack_generation.sh script. In this example, as you see from the last line, we are launching the jobs onto the 1nd queue (CPU limit one day). For complicated processes (e.g. W+jets), please consider using a queue with a longer CPU limit (e.g. 1nw, which has a CPU limit of one week). The queue parameter is optional, if it is not provided, then all jobs run locally (multicore). for more information go  [twiki](https://twiki.cern.ch/twiki/bin/viewauth/CMS/QuickGuideMadGraph5aMCatNLO) </par>
