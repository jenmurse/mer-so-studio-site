// Custom cursor — follows mouse, grows on link hover.
(() => {
  const cursor = document.getElementById('cursor');
  if (!cursor) return;

  let x = window.innerWidth / 2;
  let y = window.innerHeight / 2;
  let raf = null;

  const move = (e) => {
    x = e.clientX;
    y = e.clientY;
    if (raf) return;
    raf = requestAnimationFrame(() => {
      cursor.style.left = x + 'px';
      cursor.style.top = y + 'px';
      raf = null;
    });
  };

  window.addEventListener('mousemove', move);

  const interactiveSel = 'a, button, [role="button"]';
  document.addEventListener('mouseover', (e) => {
    if (e.target.closest(interactiveSel)) cursor.classList.add('on-link');
  });
  document.addEventListener('mouseout', (e) => {
    if (e.target.closest(interactiveSel)) cursor.classList.remove('on-link');
  });
})();
