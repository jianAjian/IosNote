---
layout: post
title:  Bintray... The Github of Binaries
categories: Tools
tags: Tools SaaS CI
---

Yes, now you have plenty of places to keep your code... you can use [Github] or you can  go for
[Bitbucket] if you want to maintain your code private.

Anyway, what happens if you want to actually share binaries for others to use your libraries
and/or applications?

[Maven Central] is there from long time ago, but... to be honest, deploying something there is
like breaking in the Pentagon systems!

Sometime ago I discovered [Bintray], and it seemed a good place to store binary repositories 
with a social touch (someone said [Github]?)

The place seems to by sponsorized by [JFrog] makers of [Artifactory] and... guess what, direct
competitors of [Sonatype] (Maven's better contributors) that develops the [Nexus] repository 
manager over which [Maven Central] runs.

So I decided to test it myself with two projects of my own. One is [Sabina] written in Java and
built with [Gradle] and other ([popapp.co]) coded in Java and built by [Maven].

The free version has a limit of **500MB**, not enough to deploy the smallest project of my 
previous company, but plenty to support Open Source projects though.

Bintray integrates with [Maven Central] and [JCenter] which claims to be more complete than
Maven's main repository.

To integrate it with your build process you need to add the following lines to your build
script (be aware that **you won't be able to deploy snapshots!**):

* For [Gradle]:

  * *build.gradle*
{% highlight groovy %}

    apply plugin: 'maven-publish'
    
    // ...
    
    configurations {
        deployerJars
    }
    
    // ...
    
    task sourceJar(type: Jar) {
        from sourceSets.main.allJava
    }

    publishing {
        publications {
            mavenJava (MavenPublication) {
                from components.java

                artifact sourceJar {
                    classifier "sources"
                }
            }
        }
        repositories {
            maven {
                url 'https://api.bintray.com/maven/jamming/maven/Sabina'
                credentials {
                    username 'jamming'
                    password externalProperty ('.gradle/gradle.properties', 'bintrayPassword')
                }
            }
        }
    }

    // ...

def String externalProperty (String fileName, String propertyName) {
    Properties properties = new Properties ()
    properties.load (project.rootProject.file (fileName).newDataInputStream ())
    return properties.getProperty (propertyName)
}
{% endhighlight %}

  * *.gradle/gradle.properties* (this file is created to avoid publishing your API key)
{% highlight properties %}
bintrayPassword={your Bintray api key}
{% endhighlight %}

And execute: `gradle publish`

* For [Maven]:

  * *pom.xml*
{% highlight xml %}
<distributionManagement>
  <repository>
    <id>{bintray repository}</id>
    <name>a meaningful name</name>
    <url>https://api.bintray.com/maven/{bintray user}/{project}</url>
  </repository>
</distributionManagement>
{% endhighlight %}

  * *settings.xml*
{% highlight xml %}
<server>
  <id>{bintray repository}</id>
  <username>{bintray user}</username>
  <password>{your Bintray api key}</password>
</server>
{% endhighlight %}

And run: `mvn source:jar deploy`

To include your binaries in Maven you've got to request that from their site (using the Web
UI).

To me, this is a very good platform to support your Open Source projects, just like [Github],
[Travis CI], [Coveralls] and all the like. Anyway, prior to deploying to [JCenter] you
have to deploy the source of your project along with your binaries. To do so:

* For [Gradle]:
{% highlight groovy %}
    // ...
    
    task sourceJar(type: Jar) {
        from sourceSets.main.allJava
    }
    
    // ...
{% endhighlight %}

* For [Maven]:
{% highlight xml %}
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>2.2.1</version>
  <executions>
    <execution>
      <id>attach-sources</id>
      <phase>deploy</phase>
      <goals>
        <goal>jar</goal>
      </goals>
    </execution>
  </executions>
</plugin>
{% endhighlight %}

I hope you enjoyed and... you know, don't make your users compile your code and deploy your 
binaries!


[Github]: https://github.com
[Bitbucket]: https://bitbucket.org
[Maven Central]: http://search.maven.org
[Bintray]: https://bintray.com
[JFrog]: http://www.jfrog.com
[Artifactory]: http://www.jfrog.com/artifactory
[Sonatype]: http://www.sonatype.com
[Nexus]: http://www.sonatype.com/nexus
[Sabina]: http://there4.co/sabina
[Gradle]: https://gradle.org
[popapp.co]: http://popapp.co
[Maven]: https://maven.apache.org
[Travis CI]: https://travis-ci.org
[Coveralls]: https://coveralls.io
[JCenter]: https://bintray.com/bintray/jcenter

