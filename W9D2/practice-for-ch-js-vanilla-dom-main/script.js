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

    const submitInput = document.getElementById('.favorite-input');
    const input = submitInput.value;
    submitInput = '';

    const ul = document.getElementById('sf-places');
    const li = document.createElement('li');
    li.textContent = input;
    ul.appendChild(li);
  };
  const submitButton = document.querySelector(".favorite-submit");
  submitButton.addEventListener("click", submitForm);

  
  // adding new photos
  const showPhotoForm = (val) => {
    let photoForm = document.querySelector('.photo-form-container');
    if (photoForm.className = ".photo-form-container") {
      photoForm.className = "photo-form-container hidden";
    } else {
      photoForm.className = "photo-form-container";
    }
  }
  const photoFormButton = document.querySelector('.photo-show-button');
  photoFormButton.addEventListener("click", showPhotoForm);

  const handlePhotoSubmit = (val) => {
    val.preventDefault();

    const photoUrlInput = document.querySelector('.photo-url-input');
    const photoUrl = photoUrlInput.value;
    const img = document.createElement('img');
    img.src = photoUrl;

    const list = document.getElementById('.dog-photos');
    const li = document.createElement('li');
    li.appendChild(img);
    list.appendChild(li);
  }
  const photoSubmit = document.querySelector('.photo-url-submit');
  photoSubmit.addEventListener('click', handlePhotoSubmit);


  
});