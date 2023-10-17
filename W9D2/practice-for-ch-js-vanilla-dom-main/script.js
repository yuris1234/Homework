document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);

  });


  // adding SF places as list items

  const submitForm = (val) => {
    val.preventDefault();

    const submitInput = document.getElementById('favorite-input');
    const input = submitInput.value;
    submitInput = '';

    const ul = document.getElementById('sf-places');
    const li = document.createElement('li');
    li.textContent = input;
    ul.appendChild(li);
  });
  const submitButton = document.querySelector(".favorite-submit");
  submitButton.addEventListener("click", handl)

  
  // adding new photos

  
});