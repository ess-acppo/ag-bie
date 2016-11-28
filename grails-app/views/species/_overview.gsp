%{-- Overview tab --}%
<section class="tab-pane fade in active" id="overview">
    <div class="row taxon-row">
        <div class="col-md-6">
            <g:if test="${tc.conservationStatuses}">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Conservation Status</h3>
                    </div>

                    <div class="panel-body">
                        <ul class="conservationList">
                            <g:each in="${tc.conservationStatuses.entrySet().sort { it.key }}" var="cs">
                                <li>
                                    <g:if test="${cs.value.dr}">
                                        <a href="${collectoryUrl}/public/show/${cs.value.dr}"><span
                                                class="iucn <bie:colourForStatus
                                                        status="${cs.value.status}"/>">${cs.key}</span>${cs.value.status}
                                        <!-- cs = ${cs} -->
                                        </a>
                                    </g:if>
                                    <g:else>
                                        <span class="iucn <bie:colourForStatus
                                                status="${cs.value.status}"/>">${cs.key}</span>${cs.value.status}
                                    </g:else>
                                </li>
                            </g:each>
                        </ul>
                    </div>
                </div>
            </g:if>

            <div id="descriptiveContent"></div>

        </div><!-- end col 1 -->

        <div class="col-md-6">
            <div class="panel panel-default panel-resources">
                <div class="panel-heading">
                    <h3 class="panel-title">Online Resources</h3>
                </div>

                <div class="panel-body">
                    <g:render template="onlineResources"/>
                </div>
            </div>

            <div id="listContent">

            </div>
        </div><!-- end col 2 -->
    </div>
</section>

<!-- taxon-summary-thumb template -->
<div id="taxon-summary-thumb-template"
     class="taxon-summary-thumb hide"
     style="">
    <a data-toggle="lightbox"
       data-gallery="taxon-summary-gallery"
       data-parent=".taxon-summary-gallery"
       data-title=""
       data-footer=""
       href="">
    </a>
</div>
