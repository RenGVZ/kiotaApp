import Swipe from "swipejs";

const likeDislike = (index, elem, dir) => {
  if (dir === 1){
    document.querySelector(".feed-yes-btn").click();
  }
  else {
    document.querySelector(".feed-no-btn").click();
  }
}

const initSwipe = () => {
  var element = document.getElementById('mySwipe');
  window.mySwipe = new Swipe(element, {
    startSlide: 0,
    auto: 0,
    draggable: true,
    autoRestart: false,
    continuous: true,
    disableScroll: false,
    stopPropagation: true,
    callback: likeDislike,
    transitionEnd: function(index, element) {}
  });
}

export { initSwipe };