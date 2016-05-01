import React from 'react'
import RequestMethod from 'bee/view/matcher/request_method'
import Route from 'bee/view/matcher/route'
import Response from 'bee/view/matcher/response'
import ResponseCode from 'bee/view/matcher/response_code'
import { Grid, Jumbotron, Row, Col } from 'react-bootstrap'

const Matcher = () => (
  <Row>
    <Col md={2}>
      <RequestMethod />
    </Col>
    <Col md={3}>
      <Route />
    </Col>
    <Col md={2}>
      <ResponseCode />
    </Col>
    <Col md={5}>
      <Response />
    </Col>
  </Row>
)

export default Matcher
