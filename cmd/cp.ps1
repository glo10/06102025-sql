# PI.ps1
# Copy files from source directory to destination directory
# For instance ./cmd/cp.ps1 ./databases g10-sqlserver:/data
# - copy databases from source to container g10-sqlserver
Param(
  [Parameter(HelpMessage="./cmd/cp.ps1 -Src path/from/ -Dest /path/to")]  
  $Src,
  [Parameter(HelpMessage="./cmd/cp.ps1 -Src path/from/ -Dest /path/to")]  
  $Dest
)

If (-Not $Src){
  Write-Error "Must have a source directory"
} ElseIf (-Not $Dest){
  Write-Error "Must have a destination directory"
}
Else {
  docker cp $Src $Dest
}