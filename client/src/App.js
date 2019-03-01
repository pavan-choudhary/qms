import React from "react";
import Form from "react-jsonschema-form";

class App extends React.Component {
  constructor() {
    super();
    this.state={
      data:{},
    }
  }
  componentDidMount(){
    fetch('http://localhost:5000/')
    .then(function(response) {
      return response.json();
    })
    .then((parsedData) =>{
      this.setState({data:parsedData.form,});
    });
  }
  render() {
    const sch=this.state.data;
    console.log(this.state.data);
    
    const uiSchema = {
      details:{
        "Supplier":{ classNames:"col-md-6 l" },
        "Source":{classNames:"col-md-6 l" },
        "Plant":{classNames:"col-md-6 l" },
        "date":{classNames:"col-md-6 l" },
        "Aggregate_Type": {
          "ui:widget": "checkboxes"
        },
      }
    }
    const log = (type) => console.log.bind(console, type);
    const onSubmit = (function(formData)
      { console.log("Data submitted: ",  formData.formData)
          fetch('http://localhost:5000/submit', {
            method: 'POST',
            body: JSON.stringify({"data":formData.formData}),
            headers: {
                'Content-Type': 'application/json'
            }
        }).then(res => {
            return res;
        }).catch(err => err);
      });
    return(
    <Form className="form1"
          schema={sch}
          uiSchema={uiSchema}
          onSubmit={onSubmit}
          onError={log("errors")} /> );
  }
}

export default App;