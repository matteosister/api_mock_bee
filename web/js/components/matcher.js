import React from 'react'
import RequestMethod from 'bee/view/matcher/request_method'
import Route from 'bee/view/matcher/route'
import Response from 'bee/view/matcher/response'
import { Grid, Jumbotron, Row, Col } from 'react-bootstrap'

const Matcher = () => (
  <Row>
    <Col md={2}>
      <RequestMethod />
    </Col>
    <Col md={5}>
      <Route />
    </Col>
    <Col md={5}>
      <Response />
    </Col>
  </Row>
)

export default Matcher
