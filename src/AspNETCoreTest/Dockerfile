FROM microsoft/dotnet:latest

# Copy the app
COPY . /app
# Set the Working Directory
WORKDIR /app

RUN apt-get update -qq
RUN apt-get install -y -qq git curl wget

# install npm
RUN apt-get install -y -qq npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# install bower
RUN npm install --global bower
RUN npm install --global gulp

RUN dotnet restore
RUN dotnet publish -c release
# Configure the listening port to 80
#ENV ASPNETCORE_URLS http://*:80
EXPOSE 5000


# Start the app
ENTRYPOINT dotnet /bin/Release/netcoreapp1.0/publish/AspNETCoreTest.dll