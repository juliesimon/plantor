import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const disabledDates = JSON.parse(document.getElementById('booking-form').dataset.dates);
// debugger

const datepicker = document.querySelector(".datepicker");
if (datepicker) {
  flatpickr(".datepicker", {
    disable: disabledDates
  })
}
