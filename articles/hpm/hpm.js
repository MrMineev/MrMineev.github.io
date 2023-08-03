// JavaScript to handle the menu button click and open/close the sidebar
document.querySelector(".menu-button").addEventListener("click", function () {
  document.querySelector(".sidenav").classList.toggle("open");
  this.classList.toggle("open");
});

