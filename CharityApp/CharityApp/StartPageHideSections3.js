var styleTag = document.createElement("style");
var styleTagTwo = document.createElement("style");
var styleTagThree = document.createElement("style");
styleTag.textContent = 'header, footer, .secondary-container  {display:none;}';
styleTagTwo.textContent = '.internal .masthead {width: 1400px;}';
styleTagThree.textContent = '.wrap {width: 700px;}';
document.documentElement.appendChild(styleTag);
document.documentElement.appendChild(styleTagTwo);
document.documentElement.appendChild(styleTagThree);
