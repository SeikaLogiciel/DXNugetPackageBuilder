set DXVersion=17.1
set SymbolsFolder=c:\temp\symbols
set TargetNugetFolder=C:\temp\Nuget
set Localization=fr
set NugetServer=
REM set NugetServer=-NugetSource http://yourNugetServer/
set NugetApiKey=
REM set NugetApiKey=-NugetApiKey Your-Api-Key-Goes-Here
set NugetPush=
REM set NugetPush=-NugetPush


Powershell.exe -executionpolicy remotesigned -File  build.ps1

set Builder=src\DXNugetPackageBuilder\bin\Debug\DXNugetPackageBuilder.exe

%Builder% "C:\Program Files (x86)\DevExpress %DXVersion%\DevExpressCodedUIExtensions\Tools" %SymbolsFolder% %TargetNugetFolder% %Localization% %NugetServer% %NugetApiKey% %NugetPush%

%Builder% "C:\Program Files (x86)\DevExpress %DXVersion%\Components\Tools\eXpressAppFramework\Model Editor" %SymbolsFolder% %TargetNugetFolder% %Localization% %NugetServer% %NugetApiKey% %NugetPush%

%Builder% "C:\Program Files (x86)\DevExpress %DXVersion%\Components\Bin\Framework" %SymbolsFolder% %TargetNugetFolder% %Localization% %NugetServer% %NugetApiKey% %NugetPush%