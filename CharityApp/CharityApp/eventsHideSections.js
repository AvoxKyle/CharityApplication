var styleTag = document.createElement("style");
var styleTagTwo = document.createElement("style");
var styleTagThree = document.createElement("style");
styleTag.textContent = 'header, .secondary-container, footer, .internal .primary-container p {display:none;}';
styleTagTwo.textContent = '.internal .masthead {width: 1200px;}';
styleTagThree.textContent = '.wrap {width: 800px;}';
document.documentElement.appendChild(styleTag);
document.documentElement.appendChild(styleTagTwo);
document.documentElement.appendChild(styleTagThree);
