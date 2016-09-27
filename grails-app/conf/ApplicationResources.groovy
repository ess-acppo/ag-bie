modules = {
    ala_bie {
        dependsOn 'bie, ala'
        resource url: [dir: 'css', file: 'ala-bie.css'], attrs: [media: 'screen, print']
    }
}