<!DOCTYPE html>
<html lang="en">
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:javascript library="jquery" />   
        <g:layoutHead />
        <r:layoutResources/>
        <link rel="stylesheet" type="text/css" media="screen, projection" href="${resource(dir:'css',file:'custom.css')} " />
    </head>
    <body>
        <br/>
        <g:render template="/common/menu" />
        <g:layoutBody />
        <div id="footer">
            <g:render template="/common/footer" />
        </div>
        <r:layoutResources/>
    </body>	
</html>