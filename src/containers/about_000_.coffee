

{_, c} = require('../boilerplate.coffee')()

{ connect } = require 'react-redux'

# proto_comp = require '../components/proto_comp_000_.coffee'
about = require '../components/about_000_.coffee'

mapStateToProps = (state, ownProps) ->
    viewport_x = state.get 'viewport_x'
    viewport_y = state.get 'viewport_y'
    viewport_width = state.get 'viewport_width'
    viewport_height = state.get 'viewport_height'
    ui_state = state.get 'ui_state'
    location = state.get 'location'
    return {

        viewport_x
        viewport_y
        viewport_width
        viewport_height

    }

mapDispatchToProps = (dispatch, ownProps) ->
    return {

    }

module.exports = about_container = connect(mapStateToProps, mapDispatchToProps)(about)
