const startsAt = document.querySelector("#booking_starts_at");
const endsAt = document.querySelector("#booking_ends_at");
const totalPrice = document.querySelector(".total-price");
const totalPriceComputation = document.querySelector(".total-price-computation");
const totalPriceResult = document.querySelector(".total-price-result");
const pricePerDay = parseInt(document.querySelector(".price-per-day").innerText);

if (startsAt) {
  function numberOfDays() {
    if (startsAt.value !== "" && endsAt.value !== "") {
      totalPrice.classList.remove("hidden")
      const starts = new Date(startsAt.value);
      const ends = new Date(endsAt.value);
      const numberOfDays = ((ends - starts) / 1000 / 60 / 60 / 24) + 1;
      if (starts < ends) {
        totalPriceComputation.innerText = `${numberOfDays} x ${pricePerDay}€`;
        totalPriceResult.innerText = `${numberOfDays * pricePerDay}€`;
      } else {
        totalPrice.classList.add("hidden");
      }
    }
  };

  startsAt.addEventListener("change", numberOfDays);
  endsAt.addEventListener("change", numberOfDays);
}
