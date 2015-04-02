React = require('react')
IconFactory = require '../src/index'
{Container} = require 'react-responsive-grid'
Headroom = require 'react-headroom'
Typography = require 'typography'

typography = new Typography({})
rhythm = typography.rhythm
typography.injectStyles()

Icon = IconFactory({
  drafts: <g><path d="M21.99 8c0-.72-.37-1.35-.94-1.7l-9.05-5.3-9.05 5.3c-.57.35-.95.98-.95 1.7v10c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2l-.01-10zm-9.99 5l-8.26-5.16 8.26-4.84 8.26 4.84-8.26 5.16z"></path></g>
  "account-child": <g><path d="M16.5 12c1.38 0 2.49-1.12 2.49-2.5s-1.11-2.5-2.49-2.5c-1.38 0-2.5 1.12-2.5 2.5s1.12 2.5 2.5 2.5zm-7.5-1c1.66 0 2.99-1.34 2.99-3s-1.33-3-2.99-3c-1.66 0-3 1.34-3 3s1.34 3 3 3zm7.5 3c-1.83 0-5.5.92-5.5 2.75v2.25h11v-2.25c0-1.83-3.67-2.75-5.5-2.75zm-7.5-1c-2.33 0-7 1.17-7 3.5v2.5h7v-2.25c0-.85.33-2.34 2.37-3.47-.87-.18-1.71-.28-2.37-.28z"></path></g>
  accessibility: <g><path d="M12 2c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2zm9 7h-6v13h-2v-6h-2v6h-2v-13h-6v-2h18v2z"></path></g>
  call: <g><path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1v3.49c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"></path></g>
  "content-copy": <g><path d="M16 1h-12c-1.1 0-2 .9-2 2v14h2v-14h12v-2zm3 4h-11c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h11c1.1 0 2-.9 2-2v-14c0-1.1-.9-2-2-2zm0 16h-11v-14h11v14z"></path></g>
  schedule: <g><path fillOpacity=".9" d="M11.99 2c-5.52 0-9.99 4.72-9.99 10s4.47 10 9.99 10c5.53 0 10.01-4.72 10.01-10s-4.72-10-10.01-10zm.01 18c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8z"></path><path fillOpacity=".9" d="M12.5 7h-1.5v6l5.25 3.15.75-1.23-4.5-2.67z"></path></g>
})

module.exports = React.createClass
  render: ->
    <div>
      <Headroom
        style={{background: '#FFC107', padding: rhythm(1)}}
        wrapperStyle={{marginBottom: 32}}
        disable
      >
        <Container style={maxWidth:'1000px'}>
          <h1 style={{marginBottom: 0, color: 'white'}}>React Icon Factory</h1>
        </Container>
      </Headroom>
      <Container style={maxWidth:'1000px', padding: rhythm(1) }>
        <a href="https://github.com/KyleAMathews/react-icon-factory">Code on Github</a>
        <br />
        <br />
        <h2>SVG Icons are great!</h2>
        <p>They're small, retina-ready, scale to any size, can be styled with css, animated, etc. etc. etc.
        But they're also a pain to work with. So this project is a step towards fixing that.</p>

        <h3>How to manufacture a icon component.</h3>
        <p>First load into the IconFactory an object with the SVG for each icon.</p>
        <pre><code>
        {"""
        var IconFactory = require('react-icon-factory');

        // svg truncated for readability.
        var Icon = IconFactory({
          drafts: <g><path d="M21.99 8c0-.72-.37-1.35-.94-1></path></g>
          "account-child": <g><path d="M16.5 12c1.38 0 -.28z"></path></g>
          accessibility: <g><path d="M12 2c1.1 0 2 .9 2h18v2z"></path></g>
          call: <g><path d="M6.62 10.79c1.44 2.83 3.76"></path></g>
          "content-copy": <g><path d="M16 1h-12c-1.1 0"></path></g>
          schedule: <g><path fillOpacity=".9" d="M11.9"></path></g>
        })
        """}
        </code></pre>
        <p>Now with your newly baked Icon component, you can easily add icons to your site.</p>
        <pre><code>
        {"""
        <Icon icon="drafts" size=72 style={{fill: 'green'}} />
        <Icon icon="account-child" size=72 />
        <Icon icon="accessibility" size=72 />
        <Icon icon="call" size=72 />
        <Icon icon="content-copy" size=72 style={{fill: 'blue'}} />
        <Icon icon="schedule" size=72 style={{stroke:'red'}} />
        """}
        </code></pre>

        <h3>Which outputs</h3>
        <Icon icon="drafts" size=72 style={{fill: 'green'}} />
        <Icon icon="account-child" size=72 />
        <Icon icon="accessibility" size=72 />
        <Icon icon="call" size=72 />
        <Icon icon="content-copy" size=72 style={{fill: 'blue'}} />
        <Icon icon="schedule" size=72 style={{stroke:'red'}} />

      </Container>
    </div>
