import React from 'react'
import { createStore } from 'redux'
import { render } from 'react-dom'
import { Provider } from 'react-redux'
import MatchersList from 'bee/view/matchers_list'
import { Grid, Jumbotron, Row, Col } from 'react-bootstrap'
import {fetchMatchers} from 'bee/actions'
import store from 'bee/store'

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
      <MatchersList />
    </Grid>
  </Provider>,
  document.getElementById('bee')
)

let unsubscribe = store.subscribe(() => {
  console.log(store.getState())
})

store.dispatch(fetchMatchers())
