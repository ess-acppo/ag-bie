<!DOCTYPE html>
<html lang="en-AU">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="app.version" content="${g.meta(name:'app.version')}"/>
    <meta name="app.build" content="${g.meta(name:'app.build')}"/>
    <meta name="description" content="${grailsApplication.config.skin.orgNameLong?:''}"/>
    <meta name="author" content="${grailsApplication.config.skin.orgNameLong?:''}a">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><g:layoutTitle /> | ${grailsApplication.config.skin.orgNameLong?:''}</title>
    <r:script disposition="head">
	    var BIE_VARS = { "autocompleteUrl" : "${grailsApplication.config.bie.index.url}/auto"}
    </r:script>
    <r:require modules="bie, core, font-awesome, ala_bie"/>
    <r:layoutResources/>
    <g:layoutHead />
    <hf:head />
</head>
<body class="${pageProperty(name:'body.class')}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">

<!-- Header -->
<hf:banner logoutUrl="${g.createLink(controller:"logout", action:"logout", absolute: true)}" />
<!-- End header -->
<g:set var="fluidLayout" value="${pageProperty(name:'meta.fluidLayout')?:grailsApplication.config.skin?.fluidLayout}"/>
<!-- Container -->
<div class="${fluidLayout ? 'container-fluid' : 'container'}" id="main">
    <g:layoutBody />
</div><!-- End container #main col -->

<!-- Footer -->
<hf:footer/>
<!-- End footer -->

<!-- JS resources-->
<r:layoutResources disposition="defer"/>
</body>
</html>