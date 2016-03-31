# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  table = $('#recent').DataTable
    responsive: true
    select: 'single'
  table = $('#soon').DataTable
    responsive: true
    select: 'single'
  table = $('#over').DataTable
    responsive: true
    select: 'single'
  table = $('#all').DataTable
    responsive: true
    select: 'single'
