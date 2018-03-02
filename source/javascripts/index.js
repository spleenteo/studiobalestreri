import modernizr from 'modernizr';

var el = document.querySelector('.js-side-bar-toggler');
console.log(el.parentElement);

el.onclick = function() {
  console.log("clic");
  el.parentElement.classList.toggle('is-active');
}
