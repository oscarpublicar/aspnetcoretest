/usr/local/bin/dotnet restore /tmp/aspnetcore/src/AspNETCoreTest/project.json
/usr/local/bin/dotnet publish /tmp/aspnetcore/src/AspNETCoreTest/project.json -c release -o /release
 
/usr/local/bin/dotnet /release/AspNETCoreTest.dll
