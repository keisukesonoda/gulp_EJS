gulp   = require 'gulp'
config = require '../config'

###
 @ファイル監視
###
gulp.task 'watch', ->
	# cofee
	# gulp.watch "#{config.path.src.coffee}/*.coffee", ['coffee']
	# js
	# gulp.watch "#{config.path.src.js}/*.js", ['copy-js']
	# images
	# gulp.watch [
	# 	"#{config.dir.app}/#{config.dir.src}/#{config.dir.temp}/#{config.dir.content}/#{config.dir.img}/*"
	# 	"#{config.dir.app}/#{config.dir.src}/#{config.dir.temp}/#{config.dir.content}/**/#{config.dir.img}/*"
	# ], ['copy-images']
	# sass
	# gulp.watch [
	# 	"#{config.path.src.sass}/*.scss"
	# 	"#{config.path.src.sass}/**/*.scss"
	# 	"#{config.path.src.sass}/**/**/*.scss"
	# ], ['sass']
	# ect
	gulp.watch [
		"#{config.path.src.root}/**/*.ejs"
	], ['ejs-basic']

	gulp.watch [
		"#{config.path.src.root}/**/*"
		], ['reload']



