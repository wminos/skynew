main: sh -c 'export ASPNETCORE_ENVIRONMENT=Test && cd ./site/skymain/ && exec dotnet ./skymain.dll --urls=http://+:5000 --pathBase=/main/'
sub: sh -c 'export ASPNETCORE_ENVIRONMENT=Test && cd ./site/skysub/ && exec dotnet ./skysub.dll --urls=http://+:5100 --pathBase=/sub/'
