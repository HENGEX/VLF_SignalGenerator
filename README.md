<!-- To automatic generation of install.sh: All no code lines must start with #, <par>, * , or contain # -->
# VLF_SignalGenerator

<!-- Comments -->

## Quick tutorial on how to produce a gridpack
<par> The [instal.sh](./install.sh) script is generated automatically with the following commands in this file</par>

<par>We instruct users to clone the whole genproductions from git and work there. On a lxplus machine (not in a release area), you can do the following:</par>

```bash
git@github.com:casfisica/VLF_SignalGenerator.git
cd VLF_SignalGenerator/
git clone git@github.com:cms-sw/genproductions.git genproductions
cd genproductions/bin/MadGraph5_aMCatNLO/
./gridpack_generation.sh model ../../../Model/
```

./gridpack_generation.sh <name of process card without _proc_card.dat> <folder containing cards relative to current location>

e.g.

./gridpack_generation.sh wplustest_4f_LO cards/examples/wplustest_4f_LO 1nd

Note: the output directory specified in the *_proc_card.dat should match the name of the process as used in the gridpack_generation.sh script 
