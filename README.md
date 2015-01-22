# FlightPilot
Backbone to build a simple Flight App

### Presentation
FlightPilot is just a backbone to build a Flight App. Therefore you'll need to know Flight from [mikecao](https://github.com/mikecao/flight). You can install FlightPilot with composer : *php composer.phar create-project purplebabar/flightpilot path/to/your/project*

### Config
In the *app/config* folder you'll be able to congfigure your app.
The *config.yml* is used to override Flight parameters.
The *smarty/smarty.conf* is used to override Smarty parameters.

### Routing
Every php file in the *src/Routing* folder will be loaded.

### Errors
Errors are displayed in a template that you can modify to suit your needs. If you change the views path, let the *Errors* folder in or recreate one in order to personnalize them.
To personnalize an error, just create a file named *(code).tpl* in the *Views/Errors* folder.

### Template Engine
[Smarty](http://www.smarty.net/) is the template engine.

### Assets
Assets must be placed in the web folder and be called with th following path:
*'http://{$smarty.server.SERVER_NAME}/path/to/your/file.format'*