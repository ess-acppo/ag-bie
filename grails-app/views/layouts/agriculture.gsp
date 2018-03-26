<!DOCTYPE html>
<html lang="en-AU">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="app.version" content="${g.meta(name:'app.version')}"/>
    <meta name="app.build" content="${g.meta(name:'app.build')}"/>
    <meta name="description" content="${grailsApplication.config.skin.orgNameLong?:''}"/>
    <meta name="author" content="${grailsApplication.config.skin.orgNameLong?:''}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><g:layoutTitle /></title>
    <script type="text/javascript">
	    var BIE_VARS = { "autocompleteUrl" : "${grailsApplication.config.bie.index.url}/auto"}
    </script>
    <asset:javascript src="application.js"/>
    <asset:stylesheet src="application.css"/>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <g:layoutHead />
    <hf:head />
</head>
<body class="${pageProperty(name:'body.class')}" id="${pageProperty(name:'body.id')}" onload="${pageProperty(name:'body.onload')}">

<g:set var="fluidLayout" value="${pageProperty(name:'meta.fluidLayout')?:grailsApplication.config.skin?.fluidLayout}"/>
<!-- Header -->
<header>
    <div id="header-wrapper">
        <div class="container banner clearfix">
            <a class="logo">${grailsApplication.config.skin.orgNameLong?:''}</a>
            <div class="top-links-search-wrapper">
                <ul class="top-links add-last-child-class">
                    <li><a href="http://agriculture.gov.au/">Home</a></li>
                    <li><a href="http://agriculture.gov.au/about/ministers">Ministers</a></li>
                    <li><a href="http://agriculture.gov.au/about/media-centre">Media Centre</a></li>
                    <li><a href="http://agriculture.gov.au/about/jobs">Jobs</a></li>
                    <li><a href="http://agriculture.gov.au/languages">Languages</a></li>
                </ul>
                <!-- .top-links  -->
                <form class="navbar-form" role="search" action="/search" method="get">
                  <input id="nav-search" class="form-control ac_input general-search" name="q" type="text" placeholder="Name..." autocomplete="off">
                </form>
            </div>
        </div>
    </div>
</header>
<!-- End header -->
<!-- Container -->
<div class="${fluidLayout ? 'container-fluid' : 'container'}" id="main">
    <g:layoutBody />
</div><!-- End container #main col -->
<!-- Footer -->
<footer>
    <div class="footer noindex">
        <ul class="footer-links add-last-child-class">
            <li><a href="http://agriculture.gov.au/about/copyright">&copy; Commonwealth of Australia 2016</a></li>
            <li><a href="http://agriculture.gov.au/about/accessibility">Accessibility</a></li>
            <li><a href="http://agriculture.gov.au/about/site_map">Site map</a></li>
            <li><a href="http://agriculture.gov.au/about/privacy">Privacy</a></li>
            <li><a href="http://agriculture.gov.au/about/disclaimer">Disclaimer</a></li>
            <li><a href="http://agriculture.gov.au/about/contactus">Contact us</a></li>
            <li><a href="http://australia.gov.au">australia.gov.au</a>
            </li>
        </ul>
    </div>
</footer>
<asset:deferredScripts/>
</body>
</html>