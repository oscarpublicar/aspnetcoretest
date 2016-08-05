FROM microsoft/dotnet:latest

# Copy the app
COPY bin/debug/AspNETCoreTest/publish/ /app/

RUN dotnet restore
RUN dotnet publish
# Configure the listening port to 80
#ENV ASPNETCORE_URLS http://*:80
EXPOSE 5050


# Start the app
ENTRYPOINT dotnet /app/testapp.dll