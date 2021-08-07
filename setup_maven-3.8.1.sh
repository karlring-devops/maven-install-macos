# //***************************************************************//
# MAVEN INSTALL
# //***************************************************************//

MVN_ROOT=/Volumes/uga/utl/devops/maven
MVN_VERSION="3.8.1"

mkdir -p ${MVN_ROOT}
cd ${MVN_ROOT}

wget https://mirror-hk.koddos.net/apache/maven/maven-3/${MVN_VERSION}/binaries/apache-maven-${MVN_VERSION}-bin.zip
unzip -qq apache-maven-${MVN_VERSION}-bin.zip

cd apache-maven-${MVN_VERSION}
MVN_HOME=$(pwd)
echo "export MVN_HOME=${MVN_HOME}" >> ~/.zprofile
echo 'export PATH=${PATH}:${MVN_HOME}:${MVN_HOME}/bin' >> ~/.zprofile 
source ~/.zprofile

mvn --version
