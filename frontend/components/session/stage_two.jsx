import React from 'react';

const StageTwo = props => (
  <form onSubmit={props.submit}>

    <label className="stage-two-label">Email</label>
    <input type="text"
      value={props.email}
      onChange={props.update("email")}
      placeholder="Email"
      className="stage-two-box"/><br></br>

    <label className="stage-two-label">Zip Code</label>
    <input type="text"
      value={props.location}
      onChange={props.update("location")}
      placeholder="e.g. 94105"
      className="stage-two-box"/>
    <p className="reg-errors">{props.zip_errors}</p><br></br>

    <span className="splash-text">
      and am seeking a
    </span>
    <select
      onChange={props.update("looking_for")}
      value={props.position}
      className="stage-two-button-container">
      <option value="full-time">Full-time Contract</option>
      <option value="part-time">Part-time Contract</option>
      <option value="hourly">Hourly Contract</option>
    </select><br></br>

    <input type="submit" value="Next" className="next-button" />
  </form>
);

export default StageTwo;
