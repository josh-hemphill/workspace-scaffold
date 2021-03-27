param(
	[string]$a
)
Get-Content -Raw -Path .\programs.json | ConvertFrom-Json | 
ForEach-Object {
	if ($_.choco -is [String]) {
		choco install "$_"

	}
}

$GitPath = 'C:\Program Files\Git\usr\bin'
$ChocoPath = 'C:\ProgramData\chocolatey\bin'

function installMyDeps ($correctPath) {
	Write-Debug $correctPath
}
$isGit = Test-Path -Path $GitPath
$isChoco = Test-Path -Path $ChocoPath
Write-Debug $isGit
Write-Debug $isChoco
if ($isGit) {
	installMyDeps($GitPath)
}
elseif ($isChoco) {
	installMyDeps($ChocoPath)
}
