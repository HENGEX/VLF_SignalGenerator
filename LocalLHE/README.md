<!-- To automatic generation of install.sh: All no code lines must start with #, <par>, * , or contain # -->

# VLF_SignalGenerator

## To produce lhe files

<par> The [instal.sh](./install.sh) script is generated automatically with the following commands in this file </par>

<par> Dowload MadGraph and untar it, then copy the model file (SimplifiedDMSSSFDM) from the Model folder, to the <ib>MG5_aMC_v2_6_1/models/</ib> folder, and run the <em>FFllUpTo3j_TauAndMuonDecays_proc_card.dat </em> </par>

```bash
PATHMG="$(pwd)"
#download MadGraph
wget https://launchpad.net/mg5amcnlo/2.0/2.6.x/+download/MG5_aMC_v2.6.1.tar.gz
# untar
tar -xvf MG5_aMC_v2.6.1.tar.gz
#copy the model
tar -xvf $PATHMG/../Model/SimplifiedDMSSSFDM.tar -C $PATHMG/MG5_aMC_v2_6_1/models/
#run
$PATHMG/MG5_aMC_v2_6_1/bin/mg5_aMC $PATHMG/../Model/FFllUpTo3j_TauAndMuonDecays_proc_card.dat
```
<par> Now go to the "FFllUpTo3j_TauAndMuonDecays" folder </par>
