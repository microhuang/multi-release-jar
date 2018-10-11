//jdk9多模块依然以多jar形式存在，对maven项目并不适用

 module com.example {
    exports com.example to mymodule1;//导出特性不影响作为java main运行： java --module-path ./target/multi-release-jar-demo.jar -m com.example/com.example.Main
    requires java.management;
}