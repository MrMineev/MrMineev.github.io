const addTextboxButton = document.getElementById("add-textbox");
const addSectionButton = document.getElementById("add-section");
const addLatexButton = document.getElementById("add-latex");

const textBoxContainer = document.getElementById("textboxes");

function addSection() {
  const newTextBox = document.createElement("input");
  newTextBox.setAttribute("class", "section-textbox");
  const removeButton = document.createElement("button");
  removeButton.classList.add("remove-textbox");
  removeButton.innerText = "Remove";
  removeButton.addEventListener("click", () => {
    textBoxContainer.removeChild(removeButton.parentNode);
  });
  const container = document.createElement("div");
  container.appendChild(newTextBox);
  container.appendChild(removeButton);
  textBoxContainer.appendChild(container);
}

function addTextBox() {
  const newTextBox = document.createElement("textarea");
  newTextBox.setAttribute("class", "text-textbox");
  newTextBox.rows = 4;
  const removeButton = document.createElement("button");
  removeButton.classList.add("remove-textbox");
  removeButton.innerText = "Remove";
  removeButton.addEventListener("click", () => {
    textBoxContainer.removeChild(removeButton.parentNode);
  });
  const container = document.createElement("div");
  container.appendChild(newTextBox);
  container.appendChild(removeButton);
  textBoxContainer.appendChild(container);
}

function addLatex() {
  const newTextBox = document.createElement("textarea");
  newTextBox.setAttribute("class", "latex-textbox");
  newTextBox.rows = 4;

  const removeButton = document.createElement("button");
  removeButton.classList.add("remove-textbox");
  removeButton.innerText = "Remove";
  removeButton.addEventListener("click", () => {
    textBoxContainer.removeChild(removeButton.parentNode);
  });
  const container = document.createElement("div");
  container.appendChild(newTextBox);
  container.appendChild(removeButton);
  textBoxContainer.appendChild(container);
}

addTextboxButton.addEventListener("click", addTextBox);
addSectionButton.addEventListener("click", addSection);
addLatexButton.addEventListener("click", addLatex);



