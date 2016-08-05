FROM microsoft/dotnet:latest

# Copy the app
COPY . /app
# Set the Working Directory
WORKDIR /app

RUN dotnet restore
RUN dotnet publish -c release
# Configure the listening port to 80
#ENV ASPNETCORE_URLS http://*:80
EXPOSE 5000


# Start the app
ENTRYPOINT dotnet /bin/Release/netcoreapp1.0/publish/AspNETCoreTest.dll