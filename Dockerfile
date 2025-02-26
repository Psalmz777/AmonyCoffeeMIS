FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

# copy `csproj` and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# copy everything else
COPY . ./

# build and publish a release
RUN dotnet publish -c Release -o out

# build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/Data.db .
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "AmonyCoffeeMIS.dll"]