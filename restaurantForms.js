// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
var firebaseConfig = {
    apiKey: "AIzaSyDERbIQq1px2ynccnLz8p3kRGuc6xVbm1E",
    authDomain: "hungie-99442.firebaseapp.com",
    projectId: "hungie-99442",
    storageBucket: "hungie-99442.appspot.com",
    messagingSenderId: "221523656106",
    appId: "1:221523656106:web:3cd361f4effbff649b3fd3"
    // ...
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);

var db = firebase.firestore();

document.getElementById('survey-form').addEventListener('submit', function (event) {
    event.preventDefault();  // to stop the form from submitting

    // get form data
    var formData = new FormData(event.target);
    var data = {};
    for (var pair of formData.entries()) {
        data[pair[0]] = pair[1];
    }

    // save data to firestore
    db.collection("surveys").add(data)
        .then((docRef) => {
            console.log("Document written with ID: ", docRef.id);
            alert("Form submitted successfully!");
        })
        .catch((error) => {
            console.error("Error adding document: ", error);
            alert("Error submitting form.");
        });
});
