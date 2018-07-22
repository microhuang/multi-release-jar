ECHO OFF

ECHO[
ECHO *********************************************
ECHO[
ECHO USAGE:
ECHO run ^<JAVA8_HOME^> ^<JAVA9_HOME^> ^<JAVA10_HOME^>
ECHO[
ECHO *********************************************
ECHO[

SET JAVA8_HOME=%1
SET JAVA9_HOME=%2
SET JAVA10_HOME=%3

IF "%JAVA10_HOME%"=="" (
	echo JAVA10_HOME is not set. Terminating run.
	PAUSE
	EXIT /b
) 

IF "%JAVA9_HOME%"=="" (
	echo JAVA9_HOME is not set. Terminating run.
	PAUSE
	EXIT /b
) 

IF "%JAVA8_HOME%"=="" (
	echo JAVA8_HOME is not set. Terminating run.
	PAUSE
	EXIT /b
) 

call mvn clean package -Djava9.home=%JAVA9_HOME% -Djava10.home=%JAVA10_HOME%


IF NOT %ERRORLEVEL% == 0 (
	echo Error executing - "mvn clean package"
	PAUSE
	EXIT /b
)

ECHO[
ECHO Executing Successfully completed building a multi release jar. Please check target directory
ECHO[

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