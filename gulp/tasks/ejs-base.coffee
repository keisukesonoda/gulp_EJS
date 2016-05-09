gulp = require 'gulp'
conf = require '../config'

ejs  = require 'gulp-ejs'
plum = require 'gulp-plumber'

console.log conf.data.init.pages

gulp.task 'ejs-basic', ->
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
				data: conf.data
			}, {
				# settings
				ext: '.html'
			})
			.pipe gulp.dest "#{conf.path.dev.root}"








