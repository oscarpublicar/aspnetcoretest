dotnet restore /application/project.json
dotnet publish /application/project.json -c release -o /release

dotnet /release/app.dll
