
{_, c} = require('../boilerplate.coffee')()

{ connect } = require 'react-redux'

home = require '../components/home.coffee'

# { nav_home, nav_about } = require '../actions/proto_001_.coffee'

map_state_to_props_000 = (state, own_props) ->
    return {}

map_dispatch_to_props_000 = (dispatch, own_props) ->
    return {}

module.exports = home_container = connect(map_state_to_props_000, map_dispatch_to_props_000)(home)
