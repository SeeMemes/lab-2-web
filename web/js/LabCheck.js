let x, y, r;

/*document.getElementById("coordinates-submit").onsubmit = function () {
    if (validateX() && validateY() && validateR()) sendRequest("button");
};*/

function check(e) {
    e.preventDefault();

    if (!validateX()) {
        alert("Выберите X");
        return validateX();
    }

    console.log(y);
    if (validateY()) {
        alert("Введите Y от -3 до 5 включительно");
        return !validateY();
    }

    if (!validateR()) {
        alert("Выберите R");
        return validateR;
    }

    sendRequest("button");

    return true;
}

function validateX () {
    let spreadArray = getSpreadArray();
    let chk = false;
    spreadArray.forEach(btn => {
        if (!chk && btn.disabled && btn.name === "x") {
            x=btn.value;
            chk = true;
        }
    });
    return chk;
}

function validateY() {
    y = document.getElementById("Y-value").value;
    return  y < -3 || y > 5 || isNaN(y) || y === "";
}



function validateR() {
    let spreadArray = getSpreadArray();
    let chk = false;
    spreadArray.forEach(btn => {
        if (!chk && btn.disabled && btn.name === "r") {
            chk = true;
            r = btn.value;
        }
    });
    return chk;
}

function getSpreadArray() {
    let spreadArray = [...document.getElementsByTagName('button')];
    return spreadArray;
}

function sendRequest(key) {
    let spreadArray = getSpreadArray();

    const keys = ["button", "svg"];
    if (keys.includes(key)) {
        console.log("Координаты: " + x + " " + y + " " + r);
        let request = "x=" + encodeURIComponent(x) + "&y=" + encodeURIComponent(y) + "&r=" + encodeURIComponent(r) +
            "&key=" + encodeURIComponent(key);
        fetch("app", {
            method: "POST",
            headers: {"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"},
            body: request
        }).then(response => response.text()).then(function (serverAnswer) {
            document.getElementById("outputContainer").innerHTML = serverAnswer;
            setPointer(x_pos*(600/width), y_pos*(600/height));
        }).catch(err => createNotification(`Ошибка HTTP ${err.textContent}. Повторите попытку позже.`));
    } else throw new Error("Не указан ключ отправки");
}



function createNotification(message) {
    let outputContainer = document.getElementById("outputContainer");
    if (outputContainer.contains(document.querySelector(".notification"))) {
        let stub = document.querySelector(".notification");
        stub.textContent = message;
        stub.classList.replace("outputStub", "errorStub");
    } else {
        let notificationTableRow = document.createElement("h4");
        notificationTableRow.innerHTML = "<span class='notification errorStub'></span>";
        outputContainer.prepend(notificationTableRow);
        let span = document.querySelector(".notification");
        span.textContent = message;
    }
}