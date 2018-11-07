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
    autocomplete.on('focus keyup',function(){

      // si hay al menos 1 letra
      if (autocomplete.val().length >= 1) {
        console.log('buscando que hay para '+autocomplete.val());
        $.ajax({
          url: '/categories',
          data: {'key': autocomplete.val()},
          dataType: 'json',
          success: function(data, textStatus, jqXHR){
            showOptions(data);
          }
        });
      } else {
        // si no, ocultamos las opciones pues no son validas
        optionsContainer.addClass('hide');
      }

    });


    // cuando el campo pierde el foco, ocultamos
    autocomplete.on('blur',function(){
      window.setTimeout(function(){
        optionsContainer.addClass('hide');
      },200);
    });

    // al hacer clic en una opcion, usamos esa opcion
    optionsContainer.on('click','.option',function(ev){
      var clickedOption = $(ev.target);
      autocomplete.val( clickedOption.text() );
      optionsContainer.addClass('hide');
    });



  }
});