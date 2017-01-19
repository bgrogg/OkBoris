import React from 'react';

const stageOne = props => (
  <form onSubmit={props.submit} className="form-one">
    <span className="splash-text">
      I am a
    </span>
    <select
      onChange={props.update("orientation")}
      value={props.orientation}
      className="stage-one-button-container">
      <option value="recruiter">Straight</option>
      <option value="jobseeker">Gay</option>
      <option value="jobseeker">Bisexual</option>
    </select>

    <select
      onChange={props.update("gender")}
      value={props.gender}
      className="stage-one-button-container">
      <option value="female">Female</option>
      <option value="male">Male</option>
    </select>

    <input type="submit" value="Continue" className="continue-button" />
  </form>
);

export default stageOne;
