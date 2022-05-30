# DWCJ

This Plug-In installs the DWCJ libraries in your BBj environment. Its configuration screen lets 
you then add .jar files (or point to subfolders with binary .class files if you're still developing) that contain 
implementations of the [org.dwcj.App](https://dwcjava.github.io/engine/org/dwcj/App.html) abstract class.  

## Installation

Install the Plug-in with the plugin manager. Then run the "configure.bbj" program by pushing the "configure" button in PluginManager.
(You find the configure.bbj in the plugins/DWCJ/cfg/ subdirectory if you need it outside the plugin manager.)

![image](https://user-images.githubusercontent.com/4833070/170939240-d225b18a-54c6-4312-9802-ce920ff4a02b.png)

### Create a Deployment Configuration

The following steps create a frest deployment configuration.

1. Hit the "plus" button under the configuration list on the left. Then enter a name for the configuration in the 
null1. "Name" field on the right. 
2. Hit the "Save" button and the configuration will be created. The files in the plug-in's "lib" folder will be added to 
null2. the configuration.

Now you will have a deployment conguration which consists of a Classpath that has the name of your configuration. A DWC 
app will be deployed in BBj under the same name.

By default you will reach the deployed app under http://localhost:8888/webapp/<myappname>

You will see a screen like this:

![image](https://user-images.githubusercontent.com/4833070/170939324-8724e98e-21dc-4d0b-b17d-4d96fa470d57.png)
  
### Add your own App implementation

3. Now you can add a jar or class folder to the classpath list on the right. If the .jar contains one or more
null3. classes that extend org.dwcj.App, the welcome screen will list these implementations.
4. In order to immediately start an App implementation, enter the class name (fully qualified, with package) in 
null4. the "Classname" field.



