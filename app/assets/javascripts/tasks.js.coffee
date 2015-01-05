# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#signupForm").validate
    rules:
      "task[subject]":
        required: true

      "task[desc]":
        required: true

      "task[starttime]":
        required: true

      "task[owner]":
        required: true

    messages:
      "task[subject]": "subjectcan't be blank"
      "task[desc]": "description can't be blank"
      "task[starttime]": "starttime can't be blank"
      "task[owner]": "owner can't be blank"

  $("#datetimepicker").datetimepicker
    dayOfWeekStart: 1
    lang: "en"
    startDate: "01/01/2014"

  return

