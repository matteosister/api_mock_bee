import React from 'react'
import { FormGroup, FormControl } from 'react-bootstrap'

const RequestMethod = () => (
  <FormGroup controlId="route">
    <FormControl componentClass="select"
      placeholder="method">
      <option>GET</option>
      <option>POST</option>
      <option>PUT</option>
      <option>DELETE</option>
      <option>PACTH</option>
      <option>OPTIONS</option>
    </FormControl>
  </FormGroup>
)

export default RequestMethod
