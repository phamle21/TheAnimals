import React from "react";

const Input = (props) => {
    const [values, setValues] = React.useState();

    return (
        <div className="form-group">
            <label htmlFor={props.name} className="form-label text-dark fs-6 ms-2" >{props.label}</label>
            <input
                type={props.type}
                id={props.name}
                className="form-control text-dark fs-4"
                name={props.name}
                value={values || props.value || ''}
                onChange={e => setValues(e.target.value)}
            />
        </div>
    )
}

export default Input;