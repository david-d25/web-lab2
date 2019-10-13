(function () {
  let canvas = document.getElementById("graph-canvas");

  let errMsgPanel = document.getElementById('err-msg');
  let submitButton = document.getElementById('submit-btn');
  let graphPicker = new GraphPicker(canvas);
  graphPicker.setScale(2);

  function setErrorMsg(msg) {
    errMsgPanel.innerText = msg;
    if (msg != null)
      errMsgPanel.classList.remove("hidden");
    else
      errMsgPanel.classList.add("hidden");
  }

  function onSubmit(event) {
    if (!(checkX() && checkY() && checkR()))
      event.preventDefault();
  }

  function checkX() {
    return false;
  }

  function checkY() {
    return false;
  }

  function checkR() {
    return false;
  }
})();