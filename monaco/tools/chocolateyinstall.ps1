$ErrorActionPreference = 'Stop'

# Do NOT CHANGE THESE MANUALLY. USE update.ps1
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.7.0/monaco-windows-4.0-386.exe'
$url64       = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.7.0/monaco-windows-4.0-amd64.exe'
$checksum    = 'fe23ddf84497d7c6dc3746d5d103840db4bddada3a85937a2cdba8edf97e7ee4'
$checksum64  = 'a1e30f046d0b04dee85334c01475f898f36f83faf7bf481f1718f2f98be023e4'
$PackageName = 'monaco.exe'

$packageArgs = @{
  packageName   = $PackageName
  fileType      = 'EXE'
  url           = $url
  FileFullPath  = "$toolsDir\$PackageName"
  url64bit      = $url64
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  softwareName  = ''
}

Get-ChocolateyWebFile @packageArgs