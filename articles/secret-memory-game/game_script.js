document.addEventListener('DOMContentLoaded', function() {
  const generateBtn = document.getElementById('generateBtn');
  const resultElement = document.getElementById('result');

  generateBtn.addEventListener('click', function() {
      const lengthInput = document.getElementById('lengthInput');
      const length = parseInt(lengthInput.value, 10);

      if (isNaN(length) || length <= 0) {
          resultElement.textContent = 'Please enter a valid number greater than 0.';
      } else {
          resultElement.textContent = generateRandomString(length);
      }
  });

  function generateRandomString(length) {
      const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      let result = '';
      for (let i = 0; i < length; i++) {
          const randomIndex = Math.floor(Math.random() * characters.length);
          result += characters[randomIndex];
      }
      return result;
  }
});
