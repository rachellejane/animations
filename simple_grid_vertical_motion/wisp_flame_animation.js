const anime = require('/usr/local/lib/node_modules/npm/node_modules/animejs/');

var white = anime({
  targets: '.white',
  translateY: 300,
  loop: true,
  duration: 10000,
  direction: 'alternate',
  easing: 'linear',
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
