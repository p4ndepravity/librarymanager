# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  table = $('#patrons').DataTable
    responsive: true
    select: 'single'
  $('.tooltip-delete').tooltip
    selector: '[data-toggle=tooltip]'
    container: 'body'
