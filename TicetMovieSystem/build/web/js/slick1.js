/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


$('.slider-content__img').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    centerMode: true, 
    centerPadding: '25%',
    variableWidth: true,
    autoplay: true, 
    autoplaySpeed: 2000,
    arrows:true,
    dots:false
});
$(document).ready(function(){
  $('#semi-circle').on('click', function() {
    $('.slider-content__img').slick('slickPrev');
  });

  $('#semi-circle2').on('click', function() {
    $('.slider-content__img').slick('slickNext');
  });
});

