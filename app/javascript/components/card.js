const cards = document.querySelectorAll(".full-card");

if (cards) {
  cards.forEach((card) => {
    card.addEventListener("mouseenter", (event) => {
      const target = event.currentTarget.querySelector(".card-info");
      target.classList.remove('card-info-small');
      target.classList.add('card-info-big');

    });
    card.addEventListener("mouseleave", (event) => {
      const target = event.currentTarget.querySelector(".card-info");
      target.classList.add('card-info-small');
      target.classList.remove('card-info-big');
    });
  });
}
