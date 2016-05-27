

# this presentational component will nest structure all components
# it will take screen resize event stuff from the app container as props
# and will take some dispatch wires for the window.resize stuff


# try doing it as a pure function then later maybe if need lifecycle components
# can make it an rr



{_, gl_mat, React, rr, c} = require('../boilerplate.coffee')()
{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, ellipse, img} = React.DOM


main_div = ->
    style:
        background: 'white'
        position: 'absolute'
        width: window.innerWidth
        height: window.innerHeight
        left: 0
        right: 0
        top: 0
        bottom: 0

top_nav = React.createFactory require('../containers/top_nav.coffee')
home = React.createFactory require('../containers/home.coffee')

{ HOME, ABOUT } = require '../constants/ui_states.coffee'

module.exports = app = ({location, ui_state, viewport_x, viewport_y, viewport_width, viewport_height, color, onClick}) ->


    svg
        width: '100%'
        height: '100%'
    ,
        rect
            x: 0
            y: 0
            width: viewport_width / 2
            height: viewport_height / 2
            fill: color or 'red'
            onClick: onClick or -> c 'clicked here'
            ,
        top_nav()
        switch ui_state
            when HOME
                home()
            when ABOUT
                c 'make an about page to display here'
            else
                c 'nothing'
