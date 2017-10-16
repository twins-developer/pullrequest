# @TODO フォーマットを指定
$(document).on 'turbolinks:load', ->
  # プロジェクト開始日
  $ ->
    $('#datepicker_of_start').datetimepicker()
      minDate: new Date()
      inline: true
      format: 'YYYYMMDD'
  # プロジェクト終了日
  $ ->
    $('#datepicker_of_end').datetimepicker()
      minDate: new Date()
      inline: true
      format: 'YYYYMMDD'
