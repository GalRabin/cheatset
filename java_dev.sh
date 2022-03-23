#############
### Maven ###
#############

# Maven repository - Include archetype (Creating directory structure - pom.xml, src, test etc..) and dependencies

# Install maven
brew install maven

# Create new project:
mvn archetype:generate
# Project template
## pom.xml
#### Mavan co-ordinates (group,artifact,..)
##### archetype - template name
##### group id
##### artifact id - Name of the artifact (jar in our case)
##### Version - 1.0-SNAPSHOT by default
##### package - Sometime the same as group id
#### Metadata
#### Build info 
#### Deps 
## src
## test

# Build lifecycle (Consist of phases, Default behavior for phases, Specify the build phase all precious will also run)
## validate phase - check everything inorder
mvn validate

## compile phase
mvn compile

## test phase
mvn test

## package phase - generate jar, stored in target folder
mvn package
### Run java compiled code
java -cp target/qwak-1.0-SNAPSHOT.jar gal.rabin.App

## install phase - Install local repository (~/.m2/repository/)
mvn install

## deploy phase - deploy package into remote repository
mvn deploy

# External phases
## clean lifecycle
mvn clean

# Plugins
## springboot
mvn springboot:buildimage
mvn springboot:run

# protobuff
mvn protobuf:compile
