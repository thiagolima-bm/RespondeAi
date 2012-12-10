$ ->
  $("#login").validate
    rules:
      email:
        required: true
        email: true
      code:
        required: true
        rangelength: [6,6]
    messages:
      email:
        required: "É necessário introduzir um email."
        email: "Por favor, digite um email válido."
      code:
        required: "É necessário digitar um código."
        rangelength: "<strong>Yaa!</strong> Introduza o seu código de 6 dígitos."
    highlight: (label) ->
      $(label).closest(".control-group").removeClass('success').addClass("error")
    success: (label) ->
      label
        .text('').addClass('valid')
        .closest('.control-group').removeClass("error").addClass('success')

  $(".close").click ->
    $(this).closest(".alert").slideUp()