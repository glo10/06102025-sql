# PI.ps1
# Connect to container via bash ou sh
Param(
  [Parameter(Mandatory, HelpMessage="./cmd/it.ps1 -Name NameOrIDOfContainerHere")]  
  $Name
)

If (-Not $Name){
  Write-Error "Required id or name of container, for instance ./cmd/it.ps1 -Name 1d55e744d2"
} Else {
  docker exec -it $Name /bin/bash
}