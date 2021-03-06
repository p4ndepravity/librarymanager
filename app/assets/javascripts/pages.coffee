# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  table = $('#recent').DataTable
    responsive: true
    'order': [
      3
      'desc'
    ]
    'columnDefs': [ {
      'orderable': false
      'targets': 0
    } ]

  table = $('#soon').DataTable
    responsive: true
    'order': [
      3
      'desc'
    ]
    'columnDefs': [ {
      'orderable': false
      'targets': 0
    } ]

  table = $('#over').DataTable
    responsive: true
    'order': [
      3
      'desc'
    ]
    'columnDefs': [ {
      'orderable': false
      'targets': 0
    } ]

  table = $('#all').DataTable
    responsive: true
    'order': [
      3
      'desc'
    ]
    'columnDefs': [ {
      'orderable': false
      'targets': 0
    } ]
