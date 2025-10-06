# PI.ps1
# Stop one or all container(s)
Param(
  [Parameter(HelpMessage="To stop one container : ./cmd/stop.ps1 -Name NameOrIDOfContainerHere, to stop all of them ./cmd/stop.ps1")]  
  $Name
)

If (-Not $Name){
  docker compose -f ./compose.dev.yaml stop
} Else {
  docker container stop $Name
}