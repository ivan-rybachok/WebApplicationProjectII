using System;
using Microsoft.AspNetCore.Mvc;
using  WebApplicationProjectII.Models;

namespace WebApplicationProjectII.Controllers {

    public class LoginController : Controller {

        public IActionResult Index() {
            return View();
        }

        public IActionResult Submit(string myUsername, string myPassword) {
            WebLogin webLogin = new WebLogin(Connection.CONNECTION_STRING, HttpContext);
            webLogin.ussername = myUsername;
            webLogin.password = myPassword;
            // webLogin.myLogin(myPassword);
            // attempt to login!
            if (webLogin.unlock()) {
                return RedirectToAction("Index", "Admin");
            }else {
                ViewData["feedback"] = "Inccorect login, Please try again...";
            }
            return View("Index");
        }

         public IActionResult Logout() {

            WebLogin webLogin = new WebLogin(Connection.CONNECTION_STRING, HttpContext);

            if (webLogin.unlock()) {
                return RedirectToAction("Index", "Admin");
            }else {
                return RedirectToAction("Index", "Home");
            }

        }


    }
}
