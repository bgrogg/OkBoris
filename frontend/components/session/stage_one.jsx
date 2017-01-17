import React from 'react';

const stageOne = props => (
  <form onSubmit={props.submit} className="form-one">
    <span className="splash-text">
      I am a
    </span>
    <select
      onChange={props.update("position")}
      value={props.position}
      className="stage-one-button-container">
      <option value="recruiter">Recruiter</option>
      <option value="jobseeker">Jobseeker</option>
    </select>

    <input type="submit" value="Continue" className="continue-button" />
  </form>
);

export default stageOne;
