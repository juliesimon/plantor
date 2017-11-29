import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

// debugger

const datepicker = document.querySelector(".datepicker");
if (datepicker) {
  const disabledDates = JSON.parse(document.getElementById('booking-form').dataset.dates);
  flatpickr(".datepicker", {
    disable: disabledDates
  })
}
