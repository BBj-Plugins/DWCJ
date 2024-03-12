# DWCJ

This Plug-In installs the DWCJ libraries in your BBj environment. Its configuration screen lets 
you then add .jar files (or point to subfolders with binary .class files if you're still developing) that contain 
implementations of the [org.dwcj.App](https://dwcjava.github.io/engine/org/dwcj/App.html) abstract class.  

## cli interface

The DWCJ plugin installs a command line interface that allows you to prepare the application server for DWCJ and to install DWCJ applications.

The following commands are currently recognized:

### Configure the Classpath for the DWCJ cli and the remote installer servlet

This step is automatically executed as part of the other commands, if the classpath does not exist.
You can execute this statement to refresh the classpath, which will be named ```_dwcj_cli```
```
<bbx_bin>bbj -tIO DWCJ/cli.bbj - configure_classpath   
```

### Install DWCJ App

With this command you can install a DWCJ app that has been built and packaged to a JAR. The install process will inspect the pom.xml inside the JAR and

The default directory for the deployed apps is <bbx>/plugins/DWCJ/deployments/.
```
<bbx_bin>bbj -tIO DWCJ/cli.bbj - install HelloWorldJava/target/HelloWorldJava.jar   
```

This line installs the JAR file that is found in the relative subdirectory where the [HelloWorldJava](https://github.com/DwcJava/HelloWorldJava) project has been built and packaged.

### Enable Remote Installation over HTTP(S)

With this command you can create a servlet entry that allows remote installation over HTTP(S), using the [dwcj-install-maven-plugin](https://github.com/DwcJava/dwcj-install-maven-plugin).
It will create an endpoint in the root context that is typically accessible under ```http://localhost:8888/webforj-install```
```
<bbx_bin>bbj -tIO DWCJ/cli.bbj - enable_remote_install   
```


