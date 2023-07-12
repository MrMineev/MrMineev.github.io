function enumerate(elements) {
  var a = [];
  for (var i = 0; i < elements.length; i++) {
    a.push([elements[i], i]);
  }
  return a;
}

function cosine_similarity(A, B) {
  var up = 0;
  for (var i = 0; i < A.length; i++) {
    up += A[i] * B[i];
  }

  var down_1 = 0;
  for (var i = 0; i < A.length; i++) {
    down_1 += A[i] * A[i];
  }

  var down_2 = 0;
  for (var i = 0; i < B.length; i++) {
    down_2 += B[i] * B[i];
  }

  var down = Math.sqrt(down_1 * down_2);

  var similarity = up / down;
  return Number(similarity.toFixed(3));
}

function generateRandomNumber() {
  // Generate a random decimal between 0 and 1
  var randomDecimal = Math.random();

  if (randomDecimal < 0.4) {
    // 30% chance of selecting 0
    return 0;
  } else {
    // 70% chance of selecting a number from 1 to 10
    return Math.floor((randomDecimal * 10) + 1);
  }
}

function get_i_user(n) {
  let main_user = [];
  var value = document.getElementsByClassName("random-table")[0].getElementsByTagName("tr");
  for (var i = 1; i < value.length; i++) {
    main_user.push(parseFloat(value[i].getElementsByTagName("td")[n].textContent));
  }
  return main_user; 
}

// Create and populate the random table
function createRandomTable() {
  var tables = document.getElementsByClassName("random-table");
  for (var table_index = 0; table_index < tables.length; table_index++) {
    var table = tables[table_index];

    var rows = table.getElementsByTagName("tr");
    for (var row_index = 1; row_index < rows.length; row_index++) {
      var cells = rows[row_index].getElementsByTagName("td");
      for (var cell_index = 0; cell_index < cells.length; cell_index++) {
        var cell = cells[cell_index];
        cell.textContent = generateRandomNumber().toString();
      }
    }
  }
}

createRandomTable();

var buttons = document.getElementsByClassName("button-table-name");
for (var i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener('click', createRandomTable);
}

function calculate_similarity() {
  let main_user = [];
  var value = document.getElementsByClassName("random-table")[0].getElementsByTagName("tr");
  for (var i = 1; i < value.length; i++) {
    main_user.push(parseFloat(value[i].getElementsByTagName("td")[0].textContent));
  }
  var table_v = document.getElementsByClassName("random-table")[0].getElementsByTagName("tr");
  for (var i = 0; i < table_v[1].getElementsByTagName("td").length; i++) {
    var this_user = [];
    for (var j = 1; j < value.length; j++) {
      this_user.push(parseFloat(value[j].getElementsByTagName("td")[i].textContent));
    }

    document.getElementById("similarities").getElementsByTagName("tr")[1 + i].
      getElementsByTagName("td")[0].textContent =
        cosine_similarity(main_user, this_user).toString();
  }
}

document.getElementsByClassName("button-calculate")[0].addEventListener('click', calculate_similarity);

// predict

function predict() {
  let main_user = [];
  var value = document.getElementsByClassName("random-table")[0].getElementsByTagName("tr");
  for (var i = 1; i < value.length; i++) {
    main_user.push(value[i].getElementsByTagName("td")[0].textContent);
  }
  var table_v = document.getElementsByClassName("random-table")[0].getElementsByTagName("tr");
  var N = document.getElementById("slider").value;

  var similarities = [];
  for (var i = 0; i < table_v[1].getElementsByTagName("td").length; i++) {
    similarities.push(parseFloat(document.getElementById("similarities").getElementsByTagName("tr")[1 + i].
        getElementsByTagName("td")[0].textContent));
  }

  var e_similarities = enumerate(similarities);
  console.log(e_similarities);
  e_similarities.sort(function(a, b) {
    return b[0] - a[0];
  });

  var best = [];
  for (var i = 0; i < N; i++) { best.push(e_similarities[i]); }

  var prediction = document.getElementById("predictions").getElementsByTagName("tr");
  for (var i = 1; i < prediction.length; i++) {
    var value = prediction[i].getElementsByTagName("td")[0];
    if (get_i_user(0)[i - 1] != 0) { value.textContent = "VIEWED"; continue; }
    var sum = 0;
    for (var j = 0; j < best.length; j++) {
      sum += get_i_user(best[j][1])[i];
    }
    sum = sum * (1 / N);

    value.textContent = Number(sum.toFixed(2));
  }
}

document.getElementsByClassName("button-predict")[0].addEventListener('click', predict);



