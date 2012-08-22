<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
         <link rel="stylesheet" href="${resource(dir:'css',file:'custom.css')}" />
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:javascript library="jquery" />				
        <g:layoutHead />
        <r:layoutResources/>
    </head>
    <body onload="${pageProperty(name:'body.onload')}">
        <div id="hdrmenu">
            <g:render template="/common/menu" />
        </div>	
        <g:layoutBody />
        <div id="footer">
            <g:render template="/common/footer" />
        </div>
        <r:layoutResources/>
    </body>	
</html>