
const categorySearchButton = () => {
  console.log(this);
  const categoryButtons = Array.from(document.querySelectorAll('button.category'));
  categoryButtons.forEach(category => {
     if (category.dataset.category === 'Meat') {
         console.log('Winner you found meat');
     } else {
         console.log('Not found the correct category');
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
