
{_, c} = require('../boilerplate.coffee')()

{ connect } = require 'react-redux'

top_nav = require '../components/top_nav.coffee'

{ HOME, ABOUT } = require '../constants/ui_states.coffee'

{ location_change, nav_home, nav_about } = require '../actions/proto_001_.coffee'

map_state_to_props_000 = (state, own_props) ->
    return {}

map_dispatch_to_props_000 = (dispatch, own_props) ->
    return {
        on_home_click: -> dispatch(nav_home())
        on_about_click: -> dispatch(nav_about())
        router_on_home_click: -> dispatch(location_change('/'))
        router_on_zelda_click: -> dispatch(location_change('zelda'))
    }

module.exports = top_nav_container = connect(map_state_to_props_000, map_dispatch_to_props_000)(top_nav)
