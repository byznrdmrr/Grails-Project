<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>BD</title>
    <style>
        .islemler{
            list-style:none;
        }
        .controller a{
            text-decoration: none;
            color: white;

        }
        .controller{
            background:hotpink ;
            margin-bottom:20px ;
            color: deeppink;
            height: 50px;
            padding-top: 12px;
            padding-left: 12px;
            padding-right: 12px;
            margin-left: 80px;
            float: left;
            text-align: center;
            border-radius: 0.25rem;
        }

    </style>
</head>
<body>
<content tag="nav">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
            <li class="dropdown-item"><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
            <li class="dropdown-item"><a href="#">App version:
                <g:meta name="info.app.version"/></a>
            </li>
            <li role="separator" class="dropdown-divider"></li>
            <li class="dropdown-item"><a href="#">Grails version:
                <g:meta name="info.app.grailsVersion"/></a>
            </li>
            <li class="dropdown-item"><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
            <li class="dropdown-item"><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
            <li role="separator" class="dropdown-divider"></li>
            <li class="dropdown-item"><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
            <li class="dropdown-item"><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                <li class="dropdown-item"><a href="#">${plugin.name} - ${plugin.version}</a></li>
            </g:each>
        </ul>
    </li>
</content>

<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="welcome.jpg " class="grails-logo"/>
    </div>
</div>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>       </h1>
        <p>
        </p>

        <div id="controllers" role="navigation">
            <h2>Mevcut ????lemler:</h2>

            <ul class="islemler">
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller">
                        <g:link controller="${c.logicalPropertyName}">${message(code: c.fullName, default: 'Controller')}</g:link>
                    </li>
                </g:each>
            </ul>
        </div>
    </section>
</div>

</body>
</html>
