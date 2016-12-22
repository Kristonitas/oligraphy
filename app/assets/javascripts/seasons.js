var stickyHeaders = (function() {

  var $window = $(window),
      $stickies;

  window.st = $stickies;

  var load = function(stickies) {

    if (typeof stickies === "object" && stickies instanceof jQuery && stickies.length > 0) {

      $stickies = stickies.each(function() {

        var $thisSticky = $(this).wrap('<div class="followWrap" />');
  
        $thisSticky
            .data('originalPosition', $thisSticky.offset().top)
            .data('originalHeight', $thisSticky.outerHeight())
              .parent()
              .height($thisSticky.outerHeight());         
      });

      $window.off("scroll.stickies").on("scroll.stickies", function() {
      _whenScrolling();   
      });

      $window.resize(function() {
      _whenResizing();   
      });
    }
  };

  var _whenResizing = function() {
    $stickies.each(function() {
      var $thisSticky = $(this);

      $thisSticky
            .data('originalPosition', $thisSticky.parent().offset().top)
            .data('originalHeight', $thisSticky.outerHeight())
              .parent()
              .height($thisSticky.outerHeight());   
    })
    _whenScrolling();
  }

  var _whenScrolling = function() {

    $stickies.each(function(i) {      

      var $thisSticky = $(this),
          $stickyPosition = $thisSticky.data('originalPosition');

      if ($stickyPosition <= $window.scrollTop()) {        
        
        var $nextSticky = $stickies.eq(i + 1),
            $nextStickyPosition = $nextSticky.data('originalPosition') - $thisSticky.data('originalHeight');

        $thisSticky.addClass("fixed");

        if ($nextSticky.length > 0 && $thisSticky.offset().top >= $nextStickyPosition) {

          $thisSticky.addClass("absolute").css("top", $nextStickyPosition);
        }

      } else {
        
        var $prevSticky = $stickies.eq(i - 1);

        $thisSticky.removeClass("fixed");

        if ($prevSticky.length > 0 && $window.scrollTop() <= $thisSticky.data('originalPosition') - $thisSticky.data('originalHeight')) {

          $prevSticky.removeClass("absolute").removeAttr("style");
        }
      }
    });
  };

  return {
    load: load
  };
})();

var ready = function(){
  stickyHeaders.load($(".season .header"));
};

$(document).on('ready', ready);
$(document).on('load', ready);

// $( window ).resize(function() {
//   stickyHeaders.load($(".season .header"));
// });

// var stickyHeaders = (function() {

//   var $stickies;

//   var load = function(stickies, target) {

//     if (typeof stickies === "object" && stickies instanceof jQuery && stickies.length > 0) {

//       $stickies = stickies.each(function() {

//         var $thisSticky = $(this);
  
//         $thisSticky
//             .data('originalPosition', $thisSticky.offset().top)
//             .data('originalHeight', $thisSticky.outerHeight());         
//       });

//       target.off("scroll.stickies").on("scroll.stickies", function(event) {
//         _whenScrolling(event);    
//       });
//     }
//   };

//   var _whenScrolling = function(event) {
    
//     var $scrollTop = $(event.currentTarget).scrollTop();

//     $stickies.each(function(i) {      

//       var $thisSticky = $(this),
//           $stickyPosition = $thisSticky.data('originalPosition'),
//           $newPosition,
//           $nextSticky;

//       if ($stickyPosition <= $scrollTop) {
        
//         $newPosition = Math.max(0, $scrollTop - $stickyPosition);
//         $nextSticky = $stickies.eq(i + 1);
        
//         if($nextSticky.length > 0) {
          
//           $newPosition = Math.min($newPosition, ($nextSticky.data('originalPosition') - $stickyPosition) - $thisSticky.data('originalHeight'));
//         }

//       } else {
        
//         $newPosition = 0;
//       }
      
//       $thisSticky.css('transform', 'translateY(' + $newPosition + 'px)');
      
//       //could just as easily use top instead of transform
//       //$thisSticky.css('top', $newPosition + 'px');
//     });
//   };

//   return {
//     load: load
//   };
// })();

// $(function() {
//   stickyHeaders.load($(".season .header"), $(window));
// });

