
nfo
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
              
              mapboxgl.accessToken = ''
              
              map = new mapboxgl.Map
                container: mapElement,
                  style: 'mapbox://styles/mapbox/streets-v9' #day mode
                    #style: 'mapbox://styles/mapbox/dark-v9', # hosted style id
                    
                      zoom: 15.5,
                        center: [19.0395, 47.5054], #budapest
                          bearing: -17.6,
                            pitch: 45
                            
                            map.addControl( new mapboxgl.GeolocateControl({
                                  positionOptions: {
                                            enableHighAccuracy: true
                                                },
                                                    trackUserLocation: true,
                                                        position: 'bottom-right'
                            }))
                            map.addControl(new mapboxgl.NavigationControl({ 
                                position: 'bottom-right' }))
                            
                            starbucksList = {
                                arena: "47.498782, 19.091527",
                                  margit: "47.507957, 19.026286",
                                    deak: "47.497201, 19.053717"
                            }
# vertical scroller
                            scroller = new ScrollComponent
                              size: 150
                                scrollHorizontal: false
                                  y: 250
                                    x: 590
                                      height: 900
                                        width: 150
                                          
# horizontal scroller
                                          contentScroll = new ScrollComponent
                                            scrollVertical: false
                                              height: 300
                                                width: Screen.width
                                                  y: 1000
                                                  
                                                  for index in [0...10]
                                                      cell = new Layer
                                                          y: index * 180
                                                              width: 150
                                                                  parent: scroller.content
                                                                      height: 150
                                                                          backgroundColor: "#EEEFFF"
                                                                              borderRadius: 100
                                                                                  z: -1 
                                                                                  
                                                                                    content = new Layer
                                                                                        x: index * 570
                                                                                            y: 0
                                                                                                height: 300
                                                                                                    width: 550
                                                                                                        backgroundColor: "#555FFF"
                                                                                                            hueRotate: index * 10
                                                                                                                parent: contentScroll.content
                                                                                                                
                                                                                                                  
                                                                                                                  #coffescript
# https://blog.framer.com/framer-cheat-sheet-page-components-df5a1e8332a 

