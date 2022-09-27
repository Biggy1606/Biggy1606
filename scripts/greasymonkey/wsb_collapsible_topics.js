// ==UserScript==
// @name        🎓Moodle🎓 - collapse all topics
// @namespace   Violentmonkey Scripts
// @match       https://moodle2.e-wsb.pl/course/view.php?*
// @grant       none
// @version     1.0
// @author      Biggy1606
// @description 06/03/2022, 13:17:06
// ==/UserScript==
function changeAllCollapsible() {
  let collapsibleArrows = document.querySelectorAll(
    "i.fa.fa-angle-up.toggle-section"
  );
  for (let i = 0; i < collapsibleArrows.length; i++) {
    collapsibleArrows[i].click();
  }
}

function changeAllCollapsed() {
  let collapsibleArrows = document.querySelectorAll(
    "i.fa.fa-angle-up.toggle-section.down"
  );
  for (let i = 0; i < collapsibleArrows.length; i++) {
    collapsibleArrows[i].click();
  }
}
let buttonPlace = document.querySelector("section#region-main"); // Target place for button
function createButton(name, onclickFunction, id) {
  // Create button
  let button = document.createElement("button");
  button.innerHTML = name;
  button.id = id;
  button.className = "btn btn-primary";
  button.style["marginLeft"] = "10px";
  // Place button on page
  buttonPlace.innerHTML = button.outerHTML + buttonPlace.innerHTML;
  console.log(button, document.getElementById(id));
}

createButton("⬇Expand Collapsed", changeAllCollapsed, "expandAllbuttonEvent");
createButton(
  "Invert Collapsible Statuses",
  changeAllCollapsible,
  "changeAllbuttonEvent"
);

// Register event onclick (registering not work in createButton function)
document
  .getElementById("expandAllbuttonEvent")
  .addEventListener("click", changeAllCollapsed, false);
document
  .getElementById("changeAllbuttonEvent")
  .addEventListener("click", changeAllCollapsible, false);
