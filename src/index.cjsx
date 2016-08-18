React = require 'react'
objectAssign = require 'object-assign'

module.exports = (icons) ->
  React.createClass
    propTypes:
      name: React.PropTypes.string.isRequired
      size: React.PropTypes.oneOfType([
        React.PropTypes.string,
        React.PropTypes.number
      ])
      style: React.PropTypes.object

    getDefaultProps: ->
      return {
        size: 24
        style: {}
      }

    render: ->
      styles = {
        fill: "currentcolor"
        verticalAlign: "middle"
        # Use CSS instead of the width attr to support non-pixel units
        width: @props.size
        # Prevents scaling issue in IE
        height: @props.size
      }

      return (
        <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"
          style={objectAssign(
            styles,
            @props.style
          )}>
            {icons[@props.name]}
        </svg>
      )
