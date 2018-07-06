# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Cyrus Talladen"
	twitter: ""
	description: ""

# initialize a module with mapboxgl
# 'exports.mapboxgl = require "mapbox-gl" ' 
{ mapboxgl } = require "npm" #this is from modules/npm.coffee

Utils.insertCSS('@import url(https://api.tiles.mapbox.com/mapbox-gl-js/v0.43.0/mapbox-gl.css)')

mapLayer = new Layer
	height: Screen.height
	width: Screen.width
	
mapLayer.html = "<div id='map'></div>"
mapLayer.ignoreEvents = false
mapElement = mapLayer.querySelector("#map")
mapElement.style.height = Screen.height + 'px'

mapboxgl.accessToken = 'accesstoken'

map = new mapboxgl.Map
	container: mapElement
	#style: 'mapbox://styles/mapbox/streets-v9' #day mode
	style: 'mapbox://styles/mapbox/dark-v9', # hosted style id

	zoom: 12
	center: [-77.01866, 38.888]
	
