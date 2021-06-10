This repository uses a terraform variable and output which are
identical, and a jq statement to modify the input on each run.

See run.sh

Is this totally cursed ...?


[nix-shell:~/projects/github.com/grahamc/test]$ ./run.sh 
++ jq -rc '. + [now] | .[-2:]'
++ terraform output --json mylist
+ mylist='["1623283861.055349",1623283918.543126]'
+ terraform apply -var 'mylist=["1623283861.055349",1623283918.543126]'
local_file.bogus: Refreshing state... [id=40ce4379f5763c05b71c88f9a371809fdbce6a21]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

mylist = [
  "1623283861.055349",
  "1623283918.543126",
]

[nix-shell:~/projects/github.com/grahamc/test]$ ./run.sh 
++ terraform output --json mylist
++ jq -rc '. + [now] | .[-2:]'
+ mylist='["1623283918.543126",1623283925.16539]'
+ terraform apply -var 'mylist=["1623283918.543126",1623283925.16539]'
local_file.bogus: Refreshing state... [id=40ce4379f5763c05b71c88f9a371809fdbce6a21]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

mylist = [
  "1623283918.543126",
  "1623283925.16539",
]

[nix-shell:~/projects/github.com/grahamc/test]$ ./run.sh 
++ terraform output --json mylist
++ jq -rc '. + [now] | .[-2:]'
+ mylist='["1623283925.16539",1623283932.550893]'
+ terraform apply -var 'mylist=["1623283925.16539",1623283932.550893]'
local_file.bogus: Refreshing state... [id=40ce4379f5763c05b71c88f9a371809fdbce6a21]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

mylist = [
  "1623283925.16539",
  "1623283932.550893",
]


