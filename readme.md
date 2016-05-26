
# Example App ::: using React, Redux, React-Router, React-Router-Redux, Immutable, SVG-all-the-Things, CoffeeScript, no JSX/CSX, only inline DOM functions

### new boilerplates, new apps

##### motivations:
A few months ago I started working with Redux, saw Redux Devtools and because decided 'must have that' started working with the leading React-Redux boilerplates.  I've re-assessed after finding some things I don't like about their workflow setups.  Ultimately sometimes it is good to re-invent the wheel, if the re-invented wheel will perform better, or is more suitable to a particular workflow

###### some points:

- I can't stand JSX, it's non helpful to productivity.  
ES6 and TypeScript are overly verbose, this doesn't help productivity.

- Instead of JSX I use inline functional markup with React DOM functions.

- There should be addons that could make a CoffeeScript workflow type-strict in the sense that TypeScript is -- with full signature definitions for all functions and parameters.

- My programmatic SVG workflow is afaik the best thing out there, I just need to continue developing and optimising it.

- It shouldn't be too hard to roll my own Redux-Devtools and client side hot module reloading, with some configurability embedded.  Writ large, roll own client-side development environment.

- I want server-side server development hot-module reloading, and I know how to do this now, so want to implement in a project and spin off to a boilerplate.

##### some notes: things to do

-  learn lessons from the other trendy boilerplates, some of cthese are enumerated in points below

- server side hot module reloading (our own custom)

- our own custom redux dev tools (time travel)  this means containers holding containers.  like put the production version inside a development container.

- learn to use font awesome and fonts generally.

- for client side hot module reloading will need a dev server

- so make a dev server

- also the dev server needs to have primus in it. some websocket thing.

- implement navigation constructss

- new system for transform matrices where 0,0 is upper left corner and 1,1 is lower right corner.  i think this is very similar to openGL convention.

- implement this thing in webpack that allows requires to be isomorphic from some defined project root rather than relative through the file structure.

- Eventually siphon in some of the progressive web app stuff

##### revisit links

- https://www.npmjs.com/package/redux-async-connect

- https://github.com/theaqua/redux-logger

- https://github.com/acdlite/redux-promise

- https://github.com/paularmstrong/normalizr
