<!-- To automatic generation of install.sh: All no code lines must start with #, <par>, * , or contain # -->

# VLF_SignalGenerator

## To produce lhe files

<par> The [instal.sh](./install.sh) script is generated automatically with the following commands in this file </par>

<par>  </par>

```bash
PATHMG="$(pwd)"
wget https://launchpad.net/mg5amcnlo/2.0/2.6.x/+download/MG5_aMC_v2.6.1.tar.gz
tar -xvf /MG5_aMC_v2.6.1.tar.gz
$PATHMG/MG5_aMC_v2_6_1/bin/mg5_aMC $PATHMG/../Mode/FFllUpTo3j_TauAndMuonDecays_proc_card.dat




```