
{_, c} = require('../boilerplate.coffee')()
{ combineReducers } = require 'redux-immutable'
# { routerReducer } = require 'react-router-redux'



module.exports = (initial_state) ->

    { HOME, ABOUT } = require('../constants/ui_states.coffee')



    routeReducer = require './routeReducer.coffee'

    {viewport_x, viewport_y, viewport_height, viewport_width} = require './boundingClientRect.coffee'

    { ui_state } = require './ui_state.coffee'


    return combineReducers {

        ui_state

        viewport_width
        viewport_height
        viewport_x
        viewport_y

        routing: routeReducer
    }
