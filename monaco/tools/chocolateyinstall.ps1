$ErrorActionPreference = 'Stop'

# Do NOT CHANGE THESE MANUALLY. USE update.ps1
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.8.0/monaco-windows-4.0-386.exe'
$url64       = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.8.0/monaco-windows-4.0-amd64.exe'
$checksum    = '0858B7E1BC50623D8743A320F5C6F155B6E00BC43EB8A0C3E46327F82CA09D80'
$checksum64  = '1438AEA7B2CC1F25FEFB776850278A09CE115A63B0910356F5CE3DE896A3AC64'
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