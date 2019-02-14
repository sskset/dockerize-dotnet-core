FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

COPY ./publish .
ENTRYPOINT ["dotnet", "dockerize-dotnet-core.dll"]