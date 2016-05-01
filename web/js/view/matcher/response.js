import React from 'react'
import { FormGroup, FormControl } from 'react-bootstrap'

const Response = () => (
  <FormGroup controlId="response">
    <FormControl componentClass="textarea"
      placeholder='{"status": "ok"}'>
    </FormControl>
  </FormGroup>
)

export default Response
