<!-- To automatic generation of install.sh: All no code lines must start with #, <par>, * , or contain # -->

# VLF_SignalGenerator

## To produce lhe files

<par> The [instal.sh](./install.sh) script is generated automatically with the following commands in this file </par>

<par> Dowload MadGraph and untar it, then copy the model file (<b>SimplifiedDMSSSFDM</b>) from the <b>Model</b> folder, to the <b>MG5_aMC_v2_6_1/models/</b> folder, and run the <b>FFllUpTo3j_TauAndMuonDecays_proc_card.dat </b> </par>

```bash
PATHMG="$(pwd)"
#download MadGraph
wget https://launchpad.net/mg5amcnlo/2.0/2.6.x/+download/MG5_aMC_v2.6.2.tar.gz
# untar
tar -xvf MG5_aMC_v2.6.2.tar.gz
#copy the model
tar -xvf $PATHMG/../Model/SimplifiedDMSSSFDM.tar -C $PATHMG/MG5_aMC_v2_6_2/models/
#run
$PATHMG/MG5_aMC_v2_6_2/bin/mg5_aMC $PATHMG/../Model/FFllUpTo3j_TauAndMuonDecays_proc_card.dat
```
<par> Now go to the <b>FFllUpTo3j_TauAndMuonDecays</b> folder, and copy the cards <b>FFllUpTo3j_TauAndMuonDecays_... </b> to de folder <b>Cards</b>, using the correct names </par>

```bash
cp $PATHMG/../Model/FFllUpTo3j_TauAndMuonDecays_param_card.dat $PATHMG/FFllUpTo3j_TauAndMuonDecays/Cards/param_card.dat
cp $PATHMG/../Model/FFllUpTo3j_TauAndMuonDecays_run_card.dat $PATHMG/FFllUpTo3j_TauAndMuonDecays/Cards/run_card.dat
cp $PATHMG/../Model/FFllUpTo3j_TauAndMuonDecays_me5_configuration.txt $PATHMG/FFllUpTo3j_TauAndMuonDecays/Cards/me5_configuration.txt
```
