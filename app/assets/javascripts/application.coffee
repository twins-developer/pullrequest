#= require rails-ujs
#= require jquery
#= require bootstrap-sprockets
#= require turbolinks
#= require_tree .
$(document).on 'turbolinks:load', ->
  $('input[type="file"]').fileinput
    showUpload: false
    showPreview: true
    allowedPreviewMimeTypes: false
    previewFileType: 'image'
    language: 'ja'

  return
