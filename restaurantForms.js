document.getElementById('survey-form').addEventListener('submit', function (event) {
    event.preventDefault();  // to stop the form from submitting

    // get form data
    var formData = new FormData(event.target);

    // log form data for demonstration purposes
    for (var pair of formData.entries()) {
        console.log(pair[0] + ', ' + pair[1]);
    }

    alert("Form submitted successfully!");
});
