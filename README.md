# GradleSample
简单的Gradle脚本包含所有常用Lib库，用于本地Nexus仓库的更新！
```
JBoss https://repository.jboss.org/nexus/content/repositories/public/
Mule  http://repository.mulesoft.org/releases/
Neo4j http://m2.neo4j.org/content/repositories/releases/
Restlet http://maven.restlet.org/
Typesafe http://repo.typesafe.com/typesafe/ivy-releases/
Concord  http://source.concord.org/nexus/content/groups/public/
XQJ http://xqj.net/maven/
OsChina  http://maven.oschina.net/content/groups/public/
```
# Gradle设置init.gradle配置文件
~/.gradle/init.gradle
```
allprojects{
    repositories {
        def REPOSITORY_URL = 'http://localhost:8081/nexus/content/groups/public'
        all { ArtifactRepository repo ->
            if(repo instanceof MavenArtifactRepository){
                def url = repo.url.toString()
                if (url.startsWith('https://repo1.maven.org/maven2') 
                    || url.startsWith('https://jcenter.bintray.com/')) {
                    project.logger.lifecycle "Repository ${repo.url} replaced by $REPOSITORY_URL."
                    remove repo
                }
            }
        }
        maven {
            url REPOSITORY_URL
        }
    }
}
```
# Test Commit
This is a line
