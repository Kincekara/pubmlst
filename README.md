# pubmlst
A simple python wrapper for querying sequences on PubMLST via RESTful API

### Requirements
Python3 on the path and requests module are required to run pubmlst script

```
sudo apt-get install python3-requests
```
or
```
pip install requests
```
### Example usage

```
# list available MLST organisms
pubmlst list

# ST search
pubmlst search --contigs contigs.fasta --organism "Escherichia spp."

# rMLST species identification
pubmlst rmlst --contigs contigs.fasta
```
### Outputs
The script writes a summary file (mlst.out or rmlst.out) and server output as a json file.