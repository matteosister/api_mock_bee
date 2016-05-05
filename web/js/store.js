import { createStore, applyMiddleware } from 'redux'
import bee from 'bee/reducers'
import thunkMiddleware from 'redux-thunk'
import createLogger from 'redux-logger'
import initialState from 'bee/state'

const loggerMiddleware = createLogger()

let store = createStore(
  bee,
  initialState,
  applyMiddleware(
    thunkMiddleware, // lets us dispatch() functions
    loggerMiddleware // neat middleware that logs actions
  )
)

export default store
