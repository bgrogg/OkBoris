import React from 'react';

const StageTwo = props => (
  <form onSubmit={props.submit}>

    <label className="stage-two-label">Age</label>
    <input type="text"
      value={props.age}
      onChange={props.update("age")}
      placeholder="Age"
      className="stage-two-box"/>
    <p className="reg-errors">{props.age_errors}</p>

    <label className="stage-two-label">Zip Code</label>
    <input type="text"
      value={props.location}
      onChange={props.update("location")}
      placeholder="e.g. 94105"
      className="stage-two-box"/>
    <p className="reg-errors">{props.zip_errors}</p><br></br>

    <input type="submit" value="Next" className="next-button" />
  </form>
);

export default StageTwo;
