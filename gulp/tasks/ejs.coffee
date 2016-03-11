gulp = require 'gulp'
conf = require '../config'

ejs  = require 'gulp-ejs'
plum = require 'gulp-plumber'



gulp.task 'ejs', ->
	gulp.src [
		"#{conf.path.src.root}/**/*.ejs"
		"!#{conf.path.src.root}/**/_*.ejs"
	]
			.pipe plum({
				handleError: (err) ->
					console.log err
					this.emit('end')
			})
			.pipe ejs({
				# options
				msg: 'Hello Gulp!'
			}, {
				# settings
				ext: '.html'
			})
			.pipe gulp.dest "#{conf.path.dev.root}"








