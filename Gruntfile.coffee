# This is the main application configuration file.  It is a Grunt
# configuration file, which you can learn more about here:
# https://github.com/cowboy/grunt/blob/master/docs/configuring.md
module.exports = (grunt) ->
  grunt.initConfig

    # compile coffee into js
    coffeeify:
      app:
        files: [
          src: ["app/application.coffee"]
          dest: 'static/gitban.js'
        ]
        
    # compile scss into css
    sass:
      compile:
        files:
          "public/css/index.css": [
            "styles/**/*.scss"
          ]
          
    # compile hbs templates into js
    ember_handlebars:
      compile:
        options:
          processName: (name) ->
            name
              .replace('src/app/views/', '')
              .replace('.hbs', '')
        files:
          "public/js/templates.js": ["src/app/views/**/*.hbs"]

    # concatenate vendor files
    concat:
      js:
        src: [
          "vendor/js/handlebars.js",
          "vendor/js/ember.js",
          "vendor/js/ember-data.js",
          "vendor/js/recurly.js"
        ]
        dest: "static/vendor.js"
      # css:
      #   src: [
      #     "vendor/bootstrap.css",
      #     "public/css/index.css"
      #   ]
      #   dest: "static/vend.css"

    # minify and uglify js
    uglify:
      app:
        files:
          "public/js/app.min.js": ["public/js/vendor.js", "public/js/templates.js", "public/js/app.js"]

    # The watch task can be used to monitor the filesystem and execute specific
    # tasks when files are modified.
    watch:
      app:
        files: ["src/app/**/*.coffee"]
        tasks: ["coffeeify"]

      hbs:
        files: ["src/app/views/**/*.hbs"]
        tasks: ["ember_handlebars"]

      vendor:
        files: ["vendor/**/*.js"]
        tasks: ["concat:vendor"]

      scss:
        files: ["styles/**/*.scss"]
        tasks: ["sass", "concat:css"]

  # load grunt libraries so that tasks can be executed
  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-sass"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-ember-handlebars"
  grunt.loadNpmTasks "grunt-coffeeify"

  # register grunt convenience tasks that execute other sets of tasks
  grunt.registerTask "compile", ["concat:vendor", "coffeeify", "sass", "ember_handlebars", "concat:css"]
  grunt.registerTask "production", ["compile", "uglify"]