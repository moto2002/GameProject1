md bin
cd bin
dotnet publish .\..\Regulus.Project.GameProject1.Play\ -o ./
dotnet publish .\..\Regulus.Project.GameProject1.Protocol\ -o ./

copy .\..\Assets\server\*.* 
## dotnet tool install --tool-path .\tool Regulus.Application.Server 
dotnet .\Regulus.Application.Server.dll launchprotocol 47536 Regulus.Project.GameProject1.Protocol.dll Regulus.Project.GameProject1.Play.dll Regulus.Project.GameProject1.Play.Server
## dotnet tool uninstall --tool-path .\tool Regulus.Application.Server 
cd ..
## rd bin -Recurse
pause
