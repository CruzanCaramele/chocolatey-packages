$ErrorActionPreference = 'Stop'

# Do NOT CHANGE THESE MANUALLY. USE update.ps1
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.6.0/monaco-windows-4.0-386.exe'
$url64       = 'https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/v1.6.0/monaco-windows-4.0-amd64.exe'
$checksum    = '836C3F7364CB8B07DD9FBA8643E2538DB1450F89A540B8B6341412378E6EAF93'
$checksum64  = '668D5EE7EA24C7B26F00190F70154179D172AB2CA512B4906004AAB71B8D241E'
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

Remove-Item $toolsDir\*.exe -Exclude "monaco.exe" | Out-Null #del old vers
Remove-Item $ENV:ChocolateyInstall\bin\monaco*.exe  | Out-Null #del old vers' shims