<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <title>Biodiversity Information Explorer</title>
</head>
<body class="page-search">

<section class="container">

    <header class="pg-header">
        <h1>Search the Atlas of Living Australia</h1>
    </header>

    <div class="section">
        <div class="row">
            <div class="col-lg-8">
                <form id="search-inpage" action="search" method="get" name="search-form">
                    <div class="input-group">
                        <input id="search" class="form-control ac_input general-search" name="q" type="text" placeholder="Search the Atlas" autocomplete="off">
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