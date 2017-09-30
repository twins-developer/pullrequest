$(document).on 'turbolinks:load', ->
  $ ->
    $('#start_on_datepicker').datetimepicker()
      minDate: 0
      inline: true
      format: 'YYYY/MM/DD'
  $ ->
    $('#end_on_datepicker').datetimepicker()
      minDate: 0
      inline: true
      format: 'YYYY/MM/DD'
