import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  altinput: true
})

flatpickr("#booking_date", {
  altinput: true,
  plugins: [new rangePlugin({ input: "#booking_end_date"})]
})
