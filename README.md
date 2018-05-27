<!-- To automatic generation of install.sh: All no code lines must start with #, <par>, * , or contain # -->
# VLF_SignalGenerator

<!-- Comments -->

## Quick tutorial on how to produce a gridpack
<par> The [instal.sh](./install.sh) script is generated automatically with the following commands in this file </par>

```bash
git clone git@github.com:casfisica/VLF_SignalGenerator.git
cd VLF_SignalGenerator
```

<par>First you have to use your own version of gcc compilers [MyOwnVersionOfGCC_LXPLUS](https://github.com/casfisica/MyOwnVersionOfGCC_LXPLUS.git)</par>

```bash
wget http://gfortran.meteodat.ch/download/x86_64/snapshots/gcc-4.9-20160803.tar.xz
tar xvf gcc-4.9-20160803.tar.xz
NEWFORTRANPATH="$(pwd)"

cat <<EOT >> CONFIGNEWFORTRAN.sh 
#!/bin/sh

export PATH=$NEWFORTRANPATH/gcc-4.9/bin:$PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
    LD_LIBRARY_PATH="$NEWFORTRANPATH/gcc-4.9/lib64"
  else
    LD_LIBRARY_PATH="$NEWFORTRANPATH/gcc-4.9/lib64:$LD_LIBRARY_PATH"
  fi
  export LD_LIBRARY_PATH
EOT
```
<par>And when you want to use it, just source the config script, every time you logout</par>


```bash
#source PATH_TO_THE_FORTRAN_FOLDE/CONFIGNEWFORTRAN.sh 
source ./CONFIGNEWFORTRAN.sh 

```

<par>then you have to copy the local gridpack_generation.sh file to the genproductions/bin/MadGraph5_aMCatNLO</par>

<par> We instruct users to clone the whole genproductions from git and work there. On a lxplus machine (not in a release area), you can do the following:</par>

```bash
PATHCAS="$(pwd)"
git clone git@github.com:cms-sw/genproductions.git genproductions
#git clone git@github.com:cms-sw/genproductions.git genproductions -b mg26x
```
<par>Then you modify  de 'gridpack_generation.sh' to the 'PATH/genproductions/bin/MadGraph5_aMCatNLO/' folder</par>

```bash
cd $PATHCAS/genproductions/bin/MadGraph5_aMCatNLO/
eval "cat gridpack_generation.sh  | sed '/wget --no-check-certificate https/c\            cp $PATHCAS\/Model\/\$model .\/'> gridpack_generation.sh "

```
<par>To run just </par>
    
```bash
./gridpack_generation.sh FFllUpTo3j_TauAndMuonDecays ../../../Model/ local &

```

<par>Then to see the progres</par>

```bash
tail -f FFllUpTo3j_TauAndMuonDecays.log 
```


<par> Note: the output directory specified in the *_proc_card.dat should match the name of the process as used in the gridpack_generation.sh script. In this example, as you see from the last line, we are launching the jobs onto the 1nd queue (CPU limit one day). For complicated processes (e.g. W+jets), please consider using a queue with a longer CPU limit (e.g. 1nw, which has a CPU limit of one week). The queue parameter is optional, if it is not provided, then all jobs run locally (multicore). for more information go  [twiki](https://twiki.cern.ch/twiki/bin/viewauth/CMS/QuickGuideMadGraph5aMCatNLO) </par>

### Troubleshoot: 
<par> When we are producing events, the error:
        Warning: No element <mgrwt> in event
        ./runcmsgrid.sh: line 235:  9687 Segmentation fault      (core dumped)
    is produced by the option pdfwgt=true. in the run_car.dat, and is fixed by changed it to false pdfwgt=false </par>
