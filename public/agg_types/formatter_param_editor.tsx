import React, { Fragment } from 'react';

function FormatterParamEditor(props) {

  const { aggParam, setValue, value } = props;

  /**
   * Prevent a change to vis editor
   *
   * @param {object} event
   */
  const onChange = (event) => {
    setValue(event.target.value);
  };

  return (
    <Fragment>
      <div className="form-group">
        <label>Formatter</label>
        <select className="form-control" onChange={onChange} value={value}>
          { 
            aggParam.options.formatters.map((formatter) =>
              <option key={formatter.id} value={formatter.id}>{ formatter.title }</option>
            )
          }
        </select>
      </div>
    </Fragment>
  );
}

export { FormatterParamEditor };