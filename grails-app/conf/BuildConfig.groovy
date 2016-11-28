grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.work.dir = "target/work"
grails.project.target.level = 1.7
grails.project.source.level = 1.7

//grails.plugin.location."bie-plugin" = "../bie-plugin"
//grails.plugin.location."ala-bootstrap3" = "../ala-bootstrap3"

forkConfig = [maxMemory: 1024, minMemory: 64, debug: false, maxPerm: 256]
grails.project.fork = [
        test: forkConfig, // configure settings for the test-app JVM
        run: forkConfig, // configure settings for the run-app JVM
        war: forkConfig, // configure settings for the run-war JVM
        console: forkConfig // configure settings for the Swing console JVM ]
]

grails.project.dependency.resolver = "maven" // or ivy
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve
    legacyResolve false // whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

    repositories {
        mavenLocal()
        mavenRepo ("http://nexus.ala.org.au/content/groups/public/") {
            updatePolicy 'always'
        }
    }

    dependencies {}

    plugins {
        build(":release:3.0.1", ":rest-client-builder:2.0.3") {
            export = false
        }
        // plugins for the build system only
        build ":tomcat:7.0.55"
        compile ':bie-plugin:1.2.4-SNAPSHOT'
        compile ":cache:1.1.8"
        compile ":cache-headers:1.1.6"
        runtime ":resources:1.2.8"
        runtime ":cached-resources:1.0"
        compile ':ala-bootstrap3:1.6.1'
        runtime ":ala-admin-plugin:1.2"
        runtime(":ala-auth:1.3.4") {
            excludes "servlet-api"
        }
    }
}
