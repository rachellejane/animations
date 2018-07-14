const anime = require('/usr/local/lib/node_modules/npm/node_modules/animejs/');

var white = anime({
  targets: '.white',
  translateY: 300,
  loop: true,
  duration: 10000,
  direction: 'alternate',
  backgroundColor: [
    {value: '#ffffff'},
    {value: '#ffff66'},
    {value: '#ffff1a'},
  ],
  easing: 'linear',
  autoplay: true
});

