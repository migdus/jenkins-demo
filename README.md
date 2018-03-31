# jenkins-demo
A repo for messing around with a local jenkins running in docker

## Steps

1) Run Jenkins with docker and follow the steps to get a working instance using the default plugins ([details](https://github.com/jenkinsci/docker/blob/master/README.md)):
````
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
````

2) Create a new Freestyle item.

3) Skeleton java project:
````
mvn archetype:generate -DgroupId=com.migueldussan -DartifactId=jenkins-demo -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
````
