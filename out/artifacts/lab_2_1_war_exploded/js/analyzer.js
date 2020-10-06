"use strict";

let svg = document.querySelector("svg");

document.addEventListener("DOMContentLoaded", () => {
    svg.addEventListener("click", (event) => {
        if (validateR()) {
            let position = getMousePosition(svg, event);
            let x_pos = position.x;
            let y_pos = position.y;
            setPointer(x_pos, y_pos);
            let k = 200 / r; //отношение радиуса и плоскости
            x = ((x_pos-400) / k).toFixed(1);
            y = (-(y_pos-300) / k).toFixed(1);
            console.log("1. Координаты: " + x + " " + y);
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