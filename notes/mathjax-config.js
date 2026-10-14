/* MathJax config for Mathematical Notes — ports the macros from mrmineev.sty.
   Load BEFORE the MathJax tex-chtml script tag. */

window.MathJax = {
  tex: {
    macros: {
      /* common operators */
      rank: "\\operatorname{rank}",
      im: "\\operatorname{im}",
      ker: "\\operatorname{ker}",
      coker: "\\operatorname{cok}",
      lcm: "\\operatorname{lcm}",
      argmin: "\\operatorname{arg\\,min}",
      argmax: "\\operatorname{arg\\,max}",
      cis: "\\operatorname{cis}",
      Aut: "\\operatorname{Aut}",
      Spl: "\\operatorname{Spl}",
      Gal: "\\operatorname{Gal}",
      Spec: "\\operatorname{Spec}",

      /* number sets */
      RR: "\\mathbb{R}",
      ZZ: "\\mathbb{Z}",
      NN: "\\mathbb{N}",
      CC: "\\mathbb{C}",

      /* shortcuts */
      cbrt: ["\\sqrt[3]{#1}", 1],
      floor: ["\\left\\lfloor #1 \\right\\rfloor", 1],
      ceiling: ["\\left\\lceil #1 \\right\\rceil", 1],
      ol: "\\overline",
      ul: "\\underline",
      wt: "\\widetilde",
      wh: "\\widehat",
      eps: "\\varepsilon",
      defeq: "\\overset{\\mathrm{def}}{=}",
      half: "\\tfrac{1}{2}"
    }
  }
};
