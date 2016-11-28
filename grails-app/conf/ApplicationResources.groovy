modules = {
    agriculture_bie {
        dependsOn 'bie'
        resource url: [dir: 'css', file: 'agriculture-bie.css'], attrs: [media: 'screen, print']
    }
}