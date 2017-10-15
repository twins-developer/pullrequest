#= require rails-ujs
#= require jquery
#= require bootstrap-sprockets
#= require moment
#= require moment/locale/ja
#= require eonasdan-bootstrap-datetimepicker
#= require turbolinks
#= require cocoon
#= require jquery.autosize
#= require_tree .
$(document).on 'turbolinks:load', ->
  $('input[type="file"]').fileinput
    showUpload: false
    showPreview: true
    allowedPreviewMimeTypes: false
    previewFileType: 'image'
    language: 'ja'

  return

  $ ->
    $('#tags').on 'cocoon:after-insert', ->
      $(this).find('.tag-child').bind 'cocoon:after-insert', ->
        $(this).remove()
        return
      return
    return

  $('#autosize_textarea').autosize()
