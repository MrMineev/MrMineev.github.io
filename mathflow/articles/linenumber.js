function complete(number, l) {
  let a = number.toString();
  for (var i = 0; i < l - a.length; i++) {
    a = " " + a;
  } 
  return a + " ";
}

window.addEventListener("DOMContentLoaded", function() {
  var codeBlocks = document.getElementsByTagName("code");

  for (var i = 0; i < codeBlocks.length; i++) {
    var codeBlock = codeBlocks[i];
    var lines = codeBlock.innerHTML.split("\n");
    var lineNumbers = '';

    for (var j = 0; j < lines.length; j++) {
      var lineNumber = j + 1;
      var lineContent = lines[j];
      lineNumbers += '<span class="line-number">' + complete(lineNumber, 4) + '</span>' + lineContent + '\n';
    }

    codeBlock.innerHTML = lineNumbers;
  }
});
