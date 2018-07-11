const anime = require('/usr/local/lib/node_modules/npm/node_modules/animejs/');

var blue = anime({
  targets: '.blue',
  translateY: 200,
  translateX: 100,
  loop: true,
  direction: 'alternate',
  duration: 3000,
  autoplay: true
});

var redBlue = anime({
  targets: '.red, .blue',
  translateY: 200,
  autoplay: false
});

var even = anime({
  targets: '.square:nth-child(even)',
  translateY: 200,
  autoplay: false
});

var notRed = anime({
  targets: '.square:not(.red)',
  translateY: 200,
  autoplay: false
});

document.querySelector('.play-blue').onclick = blue.restart;

document.querySelector('.play-red-blue').onclick = redBlue.restart;

document.querySelector('.play-even').onclick = even.restart;

document.querySelector('.play-not-red').onclick = notRed.restart;