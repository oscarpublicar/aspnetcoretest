FROM microsoft/dotnet:latest

# Copy the app
COPY . /app

RUN apt-get update -qq
RUN apt-get install -y -qq git curl wget

# install npm
RUN apt-get install -y -qq npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# install bower
RUN npm install --global bower
RUN npm install --global gulp

RUN dotnet restore /app/project.json
RUN dotnet publish /app/project.json -c release -o /root
# Configure the listening port to 80
#ENV ASPNETCORE_URLS http://*:80
EXPOSE 5000
RUN ls /root

# Start the app
ENTRYPOINT dotnet /root/app.dll