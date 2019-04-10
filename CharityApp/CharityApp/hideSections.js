var styleTag = document.createElement("style");
var styleTagTwo = document.createElement("style");
var styleTagThree = document.createElement("style");
styleTag.textContent = 'header, .secondary-container, footer, .internal .primary-container p {display:none;}';
styleTagTwo.textContent = '.internal .primary-container {font-size: 30px;}';
styleTagThree.textContent = '.internal .primary-container {width: 1500px;}';
document.documentElement.appendChild(styleTag);
document.documentElement.appendChild(styleTagTwo);
document.documentElement.appendChild(styleTagThree);
//<meta name = "viewport" content = "width=device-width, height=device-heigth, initial-scale=1.0, user-scalable=no; user-scalable=0;"/>

//document.getElementById(".primary-container").style.width = "100px"!;

//Won't allow things like copy or select all (Not working yet)
//let disableSelectionScriptString = "document.documentElement.style.webkitUserSelect='none';"
//let disableCalloutScriptString = "document.documentElement.style.webkitTouchCallout='none';"
