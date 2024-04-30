maven镜像地址
```xml
    <mirror>
       <id>huaweicloud</id>                                                                                                                                       
       <mirrorOf>*</mirrorOf>
       <url>https://mirrors.huaweicloud.com/repository/maven/</url>
     </mirror>
```

初始化maven项目
mvn archetype:generate -DgroupId=xyz.maojun -DartifactId=cloud_disk -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeCatalog=local -DinteractiveMode=false`
