function imageTip(event) {

  event.preventDefault();
  var $image = $(this);
  var $box = $('#image-tip');
  if ($box.length == 0) {
    $('body').append('<div id="image-tip" style="display: none; position: fixed; z-index: 1500; top: 15px; bottom: 15px; left: 15px; right: 15px; justify-content: center; align-items: center; box-shadow: 2px 2px 4px 3px rgba(0,0,0,0.5); background: #fff;"><img src="" style="max-width: 100%; max-height: 100%;" /></div>');
    $box = $('#image-tip');
    $box.on('click',function(){
      if ($box.is(':visible')) {
        $box.css('display','none');
      }
    });
  }
  $box.find('img').attr('src',$image.attr('src'));
  $box.css('display','flex');
}