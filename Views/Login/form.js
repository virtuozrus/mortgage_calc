function calculate() {

    var xhr = new XMLHttpRequest();

    var price = document.getElementById("price").value - 0;
    var vznos = document.getElementById("vznos").value - 0;
    var period = document.getElementById("period").value - 0;

    if (
        typeof price !== "number" ||
        typeof vznos !== "number" ||
        typeof period !== "number"
    ) return false;

    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById("result_form").innerHTML = xhr.responseText;
        }

    };

    xhr.open("POST", "/Views/Login/form.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send("price=" + price + "&vznos=" + vznos + "&period=" + period);
}