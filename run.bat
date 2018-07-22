ECHO OFF

SET JAVA8_HOME=C:\Tools\Java\jdk1.8.0_152
SET JAVA9_HOME=C:\Tools\Java\jdk-9.0.4
SET JAVA10_HOME=C:\Tools\Java\jdk-10.0.2

IF "%JAVA10_HOME%"=="" (
	echo JAVA10_HOME is not set. Terminating run.
	EXIT 0
) 

IF "%JAVA9_HOME%"=="" (
	echo JAVA9_HOME is not set. Terminating run.
	EXIT 0
) 

IF "%JAVA8_HOME%"=="" (
	echo JAVA8_HOME is not set. Terminating run.
	EXIT 0
) 

REM Executing the Jar through Java 8
ECHO Executing the Jar through Java 8
%JAVA8_HOME%\bin\java -jar target/multi-release-jar-demo.jar
ECHO[

REM Executing the Jar through Java 9
ECHO Executing the Jar through Java 9
%JAVA9_HOME%\bin\java -jar target/multi-release-jar-demo.jar
ECHO[

REM Executing the Jar through Java 10
ECHO Executing the Jar through Java 10
%JAVA10_HOME%\bin\java -jar target/multi-release-jar-demo.jar