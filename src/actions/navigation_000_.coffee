c = -> console.log.apply console, arguments

go_home = ->
    return {
        type: 'GO_HOME'
    }

go_about = ->
    return {
        type: 'GO_ABOUT'
    }

module.exports = { go_home, go_about }
