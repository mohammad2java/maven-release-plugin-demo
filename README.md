##MAVEN RELEASE PLUGIN
------------------------------

##there are 2 commond
---------------------	
	mvn -B clean release:prepare
	mvn clean release:perform
	

##Required configuration for same with github

	[package will be release on github]
    ------------------------------------
    1) required project.scm.id properties for communication with git repository for versioning and tagging
    
    example: here makesure github-mohammad2java id is configure in settings.xml server with full roles of repo and publish package.
    <properties>
		<project.scm.id>github-mohammad2java</project.scm.id>
	</properties>
	 
	 
	 1) scm configuration for meta-data
	 
	 <scm>
		<developerConnection>
			scm:git:https://github.com/mohammad2java/maven-release-plugin-demo.git</developerConnection>
		<url>https://github.com/mohammad2java/maven-release-plugin-demo</url>
		<tag>maven-release-plugin-demo-1.0.1</tag>
	</scm>
	
	 2) distributionManagement configuration for uploading artifacts/package
	 
	 <distributionManagement>

		<repository>
			<id>github-mohammad2java</id>
			<name>GitHub Packages</name>
			<url>
				https://maven.pkg.github.com/mohammad2java/maven-release-plugin-demo</url>
		</repository>
	</distributionManagement>
	
	3) for maven-release-plugin configuration to tell about autoversioning tagging name ..etc
	
	<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-release-plugin</artifactId>
				<version>3.0.0-M1</version>
				<configuration>
					<autoVersionSubmodules>true</autoVersionSubmodules> 
					<goals>deploy</goals> 
					<tagNameFormat>v@{project.version}</tagNameFormat>
				</configuration>
			</plugin>
			
			
	 
	 
