(function highlightToday() {
  const START = new Date("2026-08-03T00:00:00");
  const now = new Date();
  const oneDay = 24 * 60 * 60 * 1000;
  const diff = Math.floor((now - START) / oneDay);
  const dayNum = diff + 1;
  if (dayNum < 1 || dayNum > 30) return;
  const card = document.querySelector(`[data-day="${dayNum}"]`);
  if (!card) return;
  card.classList.add("today");
  const tag = document.createElement("span");
  tag.className = "today-tag";
  tag.textContent = "▶ TODAY";
  card.appendChild(tag);
})();
