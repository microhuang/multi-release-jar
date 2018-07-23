# multi-release-jar

This uses maven ant plugin to compile and build the jar file. As such I could not find a direct support using maven alone.

## Please Note:

You will need three JDKs (Java 8 or less, Java 9 and Java 10) in order to execute / build and run this project

## To Build and Execute:
### WINDOWS
```
make_run.bat <JAVA8_HOME> <JAVA9_HOME> <JAVA10_HOME>
```

For example:
```
make_run.bat C:\Tools\Java\jdk1.8.0_152 C:\Tools\Java\jdk-9.0.4 C:\Tools\Java\jdk-10.0.2
```

### LINUX
```
./make_run.sh <JAVA8_HOME> <JAVA9_HOME> <JAVA10_HOME>
```

For example:
```
./make_run.sh /usr/lib/jvm/java-8-oracle /usr/lib/jvm/java-9-oracle /usr/lib/jvm/java-10-oracle
```

* The build will generate a multi-release jar under the target directory
* It will also execute the generated jar using all the three versions of Java and generates a similar output:

```
Executing the Jar through Java 8
Pre-Java 9 Execution
PID: 14070
Provider: RuntimeMXBean

Executing the Jar through Java 9
Java 9 execution
PID: 14090
Provider: ProcessHandle

Executing the Jar through Java 10
Java 10 Execution
PID: 14124
Provider: ProcessHandle
```
