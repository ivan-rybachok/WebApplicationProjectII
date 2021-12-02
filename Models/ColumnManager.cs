using System;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace WebApplicationProjectII.Models {

    public class ColumnManager : DbContext {

        // -------------------------------------------------- get/sets for both of the models
        private DbSet<Column> tblLinks { get; set;}
        private DbSet<Categories> tblCategories { get; set;}
        
        public List<Column> data{
            get {
                return tblLinks.OrderBy(l => l.linkID).ToList();
            }
        }

        public List<Categories> columns {
            get {
                return tblCategories.OrderBy(c => c.categoryID).ToList();
        
            }
        }

        public List<Column> GetData(int categoryID) {

            return tblLinks.Where(c => c.categoryID == (categoryID) && c.pinned == false).OrderBy(a => a.linkName).ToList();

        }

        public List<Column> GetDataPinned(int categoryID) {

            return tblLinks.Where(c => c.categoryID == (categoryID) && c.pinned == true).OrderBy(a => a.linkName).ToList();

        }

        public Column GetDataById(int linkID) {

            return tblLinks.Where(l => l.linkID == (linkID)).ToList()[0];
        }

        public SelectList getSelectList() {
            // get the list of the data in the table
            List<Categories> listData = tblCategories.OrderBy(s => s.categoryID).ToList();
            return new SelectList(listData, "categoryID", "categoryName");
        }

        // -------------------------------------------------- private methods
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) {
            optionsBuilder.UseMySql(Connection.CONNECTION_STRING, new MySqlServerVersion(new Version(8, 0, 11)));
        }

    }

}