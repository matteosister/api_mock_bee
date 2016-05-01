import React from 'react'
import { createStore } from 'redux'
import { render } from 'react-dom'
import { Provider } from 'react-redux'
import Matcher from 'bee/view/matcher'
import { Grid, Jumbotron, Row, Col } from 'react-bootstrap'
import bee from 'bee/reducers'
import {fetchMatchers} from 'bee/actions'

let store = createStore(bee)

render(
  <Provider store={store}>
    <Grid fluid={true}>
      <Jumbotron className="jumbotron-fluid">
        <Grid>
          <h1>Api Mock Bee</h1>
          <p>mock your endpoints and have fun!</p>
        </Grid>
      </Jumbotron>
      <Row>
        <Col md={12}>
          <h2>Matchers</h2>
        </Col>
      </Row>
      <Matcher />
    </Grid>
  </Provider>,
  document.getElementById('bee')
)

let unsubscribe = store.subscribe(() => {
  console.log(store.getState())
})

store.dispatch(fetchMatchers())
