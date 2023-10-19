window.addEventListener("scroll", function(){
    var navbar = this.document.querySelector("cont");
    navbar.classList.toggle("cont", this.window.scrollY > 0);
});
