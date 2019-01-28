import PropTypes from 'prop-types';
import React from 'react';
const axios = require('axios');

export default class HelloWorld extends React.Component {
  static propTypes = {
    name: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://reactjs.org/docs/state-and-lifecycle.html#adding-local-state-to-a-class
    this.state = { name: this.props.name };
  }

  updateName = (name) => {
    this.setState({ name });
  };

  onSubmit = () => {
    event.preventDefault()

    axios({
      method: 'post',
      url: '/hello_world',
      data: {
        name: this.state.name
      }
    });
  }

  render() {
    return (
      <div>
        <h3>
          Hello, {this.state.name}!
        </h3>
        <hr />
        <form onSubmit={(e) => this.onSubmit(e.target.value)}>
          <label htmlFor="name">
            Say hello to:
          </label>
          <input
            id="name"
            type="text"
            value={this.state.name}
            onChange={(e) => this.updateName(e.target.value)}
          />
          <button type="submit">Submit</button>
        </form>
      </div>
    );
  }
}
