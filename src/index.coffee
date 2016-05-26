

{_, React, React_DOM, rr, c} = require('./boilerplate.coffee')()

root = document.getElementById 'root'
app = React.createFactory require('./containers/app_001_.coffee')
app2 = require('./containers/app_001_.coffee')
Provider = React.createFactory require('react-redux').Provider
Immutable = require 'immutable'

{ Router: _Router, Route: _Route, IndexRoute: _IndexRoute, browserHistory } = require 'react-router'
{ syncHistoryWithStore } = require 'react-router-redux'

Router = React.createFactory _Router
Route = React.createFactory _Route



{ set_bounding_rect } = require './actions/proto_001_.coffee'

{ HOME, ABOUT } = require './constants/ui_states.coffee'

window.onload = =>



    {width, height, x, y} = root.getBoundingClientRect()


    initial_state = Immutable.Map
        # locationBeforeTransitions: null
        routing: '/zelda'
        location: '/' # TODO : rename conflicting ui_state names and use those for location names
        ui_state: HOME
        viewport_width: width
        viewport_height: height
        viewport_x: x
        viewport_y: y

    initial_state2 = Immutable.fromJS
        locationBeforeTransitions: null
        routing: '/zelda'
        location: '/' # TODO : rename conflicting ui_state names and use those for location names
        ui_state: HOME
        viewport_width: width
        viewport_height: height
        viewport_x: x
        viewport_y: y

    store = require('./store/configure_store.coffee')(initial_state)

    debounce = (func, wait, immediate) ->
        timeout = 'scoped here'
        ->
            context = @
            args = arguments
            later = ->
                timeout = null
                if not(immediate) then func.apply(context, args)
            callNow = immediate and not(timeout)
            clearTimeout(timeout)
            timeout = setTimeout(later, wait)
            if callNow then func.apply(context, args)

    set_boundingRect = ->
        {width, height, x, y} = root.getBoundingClientRect()
        arq =
            viewport_x: x
            viewport_y: y
            viewport_width: width
            viewport_height: height
        store.dispatch(set_bounding_rect(arq))

    window.onresize = debounce(set_boundingRect, 200, false)

    history = syncHistoryWithStore(browserHistory, store,
        selectLocationState: (state)->
            return state.get('routing')
    )



    {p} = React.DOM

    zelda = ->
        p
            style:
                color: 'white'
            ,
            "Zelda"



    main = rr
        render: ->
            Provider
                store: store
                ,
                Router
                    history: history
                    ,
                    Route
                        path: '/'
                        component: app
                        ,
                    Route
                        path: '/zelda'
                        component: zelda

    React_DOM.render main(), root
