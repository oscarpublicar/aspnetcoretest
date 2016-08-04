FROM microsoft/dotnet

# Copy the app
COPY . /app
# Set the Working Directory
WORKDIR /app

RUN dotnet restore

# Configure the listening port to 80
#ENV ASPNETCORE_URLS http://*:80
EXPOSE 5050


# Start the app
CMD ["dotnet", "AspNETCoreTest.dll"]