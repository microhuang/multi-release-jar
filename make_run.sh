#!/bin/bash

echo "*****************************************************************************"
echo
echo "USAGE:"
echo "./make_run.sh <JAVA8_HOME> <JAVA9_HOME> <JAVA10_HOME>"
echo
echo "*****************************************************************************"

JAVA8_HOME=$1
JAVA9_HOME=$2
JAVA10_HOME=$3


if [ -z "$JAVA10_HOME" ]
then
	echo "JAVA10_HOME is not set. Terminating run."
	exit -1
else
	echo "Java 10 home is set to $JAVA10_HOME"
fi

if [ -z "$JAVA9_HOME" ]
then
	echo "JAVA9_HOME is not set. Terminating run."
	exit -1
else
	echo "Java 9 home is set to $JAVA9_HOME"
fi

if [ -z "$JAVA8_HOME" ]
then
	echo "JAVA8_HOME is not set. Terminating run."
	exit -1
else
	echo "Java 8 home is set to $JAVA8_HOME"
fi

mvn -version

if [ $? -ne 0 ]
then
	echo "maven is not available or set."
	exit -1
fi

echo "Starting maven clean package"
echo ""

mvn clean package -Djava9.home=$JAVA9_HOME -Djava10.home=$JAVA10_HOME

echo "Executing Successfully completed building a multi release jar. Please check target directory"
echo ""


# Executing the Jar through Java 8
echo "Executing the Jar through Java 8"
$JAVA8_HOME/bin/java -jar target/multi-release-jar-demo.jar
echo ""


# Executing the Jar through Java 9
echo Executing the Jar through Java 9
$JAVA9_HOME/bin/java -jar target/multi-release-jar-demo.jar
echo ""

# Executing the Jar through Java 10
echo Executing the Jar through Java 10
$JAVA10_HOME/bin/java -jar target/multi-release-jar-demo.jar
echo ""
