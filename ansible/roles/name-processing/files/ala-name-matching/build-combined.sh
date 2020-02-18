#!/bin/sh
dir=`dirname $0`
cd "$dir"
classpath=`echo *.jar lib/*.jar | sed -e 's/ /:/'`
exec java -Dlog4j.configuration=file:log4j.xml -Dfile.encoding=UTF8 -Xmx4096M -classpath "$classpath" au.org.ala.names.index.TaxonomyBuilder $*
