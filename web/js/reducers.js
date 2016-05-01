import { combineReducers } from 'redux'
import initialState from 'bee/state'

function matchers(state = initialState.get('matchers'), action) {
  switch (action.type) {
    default:
      return state
  }
}

const bee = combineReducers({matchers})

export default bee
