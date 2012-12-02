$ ->
  $("#login").validate
    rules:
      email:
        required: true
        email: true
      code:
        required: true
        rangelength: [5,5]
    messages:
      email:
        required: "É necessário entrar com um email."
        email: "Por favor digite um email válido"
      code:
        required: "E necessário digitar um código."
        rangelength: "Por favor entre com o código de 5 dígitos que você recebeu."
    highlight: (label) ->
      $(label).closest(".control-group").removeClass('success').addClass("error")
    success: (label) ->
      label
        .text('').addClass('valid')
        .closest('.control-group').removeClass("error").addClass('success')

  $(".close").click ->
    $(this).closest(".alert").slideUp()