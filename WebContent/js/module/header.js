//jscs:disable
(function () {
//jscs:enable
//'use strict'
let cssArr = document.getElementsByTagName('script');
let { path, cssPath, headTitle, temp, cssName } = '';
for (let i in cssArr) {
  cssName = cssArr[i].getAttribute('data-css');
  headTitle = cssArr[i].getAttribute('data-title');
  if (cssName != null && cssName != undefined) {
    cssPath = '<link rel="stylesheet" href = "./css/pages/' + cssName + '.css">';
    break;
  };
};

const html = '<!DOCTYPE html>' +
'<html lang="en">' +
'<head>' +
'<meta charset="UTF-8">' +
'<title>' + headTitle + '</title>' +
'<link rel="stylesheet" href="./css/lib/bootstrap.css"/>' +
'<link rel="stylesheet" href="./css/module/header.css"/>'
+ cssPath +
'<script src="./js/lib/jquery.js"></script>' +
'<script src="./js/pages/' + cssName + '.js"></script>' +
'<script src="./js/lib/bootstrap.js"></script>' +
'</head>';
const headerTpl = () => {
    /*

    */
  };

//jscs:disable
const header = html + '<div class = "wrapper">' + headerTpl.toString().replace(/^[^\/]+\/\*!?/, '').replace(/\*\/[^\/]+$/, '');
//jscs:enable
document.write(header);
})();
