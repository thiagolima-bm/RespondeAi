# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".show-comments").click ->
    $(this).siblings(".comments-inner").slideToggle()
    # $('html, body').animate {
    #   scrollTop: $(this).siblings(".comments-inner").offset().top 
    # }, 1000
    false
  
  $(".comments textarea").autosize()

  cancel_control = ->
    console.log "Teste"
    if($(this).val() == "")
      $(this).siblings(".cancel-comment").hide()
    else
      $(this).siblings(".cancel-comment").show()

  $(".comments textarea").keyup(cancel_control).blur(cancel_control)

  $(".cancel-comment").click ->
    $(this).siblings("textarea").val("").height(40).blur()
    return false