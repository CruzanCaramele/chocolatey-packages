$ErrorActionPreference = 'Stop'

# Do NOT CHANGE THESE MANUALLY. USE update.ps1
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.8.1/monaco-windows-4.0-386.exe'
$url64       = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.8.1/monaco-windows-4.0-amd64.exe'
$checksum    = '815F3572B495FC5BC332B411CEC3F7FF0A1E3733067C2135CDA60A0A7A863894'
$checksum64  = '217BBB1D716AE427F2992B0D2516D71C7AFF6C1E3FB049AE1443D5B8E9754B07'
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