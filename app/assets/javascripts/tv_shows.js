$(function(){
  if ($('#tv_shows_form').length){

    var autocomplete = $('.autocomplete');
    var optionsContainer = $('.options');

    // esta funcion muestra el listado de opciones
    var showOptions = function(options){
      // vamos a vaciar el contenido y mostrarlo
      optionsContainer.empty();
      optionsContainer.removeClass('hide');
      for (var i = 0; i < options.length; i++) {
        var option = options[i];
        optionsContainer.append('<div class="option">'+ option +'</div>');
      }
    };

    // al usar el campo de autocomplete...
    autocomplete.on('keyup',function(){

      // si hay al menos 1 letra
      if (autocomplete.val().length >= 1) {
        console.log('buscando que hay para '+autocomplete.val());

        showOptions(['sarana','serene','sirini']);

        // 4b

        $.ajax({
          url: '/categories',
          data: {'key': autocomplete.val()},
          dataType: 'json',
          success: showOptions
        });
      } else {
        // 3c - si no hay nada en el campo de texto, ocultamos las opciones pues no son validas
        optionsContainer.addClass('hide');
      }

    });


    // cuando el campo pierde el foco, ocultamos
    autocomplete.on('blur',function(){
      window.setTimeout(function(){
        // 3b - ocultamos las opciones cuando el usuario hace clic en cualquier parte fuera del campo o de las opciones
        optionsContainer.addClass('hide');
      },200);
    });

    // al hacer clic en una opcion, usamos esa opcion
    optionsContainer.on('click','.option',function(ev){
      var clickedOption = $(ev.target);
      autocomplete.val( clickedOption.text() );
      // 3a - aqui ocultamos las opciones luego que el usuario hizo clic en una
      optionsContainer.addClass('hide');
    });



  }
});