import React from 'react'
import { connect } from 'react-redux'
import { getMatchers } from 'bee/reducers'
import Matcher from 'bee/view/matcher'

const MatchersList = ({matchers}) => (
  <div>
    {matchers.map((matcher, index) =>
      <Matcher key={index} {...matcher} />
    )}
  </div>
)

const mapStateToProps = (state) => {
  let matchers = getMatchers(state)
  return {matchers}
}

export default connect(mapStateToProps)(MatchersList)
