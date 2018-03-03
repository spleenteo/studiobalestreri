import modernizr from 'modernizr';

var el = document.querySelector('.js-side-bar-toggler');

el.onclick = function() {
  el.parentElement.classList.toggle('is-active');
}
