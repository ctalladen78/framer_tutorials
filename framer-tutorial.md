
#coffescript
# https://blog.framer.com/framer-cheat-sheet-page-components-df5a1e8332a 
# frame iphone 7
# bottom tabs 
# https://www.toptal.com/designers/framer-js/framer-tutorial-creating-prototypes


Screen.backgroundColor = "#555FFF"
# Set background color
#Screen.backgroundColor = "#00550D"

# tabs
for i in [0...3]
    tab = new Layer
        width: 425
            x: 400 * i
                y: 200
                    z:1
                        backgroundColor: "#FFFFFF"
                            borderColor: "#888888"
                                borderWidth: 5


# Create PageComponent
page = new PageComponent 
  backgroundColor : "#FFF"
    x: Align.center
      y: Align.center
        width: 1190
          height: 1700
            borderRadius: 6
              scrollHorizontal: false
                scrollVertical: true

# top scrolling tabs
for i in [0...10]
    layer = new Layer 
        width: Framer.Device.screen.width
            height: 750
                parent: page.content
                    name: "Page #{i}"
                        y: 810 * i
                            backgroundColor: "#00AAFF"
                                borderRadius: 6

# Style current page
# content.currentPage.backgroundColor = "#FFF"

# Fade in the most centered page
page.onChange "currentPage", ->
  page.previousPage.animate 
      backgroundColor: "#00AAFF"
          options:
                time: 0.5

                  page.currentPage.animate 
                      backgroundColor: "#FFF"
                          options:
                                time: 0.5
