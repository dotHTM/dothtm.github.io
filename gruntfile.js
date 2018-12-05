module.exports = function(grunt) {
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-compass');
  grunt.initConfig({
    compass: {
      dev: {
        options: {
          config: 'config.rb'
        } //options
      } //dev
    }, //compass
    watch: {
      options: { 
        // atBegin: true,
        // livereload: true 
      }, //options
      sass: {
        files: ['_/components/sass/*'],
        tasks: ['compass:dev'],
      }, //sass
      // cssjekyll: {
      //   files: ['_site/css/*'],
      // }, //cssjekyll
      // html: {
      //   files: ['*.html'],
      // }, //html
      // web: {
      //   files: [ '../management/html/**' ],
      // }, //web
    }, //watch
  }) //initConfig
  grunt.registerTask('default', ['compass:dev', 'watch']);
} //exports