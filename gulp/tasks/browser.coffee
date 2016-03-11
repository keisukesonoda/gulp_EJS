gulp    = require 'gulp'
conf  = require '../config'
browser = require 'browser-sync'


### @サーバー起動 ###
gulp.task 'server', ->
	browser({
		server:
			baseDir: [conf.path.project.root, conf.path.dev.root]
		port: 8000
		open: false
		reloadDelay: conf.params.reloadDelay
	})


### @リロード ###
gulp.task 'reload', ->
	gulp.src conf.path.dev.root
			.pipe browser.reload({ stream: true })

