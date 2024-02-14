// Here is the boilerplate we can use
// when making a GET HTTP Request using Javascript
// MANTRA OF TODAY !!!
// fetch(url)                            // MAKE HTTP REQUEST
//   .then(response => response.json())  // PARSE THE RESPONSE
//   .then((data) => {
//     console.log(data);                // PRINT THE RESPONSE
//   });

// TODO - Fetch an activity with the Bored API - Let's psuedocode!
const url = 'https://www.boredapi.com/api/activity/'
const btn = document.querySelector('button')
const header = document.getElementById('activity')
// console.log(btn)

btn.addEventListener('click', (event) => {
  // REMINDER: event.currentTarget returns the ELEMENT WHERE WE BINDED THE EVENT
  // console.log(event.currentTarget)

  // REMINDER: All manipulations we learned previous week can be used here
  // event.currentTarget.innerText = 'Inspiring...'
  // event.currentTarget.disabled = true

  // REMINDER: In the Web everything is around REQUEST/RESPONSE !!!
  // 1. Make the HTTP Request
  // 2. Parse the response

  // 3. Add the activity to the page
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      // REMINDER: Variable `data` holds the whole body for the response!
      // console.log(data)

      header.innerText = data.activity
    })
})
