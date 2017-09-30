$(document).on 'turbolinks:load', ->
  $ ->
    $('#start_on_datepicker').datetimepicker()
      minDate: 0
      inline: true
      format: 'YYYY年MM月DD日'
  $ ->
    $('#end_on_datepicker').datetimepicker()
      minDate: 0
      inline: true
      format: 'YYYY年MM月DD日'
