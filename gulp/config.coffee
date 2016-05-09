YAML = require 'js-yaml'
fs   = require 'fs'


# directories
# --------------------
dir =
	app:  'app'
	src:  'src'
	dev:  'dev'
	dest: 'build'
	temp: 'templates'
	cnt:  'content'
	lyot: 'layout'


# path
# --------------------
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


# data set
# --------------------
data_init = YAML.safeLoad fs.readFileSync "#{dir.app}/#{dir.src}/data/init.yaml", 'utf8'


# common params
# --------------------
params =
	reloadDelay: 300


# exports
# --------------------
module.exports =
	dir:    dir
	data:
		init: data_init
	path:   path
	params: params





