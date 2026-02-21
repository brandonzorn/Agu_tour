(function() {
  const landing = document.getElementById('landing');
  const container = document.getElementById('container');
  const btnStart = document.getElementById('startTour');
  const cd = document.getElementById('countdown');
  const autoHint = document.getElementById('autoHint');

  container.classList.add('tour-hidden');

  let started = false;

  function startTour() {
    if (started) return;
    started = true;

    container.classList.remove('tour-hidden');
    container.classList.add('tour-visible');
    landing.classList.add('fade-out');

    setTimeout(() => startKrpanoTour(), 60);

    setTimeout(() => {
      landing?.parentNode?.removeChild(landing);
    }, 460);
  }

  btnStart.addEventListener('click', () => startTour());
})();