const slider = document.querySelector(".image-comparison .slider");
const beforeImage = document.querySelector(".image-comparison .before-image");
const sliderLine = document.querySelector(".image-comparison .slider-line");
const sliderIcon = document.querySelector(".image-comparison .slider-icon");
const beforeLabel = document.querySelector(".image-comparison .before-label");
const afterLabel = document.querySelector(".image-comparison .after-label");

const handleResize = () => {
  const iconSize = Math.min(window.innerWidth * 0.14, 140);
  const labelSize = Math.min(window.innerWidth * 0.07, 70);
  sliderIcon.style.width = `${iconSize + 2}px`; // +2 to make the icon appear 100%
  sliderIcon.style.height = `${iconSize}px`;
  beforeLabel.style.fontSize = `${labelSize}px`;
  afterLabel.style.fontSize = `${labelSize}px`;
};

const handleInput = (e) => {
  updateSlider(e.target.value);
  clearTransitions();
  toggleLabels();
};

const handleChange = (e) => {
  const value = e.target.value < 50 ? 7 : 93;
  updateSlider(value);
  applyTransitions();
};

const updateSlider = (value) => {
  const sliderValue = value + "%";
  beforeImage.style.width = sliderValue;
  sliderLine.style.left = sliderValue;
  sliderIcon.style.left = sliderValue;
};

const clearTransitions = () => {
  sliderLine.style.transition = "";
  sliderIcon.style.transition = "";
  beforeImage.style.transition = "";
};

const applyTransitions = () => {
  sliderLine.style.transition = "left 0.5s ease";
  sliderIcon.style.transition = "left 0.5s ease";
  beforeImage.style.transition = "width 0.5s ease";
};

const toggleLabels = () => {
  const sliderValue = parseFloat(slider.value);
  beforeLabel.classList.toggle("visible", sliderValue < 50);
  afterLabel.classList.toggle("visible", sliderValue >= 50);
};

// Initial setup
handleResize();
afterLabel.classList.add("visible");

// Event listeners
window.addEventListener('resize', handleResize);
slider.addEventListener("input", handleInput);
slider.addEventListener("change", handleChange);
