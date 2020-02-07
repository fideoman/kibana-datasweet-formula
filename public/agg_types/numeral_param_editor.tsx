import React, { Fragment } from 'react';

export function NumeralParamEditor(props) {
  const { agg, setValue, value } = props;

  if (agg.params.formatter !== 'numeral' && value !== null) {
    setValue(null);
  }

  /**
   * Prevent a change to vis editor
   *
   * @param event 
   */
  const onChange = (event) => {
    setValue(event.target.value);
  };

  return (
    <Fragment>
      { agg.params.formatter === 'numeral' &&
        <div className="form-group">
          <label>Numeral format</label>
          <div>
          <input type="text" onChange={onChange} className="form-control" value={value} />
          </div>
        </div>
      }
    </Fragment>
  );
}