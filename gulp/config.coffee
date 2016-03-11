YAML = require 'js-yaml'
fs   = require 'fs'

dir =
	app:  'app'
	src:  'src'
	dev:  'dev'
	dest: 'build'
	temp: 'templates'
	cnt:  'content'
	lyot: 'layout'

path =
	project:
		root: ''
	src:
		root: "#{dir.app}/#{dir.src}"
		temp: "#{dir.app}/#{dir.temp}"
		ctnt: "#{dir.app}/#{dir.temp}/#{dir.cnt}"
		lyot: "#{dir.app}/#{dir.temp}/#{dir.lyot}"
	dev:
		root: "#{dir.app}/#{dir.dev}"

params =
	reloadDelay: 300

module.exports =
	dir:    dir
	path:   path
	params: params