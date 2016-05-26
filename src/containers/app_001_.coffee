

{_, c} = require('../boilerplate.coffee')()

{ connect } = require 'react-redux'

# proto_comp = require '../components/proto_comp_000_.coffee'
app = require '../components/app_002_.coffee'

mapStateToProps = (state, ownProps) ->
    viewport_x = state.get 'viewport_x'
    viewport_y = state.get 'viewport_y'
    viewport_width = state.get 'viewport_width'
    viewport_height = state.get 'viewport_height'
    ui_state = state.get 'ui_state'
    location = state.get 'location'
    return {
        location
        ui_state
        viewport_x
        viewport_y
        viewport_width
        viewport_height
        color: 'grey'
    }

mapDispatchToProps = (dispatch, ownProps) ->
    return {
        onClick: -> c 'clicked'
    }

module.exports = app_container = connect(mapStateToProps, mapDispatchToProps)(app)
