const Immutable = require("immutable")

// import { combineReducers } from 'redux'
import { combineReducers } from 'redux-immutable';
import initialState from 'bee/state'
import * as action_types from 'bee/action_types'

function matchers(state = initialState.get('matchers'), action) {
  switch (action.type) {
    case action_types.MARCHERS_RECEIVED:
      return Immutable.List(action.payload)
    default:
      return state
  }
}

let getMatchers = state => state.get('matchers')

const bee = combineReducers({matchers})


export { getMatchers }
export default bee
