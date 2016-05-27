{_, gl_mat, React, React_DOM, rr, c, shortid, assign, keys, mat3, vec3, vec2} = require('../boilerplate.coffee')()

{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, body, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient, foreignObject, text, textArea, ellipse, pattern} = React.DOM

textArea = React.createFactory 'textArea'
filter = React.createFactory 'filter'
foreignObject = React.createFactory 'foreignObject'
feGaussianBlur = React.createFactory 'feGaussianBlur'
feImage = React.createFactory 'feImage'

font_awesome = require 'react-fontawesome'

top_nav = React.createFactory require('../containers/top_nav.coffee')

module.exports = about = rr

    render: ->
        svg
            width: '100%'
            height: '100%'
        ,
            top_nav()
            text
                x: '50%'
                y: '50%'
                fontSize: 40
                fill: 'white'
                ,
                "About page"
