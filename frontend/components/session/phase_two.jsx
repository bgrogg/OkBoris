import React from 'react';

const PhaseTwo = (props) => (
  <form onSubmit={props.submit}>

    <label className="phase-two-label">Email</label>
    <input type="text"
      value={props.email}
      onChange={props.update("email")}
      placeholder="Email"
      className="phase-two-box"/><br></br>

    <span className="prefix">
      I am located in
    </span>
    <select
      onChange={props.update("location")}
      value={props.position}
      className="phase-two-button-container">
      <option value="mission">Mission</option>
      <option value="nob-hill">Nob Hill</option>
      <option value="downtown">Downtown</option>
    </select>


    <span className="prefix">
      and am seeking a(n)
    </span>
    <select
      onChange={props.update("looking_for")}
      value={props.position}
      className="phase-two-button-container">
      <option value="full-term">Full-time Contract</option>
      <option value="part-time">Part-time Contract</option>
      <option value="hourly">Hourly Contract</option>
    </select><br></br>

    <input type="submit" value="Next" className="next-button" />
  </form>
);

export default PhaseTwo;
