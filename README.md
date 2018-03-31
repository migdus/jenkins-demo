# jenkins-demo
A repo for messing around with a local jenkins running in docker

## Steps

1) Init Jenkins with docker and follow the steps to get a working instance using the default plugins ([details](https://github.com/jenkinsci/docker/blob/master/README.md)):
````
make init
````
This step has to be run only once. Nex time you can use ````make start```` to start the instance, ````make stop```` to stop it or ````make clean```` to delete everything and get your disk space back.

2) Create a new Freestyle item.

3) Skeleton java project:
````
mvn archetype:generate -DgroupId=com.migueldussan -DartifactId=jenkins-demo -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
````
