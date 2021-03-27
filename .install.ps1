## Install Git
invoke-expression -Command $PSScriptRoot\.installTmp\winInstallGit.ps1
## Install VsCode
$Extensions = @(
	'christian-kohler.path-intellisense',
	'CoenraadS.bracket-pair-colorizer',
	'DavidAnson.vscode-markdownlint',
	'dbaeumer.vscode-eslint',
	'donjayamanne.githistory',
	'DotJoshJohnson.xml',
	'eamodio.gitlens',
	'EditorConfig.EditorConfig',
	'eg2.vscode-npm-script',
	'Equinusocio.vsc-community-material-theme',
	'Equinusocio.vsc-material-theme',
	'equinusocio.vsc-material-theme-icons',
	'esbenp.prettier-vscode',
	'formulahendry.code-runner',
	'ms-mssql.mssql',
	'ms-vscode-remote.remote-ssh',
	'ms-vscode-remote.remote-ssh-edit',
	'ms-vscode-remote.remote-wsl',
	'ms-vscode.powershell',
	'msjsdiag.debugger-for-chrome',
	'octref.vetur',
	'PKief.material-icon-theme',
	'ritwickdey.live-sass',
	'ritwickdey.LiveServer',
	'VisualStudioExptTeam.vscodeintellicode'
)
invoke-expression -Command $PSScriptRoot\.installTmp\installVsCode.ps1 -AdditionalExtensions $Extensions
Copy-Item $PSScriptRoot\.installTmp\.vscode\settings.json -Force -Destination $env:userprofile\AppData\Roaming\Code\User
