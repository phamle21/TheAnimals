// resources/js/components/HelloReact.js

import React from 'react';
import ReactDOM from 'react-dom';

export default function HelloReact() {
    return (
        <h1>Hello Fish!</h1>
    );
}

if (document.getElementById('hello-react')) {
    ReactDOM.render(<HelloReact />, document.getElementById('root'));
}
