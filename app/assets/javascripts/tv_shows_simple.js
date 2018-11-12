(function(){
  var pageLoaded = function(){

    if (document.getElementById('tv_shows_index')) {

      /* ******** aqui va el codigo de la pagina "index" ******** */


      // funcion llamada cada vez que hay un clic en un elemento de descripcion
      var onClickOnDescription = function(event) {

        // esta es la descripcion sobre la que fue el click
        var description = event.target;

        if (!description.classList.contains('closed')) {

          // 1a - agrega AQUI la clase closed al listado de clases del elemento description
          description.classList.add('closed');

        } else {

          // 1b - quita AQUI la clase closed al listado de clases del elemento description
          description.classList.remove('closed');

        }


      };

      // obtenemos todos los elementos de descripcion
      var descriptions = document.getElementsByClassName('tv-show-description');

      for (var i=0; i < descriptions.length; i++) {
        // iteramos en cada descripcion
        var description = descriptions[i];

        // y para cada elemento de descripcion, agregamos el manejo del evento click;
        description.addEventListener('click', onClickOnDescription);

      }

      /* ******** fin codigo de la pagina "index" ******** */
    }

    if (document.getElementById('tv_shows_show')){

      /* ******** aqui va el codigo de la pagina "show" ******** */

      var onMouseOverImage = function(event){
        var imageContainer = event.currentTarget;
        if (imageContainer.classList.contains('tv-show_image-container')) {
          imageContainer.classList.add('transparent-bg');
        }
      };

      var onMouseOutImage = function(event){
        var imageContainer = event.currentTarget;
        if (imageContainer.classList.contains('tv-show_image-container')) {
          imageContainer.classList.remove('transparent-bg');
        }
      };

      // obtenemos todos los elementos que contienen imagenes
      var images = document.getElementsByClassName('tv-show_image-container');

      for (var j=0; j < images.length; j++) {
        // iteramos en cada contenedor de imagen
        var image = images[j];

        // 2a - Para cada elemento de contenedor de imagen, agregamos el manejo del evento 'mouseover'
        // cuando ocurra el evento 'mouseover' en imageContainer, llamar la función onMouseOverImage.
        image.addEventListener('mouseover', onMouseOverImage);

        // 2b - Para cada elemento de contenedor de imagen, agregamos el manejo del evento 'mouseout'
        // cuando ocurra el evento 'mouseout' en imageContainer, llamar la función onMouseOutImage.
        image.addEventListener('mouseout', onMouseOutImage);

      }


      /* ******** fin codigo de la pagina "show" ******** */
    }

  };

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", pageLoaded);
  } else {  // `DOMContentLoaded` already fired
    pageLoaded();
  }

})();
