


{_, c} = require('../boilerplate.coffee')()

{ HOME, ABOUT } = require '../constants/ui_states.coffee'

{ LOCATION_CHANGE, SET_BOUNDING_RECT, NAV_HOME, NAV_ABOUT } = require '../constants/action_types.coffee'

location_change = (new_location) ->
    c 'new_location', new_location
    return {
        type: LOCATION_CHANGE
        payload: new_location
    }

nav_about = () ->
    return {
        type: NAV_ABOUT
    }

nav_home = () ->
    return {
        type: NAV_HOME
    }

set_bounding_rect = ({viewport_x, viewport_y, viewport_width, viewport_height}) ->
    return {
        type: SET_BOUNDING_RECT
        viewport_x
        viewport_y
        viewport_width
        viewport_height
    }




# module.exports = true
module.exports = { location_change, set_bounding_rect, nav_home, nav_about }
