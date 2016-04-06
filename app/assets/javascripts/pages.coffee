# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  table = $('#recent').DataTable
    responsive: true

  table = $('#soon').DataTable
    responsive: true

  table = $('#over').DataTable
    responsive: true

  table = $('#all').DataTable
    responsive: true
