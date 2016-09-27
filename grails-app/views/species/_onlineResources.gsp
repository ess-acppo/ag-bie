<ul>
    <li><a href="http://biocache.ala.org.au/occurrences/search?taxa=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">ALA occurrences</a></li>
    <li><a href="http://www.gbif.org/species/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">GBIF</a></li>
    <li><a href="http://eol.org/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}&show_all=true">Encyclopaedia of Life</a></li>
    <li><a href="http://www.biodiversitylibrary.org/search?searchTerm=${tc?.taxonConcept?.nameString?.replace(" ","%20")}#/names">Biodiversity Heritage Library</a></li>
    %{--<li><a href="http://www.arkive.org/explore/species?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">ARKive</a></li>--}%
    %{--<li><a href="http://www.inaturalist.org/taxa/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">iNaturalist</a></li>--}%
    <li><a href="http://www.google.com.au/search?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">Google search</a></li>
    <li><a href="http://scholar.google.com.au/scholar?q=${tc?.taxonConcept?.nameString?.replace(" ","%20")}">Google scholar</a></li>
</ul>