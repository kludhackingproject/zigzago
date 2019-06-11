// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require jquery-ui/widgets/autocomplete
//= require autocomplete-rails
//= require activestorage
//= require turbolinks
//= require_tree .

//= require jquery-3.2.1.min

//= require styles/bootstrap4/popper
//= require styles/bootstrap4/bootstrap.min

//= require plugins/greensock/TweenMax.min
//= require plugins/greensock/TimelineMax.min
//= require plugins/scrollmagic/ScrollMagic.min
//= require plugins/greensock/animation.gsap.min
//= require plugins/greensock/ScrollToPlugin.min
//= require plugins/Isotope/isotope.pkgd.min
//= require plugins/easing/easing
//= require plugins/parallax-js-master/parallax.min
//= require plugins/OwlCarousel2-2.2.1/owl.carousel
//= require plugins/magnific-popup/jquery.magnific-popup.min

//= require about_custom
//= require contact_custom
//= require custom
//= require elements_custom
//= require offers_custom

// let icon_star = document.querySelector(".button-blue")
// .addEventListener("click", function() {
// 	icon_star.background-color = "yellow";
//  }



$(document).ready(function() {

  ////// Scroll when submit ////////

  $( "#find_form" ).submit(function() {
    $('html, body').animate( { scrollTop: $('#search-anchor').offset().top }, 2000 );
  });

  //////// Autocomplet form /////////

  $( function() {
  	$.getJSON("/json/airports4.json", function(data) {
  		autoComplete = [];
  		for (var i = 0, len = data.length; i < len; i++) {
  			autoComplete.push(data[i].location + ", " + data[i].code);
  		}
  		$( "#input-departure" ).autocomplete({
  			source: autoComplete
  		});
      $( "#input-arrival" ).autocomplete({
        source: autoComplete
      });
  	});
  });
});


///// Tawk /////

var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5cff5ce3267b2e578531c6f8/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
