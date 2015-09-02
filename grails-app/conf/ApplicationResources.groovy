modules = {
    ala_bie {
        dependsOn 'bie'
        resource url: [dir: 'css', file: 'ala-bie.css'], attrs: [media: 'screen, projection, print']
    }
}