import React from "react";

const Input = (props) => {
    const [values, setValues] = React.useState();

    return (
        <div className="form-group mb-0">
            {props.label
                ? <label htmlFor={props.name} className="form-label text-white fs-6 ms-2" >{props.label}</label>
                : null
            }
            <input
                type={props.type}
                id={props.name}
                className="form-control text-white fs-4"
                name={props.name}
                value={values || props.value || ''}
                onChange={e => setValues(e.target.value)}
                required
            />
        </div>
    )
}

export default Input;