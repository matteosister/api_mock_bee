require('es6-promise').polyfill()
require('isomorphic-fetch')

import * as action_types from 'bee/action_types'

export function fetchMatchers() {
  return dispatch => {
    dispatch(matchersRequested())
    fetch('/_conf.json')
      .then(response => response.json())
      .then(matchers => dispatch(matchersReceived(matchers.matchers)))
  }
  return {
    type: action_types.FETCH_MATCHERS
  }
}

export function matchersRequested() {
  return {
    type: action_types.MATCHERS_REQUESTED
  }
}

export function matchersReceived(matchers) {
  return {
    type: action_types.MARCHERS_RECEIVED,
    payload: matchers
  }
}
