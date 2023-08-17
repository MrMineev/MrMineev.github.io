function evalExpr(expression, xValue) {
  var result = eval(expression.replace(/x/g, xValue));
  return result;
}

document.getElementById("nash-calculate").onclick = function() {
  var ad = document.getElementById("ad").textContent;
  var ac = document.getElementById("ac").textContent;
  var db = document.getElementById("db").textContent;
  var cb = document.getElementById("cb").textContent;
  var cd = document.getElementById("cd").textContent;

  var N = document.getElementById("slider").value;

  for (var i = 0.0; i <= N; i++) { // ACB
    for (var j = 0.0; j <= N; j++) { // ADB
      for (var k = 0.0; k <= N; k++) { // ACDB
        var is_nash = true;

        if (i + j + k != N) { continue; }

        var first = [0.0, 0.0, 0.0];
        first[0] = evalExpr(ac, i + k) + evalExpr(cb, i);
        first[1] = evalExpr(ad, j) + evalExpr(db, j + k);
        first[2] = evalExpr(ac, i + k) + evalExpr(cd, k) + evalExpr(db, k + j);

        for (var a = 0; a < 3; a++) {
          for (var b = 0; b < 3; b++) {
            let v = [i, j, k];

            if (a == b || v[a] <= 0) { continue; }

            v[a] -= 1;
            v[b] += 1;

            var q = v[0];
            var w = v[1];
            var e = v[2];

            var res = [0.0, 0.0, 0.0];
            res[0] = evalExpr(ac, q + e) + evalExpr(cb, q);
            res[1] = evalExpr(ad, w) + evalExpr(db, w + e);
            res[2] = evalExpr(ac, q + e) + evalExpr(cd, e) + evalExpr(db, e + w);

            if (res[b] < first[a]) { is_nash = false; break; }
          }
        }

        if (is_nash) {
          console.log("FOUND!");

          document.getElementById("acb-drivers").textContent = i.toString();
          document.getElementById("acb-time").textContent = first[0].toString() + " min";

          document.getElementById("adb-drivers").textContent = j.toString();
          document.getElementById("adb-time").textContent = first[1].toString() + " min";

          document.getElementById("acdb-drivers").textContent = k.toString();
          document.getElementById("acdb-time").textContent = first[2].toString() + " min";

          return;
        }
      }
    }
  }
}


