module.exports = ->

  @initConfig

    pkg: @file.readJSON 'package.json'

    concat:
      build:
        files: 'lib/masonry.js': [
          'components/classie/classie.js'
          'components/eventEmitter/EventEmitter.js'
          'components/eventEmitter/EventEmitter.min.js'
          'components/eventie/eventie.js'
          'components/doc-ready/doc-ready.js'
          'components/get-style-property/get-style-property.js'
          'components/get-size/get-size.js'
          'components/jquery-bridget/jquery.bridget.js'
          'components/matches-selector/matches-selector.js'
          'components/outlayer/item.js'
          'components/outlayer/outlayer.js'
          'masonry.js'
        ]

    uglify:
      options: mangle: yes
      vendor: 
        files: 'lib/masonry.min.js': 'lib/masonry.js'


  @loadNpmTasks 'grunt-contrib-uglify'
  @loadNpmTasks 'grunt-contrib-concat'

  @registerTask 'default', [
    'concat'
    'uglify'
  ]