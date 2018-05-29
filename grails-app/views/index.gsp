<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <title>Taxonomic Reference Service</title>
</head>
<body class="page-search">

<section class="container">

    <header class="pg-header">
        <h1>Search the Taxonomic Reference Service</h1>
    </header>

    <div class="section">
             <div class="row">
                <div class="col-lg-8">
                    <form id="search-inpage" action="search" method="get" name="search-form">
                        <div class="input-group">
                            <input id="search" class="form-control ac_input general-search" name="q" type="text" placeholder="Name..." autocomplete="off" autofocus>
                            <span class="input-group-btn">
                                <input type="submit" class="btn btn-primary" alt="Search" value="Search">
                            </span>
                        </div>
                    </form>
                </div>
            </div>
    </div>
</section><!--end .inner-->
</body>
</html>
