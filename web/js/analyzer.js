"use strict";

let svg = document.querySelector("svg");

document.addEventListener("DOMContentLoaded", () => {
    svg.addEventListener("click", (event) => {
        if (validateR()) {
            let position = getMousePosition(svg, event);
            let width = svg.getAttribute("width");
            let height = svg.getAttribute("height")
            let x_pos = position.x;
            let y_pos = position.y;
            setPointer(x_pos*(600/width), y_pos*(600/height));
            let k = width/3 / r; //отношение радиуса и плоскости
            x = ((x_pos-width/2) / k).toFixed(1);
            y = (-(y_pos-height/2) / k).toFixed(1);
            sendRequest("svg");
        }
        else {
            alert("Выберите R");
            return validateR;
        }
    });
});

function getMousePosition(svg, event) {
    let rect = svg.getBoundingClientRect();
    return {
        x: event.clientX - rect.left,
        y: event.clientY - rect.top
    };
}

function setPointer(x, y) {
    console.log(x + " " + y);
    svg.insertAdjacentHTML("beforeend", `<circle r="5" cx="${x}" cy="${y}" fill-opacity="0.7" fill="red" stroke="firebrick"></circle>`);
}