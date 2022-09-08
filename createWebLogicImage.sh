#!/bin/bash
# The weblogic and java packages are downloads you must do yourself (because of rights)


cd OracleWebLogic/dockerfiles/

cd 12.2.1.4
if [ ! -f "fmw_12.2.1.4.0_wls_quick_Disk1_1of1.zip" ] ; then
    echo "File 'fmw_12.2.1.4.0_wls_quick_Disk1_1of1.zip' is needed in the build directory $pwd, you can get the file here: Download the Developer Quick installer from http://www.oracle.com/technetwork/middleware/weblogic/downloads/wls-for-dev-1703574.html"
    exit 1
fi
if [ ! -f "server-jre-8u341-linux-x64.tar.gz" ] ; then
    echo "File 'server-jre-8u341-linux-x64.tar.gz' is needed in the build directory $pwd, you can get the file here: Download from http://www.oracle.com/technetwork/java/javase/downloads/server-jre8-downloads-2133154.html"
    exit 1
fi
cd ..

./buildDockerImage.sh -v 12.2.1.4 -d -s
