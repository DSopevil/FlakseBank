function goToMain() {
    console.log('goToMain called');
    const landing = document.getElementById('landing');
    const main = document.getElementById('main');
    
    console.log('landing element:', landing);
    console.log('main element:', main);
    
    if (landing) {
        console.log('adding hidden to landing');
        landing.style.display = 'none';
    }
    if (main) {
        console.log('removing hidden from main');
        main.style.display = 'flex';
    }
}

// Optional: Allow clicking the image directly on landing page
document.addEventListener('DOMContentLoaded', function() {
    const landingImage = document.querySelector('.landing-image');
    if (landingImage) {
        landingImage.style.cursor = 'pointer';
        landingImage.addEventListener('click', goToMain);
    }
});
function goToMain() {
    console.log('goToMain called');
    const landing = document.getElementById('landing');
    const main = document.getElementById('main');
    
    console.log('landing element:', landing);
    console.log('main element:', main);
    
    if (landing) {
    console.log('adding hidden to landing');
    landing.style.display = 'none';
    }
    if (main) {
    console.log('removing hidden from main');
    main.style.display = 'flex';
    }
}
function goToMain() {
    console.log('goToMain called');
    const landing = document.getElementById('landing');
    const main = document.getElementById('main');
    
    console.log('landing element:', landing);
    console.log('main element:', main);
    
    if (landing) {
        console.log('adding hidden to landing');
        landing.style.display = 'none';
    }
    if (main) {
        console.log('removing hidden from main');
        main.style.display = 'flex';
    }
}

// Optional: Allow clicking the image directly on landing page
document.addEventListener('DOMContentLoaded', function() {
    const landingImage = document.querySelector('.landing-image');
    if (landingImage) {
    landingImage.style.cursor = 'pointer';
    landingImage.addEventListener('click', goToMain);
    }
});
document.addEventListener('DOMContentLoaded', function() {
    const landingImage = document.querySelector('.landing-image');
    if (landingImage) {
        landingImage.style.cursor = 'pointer';
        landingImage.addEventListener('click', goToMain);
    }
});