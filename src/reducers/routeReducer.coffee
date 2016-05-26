
{ LOCATION_CHANGE } = require 'react-router-redux'
c = -> console.log.apply console, arguments
routeReducer = (prev_state = initial_state, action) ->
    if action.type is LOCATION_CHANGE
        c 'have location change', action
        return _.assign(prev_state, {
            locationBeforeTransitions: action.payload
        })
    else
        return prev_state


module.exports = routeReducer
