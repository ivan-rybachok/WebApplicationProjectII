using System;
using Microsoft.AspNetCore.Mvc;
using WebApplicationProjectII.Models;
using Microsoft.AspNetCore.Http;

namespace WebApplicationProjectII.Controllers {

    public class HomeController : Controller {

        private ColumnManager columnManager;
        public HomeController(ColumnManager myManager) {
            columnManager = myManager;
        }

        public IActionResult Index() {
            return View(columnManager);
        }

    }
}
