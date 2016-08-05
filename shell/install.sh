dotnet restore /application/src/AspNETCoreTest/project.json
dotnet publish /application/src/AspNETCoreTest/project.json -c release -o /release

dotnet /release/app.dll
