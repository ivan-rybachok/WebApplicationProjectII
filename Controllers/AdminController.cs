using System;
using Microsoft.AspNetCore.Mvc;
using WebApplicationProjectII.Models;
using Microsoft.AspNetCore.Http;

namespace WebApplicationProjectII.Controllers {

    public class AdminController : Controller {

        private ColumnManager columnManager;
        public AdminController(ColumnManager myManager) {
            columnManager = myManager;
    
        }

        public IActionResult Index() {
            if(HttpContext.Session.GetString("auth") != "true") {
                return RedirectToAction("Index", "Login");
            }
            
            return View(columnManager);
        }

        public IActionResult EditCategory(int categoryID) {
            if(HttpContext.Session.GetString("auth") != "true") {
                return RedirectToAction("Index", "Login");
            }

            // id is passed in, it finds the category based on the id and returns it
            Categories categories = columnManager.columns.Find(x => x.categoryID == categoryID);

            return View(categories);
        }
        [HttpPost]
        public IActionResult EditCategorySubmit(Categories categories) {
            if (!ModelState.IsValid) return RedirectToAction("index");
            
            // when it is passed in it updatees the category.
            columnManager.Update(categories);
           
            columnManager.SaveChanges();

            return RedirectToAction("index");
        }

        public IActionResult Add(int categoryID, string categoryName) {
            if(HttpContext.Session.GetString("auth") != "true") {
                return RedirectToAction("Index", "Login");
            }
            // receives categoryID and categoryName creates an new object with column
            Column column = new Column();
            
            // viewdata is used since you cant have two models inside the add so it needs to have both column and categories, it finds the category ID inside the columnManager and assigns it to the categoryName so it can be used in the view
            ViewData["categoryName"] = columnManager.columns.Find(x => x.categoryID == categoryID);

            column.categoryID = categoryID;

            return View(column);
        }

        [HttpPost]
        // then it is passed it to addsubmit and checkbox is also passed in to checkif the links got pinned or not to add the to the database pinned or not so if the checbox is true it goes inside the if statement
        // and then is returned with true so when is added to the database it is true.
        public IActionResult AddSubmit(Column column, string checkbox) {
            if (!ModelState.IsValid) return RedirectToAction("index");
            
            if(checkbox == "true") {

                column.pinned = true;
            }
            else {
                column.pinned = false;
    
            }

            columnManager.Add(column);
            columnManager.SaveChanges();
    
            return RedirectToAction("index");
        }

        public IActionResult EditLink(int linkID) {
            if(HttpContext.Session.GetString("auth") != "true") {
                return RedirectToAction("Index", "Login");
            }
            // id link is passed in finds the link with the id that was passed in and returns it
            Column link = columnManager.data.Find(x => x.linkID == linkID);

            // viewbag is used to populate the dropdown with getselect funtion
            ViewBag.selectList = columnManager.getSelectList();
           
            
            return View(link);
        }

        [HttpPost]
        public IActionResult EditLinkSubmit(Column link) {
            if (!ModelState.IsValid) return RedirectToAction("index");
                // deletes the link with the proper id
                columnManager.Update(link);
                columnManager.SaveChanges();

            return RedirectToAction("index");

        }
        
        public IActionResult DeleteLink(int linkID) {
            if(HttpContext.Session.GetString("auth") != "true") {
                return RedirectToAction("Index", "Login");
            }

            Column link = null;
            // pass the linkID to the function to find it.
            link = columnManager.GetDataById(linkID);
            // pass it in
            return View(link);
        }
        [HttpPost]
        public IActionResult DeleteLinkSubmit(Column link) {
        // if (ModelState.IsValid) return RedirectToAction("index");
            // link is removed based on the id
            columnManager.Remove(link);
            // Console.WriteLine(columnManager.Remove(link));
            columnManager.SaveChanges();
    
            return RedirectToAction("index");
        }

    }
}
