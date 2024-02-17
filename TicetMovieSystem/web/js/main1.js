/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

const items = document.querySelectorAll('.corner-content div a');

items.forEach(item => {
    item.addEventListener('mouseover', () => {

        gsap.to(item, {duration: 0.3, x: 6, color: '#f5811f'});
    });

    item.addEventListener('mouseout', () => {
        gsap.to(item, {duration: 0.3, x: 0, color: '#333'});
    });
});
const itemsEvent = document.querySelectorAll('.event-content div a');

itemsEvent.forEach(item => {
    item.addEventListener('mouseover', () => {
        gsap.to(item, {duration: 0.3, x: 6, color: '#f5811f'});
    });

    item.addEventListener('mouseout', () => {
        gsap.to(item, {duration: 0.3, x: 0, color: '#333'});
    });
});
const itemsUser = document.querySelectorAll('.user-content div a');
itemsUser.forEach(item => {
    item.addEventListener('mouseover', () => {
        gsap.to(item, {duration: 0.3, x: 6, color: '#f5811f'});
    });

    item.addEventListener('mouseout', () => {
        gsap.to(item, {duration: 0.3, x: 0, color: '#333'});
    });
});
document.addEventListener('DOMContentLoaded', function () {
    let box1 = document.querySelector('.circle1');
    let trailer = document.querySelector("#btn-event");
 console.log(trailer);
    trailer.addEventListener('click', function () {
       gsap.to(overlay, { display: 'block',opacity: 0, duration: 0.3 });

    });
});
$(document).ready(function() {
    $('.link-m').on('click', function() {
        $('.link-m').removeClass('active').css('color', '#3333').css('border-bottom', 'none');

        $(this).addClass('active').css('color', '#034EA2').css('border-bottom', '2.5px solid #034EA2');
      
    });
});
 $(document).ready(function(){
        $('.pr-silder_contain').slick({
            infinite: true,
  slidesToShow: 4,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000
        });
    });
document.addEventListener("DOMContentLoaded", function (){
    // Lấy tất cả các phần tử select
    var selects = document.querySelectorAll('select');
    var currentIndex = 0;

    // Khóa tất cả các phần tử select sau phần tử đầu tiên
    for (var i = 1; i < selects.length; i++) {
        selects[i].disabled = true;
    }

    // Thêm sự kiện onchange cho mỗi phần tử select
    for (var i = 0; i < selects.length - 1; i++) {
        selects[i].addEventListener('change', function(e) {
            
            if (this === selects[currentIndex]) {
                currentIndex++;
                if (currentIndex < selects.length) {
                    selects[currentIndex].disabled = false;
                }
            }
        });
    }
});






