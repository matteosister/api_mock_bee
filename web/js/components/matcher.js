import React from 'react'
import RequestMethod from 'bee/components/matcher/request_method'
import Route from 'bee/components/matcher/route'
import { Grid, Jumbotron, Row, Col } from 'react-bootstrap'

const Matcher = () => (
  <Row>
    <Col md={1}>
      <RequestMethod />
    </Col>
    <Col md={3}>
      <Route />
    </Col>
  </Row>
)

export default Matcher
