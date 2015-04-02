# React Icon Factory
Simply add icon SVGs and the react icon factory will manufacture a custom icon component!


## Install
`npm install react-icon-factory`

## Usage
### First load into the IconFactory an object with the SVG for each icon.

```javascript
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
```

Now with your newly baked Icon component, you can easily add icons to your site:

```javascript
<Icon icon="schedule" size=72/>
<Icon icon="account-child" size=72/>
<Icon icon="accessibility" size=72 />
<Icon icon="call" size=72 />
<Icon icon="content-copy" size=72 />
<Icon icon="schedule" size=72 />
```

## [Demo](https://kyleamathews.github.io/react-icon-factory)

The original code came from this blog post
http://dmfrancisco.github.io/react-icons/

## Future work
I'd love to take all open source icon sets and turn them into an NPM
module with the SVG for each icon as its own module. Then to use a new
icon, you'd simply require it `drafts =
require('material-icons/drafts')` and add it too the IconFactory.
Couldn't be easier.
