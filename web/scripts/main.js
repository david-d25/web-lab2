(function () {
  const ACCEPTED_RS = [1, 1.5, 2, 2.5, 3];
  const MIN_X = -5;
  const MAX_X = 3;

  let canvas = document.getElementById("graph-canvas");

  let rInput = document.getElementById("r");
  let ySelect = document.getElementById("y");
  let yInput = document.querySelector("input[name='y']");
  let xInput = document.getElementById("x");

  let errMsgPanel = document.getElementById('err-msg');
  let submitButton = document.getElementById('submit-btn');
  let graphPicker = new GraphPicker(canvas);

  let rButtons = document.querySelectorAll("button[data-setter='r']");
  for (let i = 0; i < rButtons.length; i++)
    rButtons[i].addEventListener("click", onRButtonClicked);

  ySelect.addEventListener("change", onYChanged);
  xInput.addEventListener("input", onXChanged);
  submitButton.addEventListener("click", onSubmit);
  graphPicker.setListener(onGraphClicked);ч

  function setErrorMsg(msg) {
    errMsgPanel.innerText = msg;
    if (msg != null)
      errMsgPanel.classList.remove("hidden");
    else
      errMsgPanel.classList.add("hidden");
    return false;
  }

  function onSubmit(event) {
    if (!(checkX() && checkY() && checkR()))
      event.preventDefault();
  }

  function onGraphClicked(x, y) {
    if (x == null || y == null)
      return setErrorMsg("Выберите R, чтобы выбрать точку на графике");

    xInput.value = x;
    yInput.value = y;
    submitButton.click();
  }

  function onRButtonClicked(e) {
    setR(e.target.getAttribute("data-value"));
    let selected = document.querySelector("button[data-setter='r'][state-selected]");
    if (selected)
      selected.removeAttribute("state-selected");
    e.target.setAttribute("state-selected", "");
  }

  function onYChanged() {
    graphPicker.setY(+ySelect.value);
    yInput.value = ySelect.value;
  }
  
  function onXChanged() {
    let text = xInput.value;
    if (!isNaN(text))
      graphPicker.setX(+text);
  }

  function setR(r) {
    if (ACCEPTED_RS.indexOf(+r) === -1)
      return setErrorMsg("Недопустимое значение R");
    rInput.value = r;
    graphPicker.setScale(r);
    setErrorMsg(null);
  }

  function checkX() {
    let value = xInput.value.trim();
    if (value.length === 0)
      return setErrorMsg("Следует ввести X");
    if (isNaN(value))
      return setErrorMsg("X должен быть числом");
    if (value.length > 16)
      return setErrorMsg("X должен содержать не более 16 символов");
    let number = +value;
    if (number <= MIN_X || number >= MAX_X)
      return setErrorMsg(`X должен быть больше ${MIN_X} и меньше ${MAX_X}`);
    return true;
  }

  function checkY() {
    let value = yInput.value.trim();
    if (value.length === 0)
      return setErrorMsg("Надо выбрать Y");
    if (isNaN(value))
      return setErrorMsg("HACKING ATTEMPT");
    return true;
  }

  function checkR() {
    let value = rInput.value.trim();
    if (value.length === 0)
      return setErrorMsg("Выберите R");
    if (isNaN(value))
      return setErrorMsg("HACKING ATTEMPT");
    return true;
  }
})();