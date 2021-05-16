
const findIngredientDiv = (categoryBtnName) => {
  const ingredientList = Array.from(document.querySelectorAll('div.ingredient'));
  ingredientList.map(ingredient => {
    if (ingredient.dataset.category !== categoryBtnName) {
      ingredient.style.display = 'none';
    };
  });
};

const categorySearchButton = (event) => {
  const categoryBtnName = event.target.dataset.category;
  const categoryButtons = Array.from(document.querySelectorAll('button.category'));
  categoryButtons.forEach(category => {
     if (category.dataset.category === categoryBtnName) {
        findIngredientDiv(categoryBtnName);
        // console.log(category.style);
        // console.log(`Winner you found ${categoryBtnName}`);
     };
  });
};

const categoryFilter = () => {
  const buttonSpan = document.querySelector('span.category-search');
  buttonSpan.querySelectorAll('button.category').forEach(button => {
    button.addEventListener('click', categorySearchButton);
  });
};

export { categoryFilter };
