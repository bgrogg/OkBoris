import React from 'react';

const PhaseOne = props => (
  <form onSubmit={props.submit} className="form-one">
    <span className="prefix">
      I am an
    </span>
    <select
      onChange={props.update("position")}
      value={props.position}
      className="phase-one-button-container">
      <option value="employer">Employer</option>
      <option value="employee">Employee</option>
    </select>

    <input type="submit" value="Continue" className="continue-button" />
  </form>
);

export default PhaseOne;
