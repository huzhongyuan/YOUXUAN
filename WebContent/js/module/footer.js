//jscs:disable
(function () {
//jscs:enable
const footerTpl = function () {
  /*

  */
};

const footer = footerTpl.toString().replace(/^[^\/]+\/\*!?/, '').replace(/\*\/[^\/]+$/, '') +
      '</div></body></html>';
document.write(footer);
})();
