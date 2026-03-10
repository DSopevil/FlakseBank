function goToMain() {
  console.log("goToMain called");

  const landing = document.getElementById("landing");
  const main = document.getElementById("main");

  console.log("landing element:", landing);
  console.log("main element:", main);

  if (landing) {
    console.log("hiding landing");
    landing.style.display = "none";
  }

  if (main) {
    console.log("showing main");
    main.style.display = "flex";
  }
}

// Allow clicking the landing image to enter main
document.addEventListener("DOMContentLoaded", () => {
  const landingImage = document.querySelector(".landing-image");
  if (!landingImage) return;

  landingImage.style.cursor = "pointer";
  landingImage.addEventListener("click", goToMain);
});