function startAutoLogout() {
    // setup timeout that will occur when session has expired (20 minutes = 60000 * 20 milliseconds)
    window.setTimeout(() => document.location = "/", 60000 * 20);
    // setup timeout that will occur when session about to expire to warn user
    window.setTimeout(() => document.getElementById("lblExpire").innerHTML = "WARNING : Session is about to expire! You have 2 minutes remaining", 60000 * 18);
}