import React from 'react'

const RequestMethod = () => (
  <fieldset className="form-group">
    <label for="request_method">Method</label>
    <select className="form-control" id="request_method">
      <option>GET</option>
      <option>POST</option>
      <option>PUT</option>
      <option>DELETE</option>
      <option>PACTH</option>
      <option>OPTIONS</option>
    </select>
  </fieldset>
)

export default RequestMethod
