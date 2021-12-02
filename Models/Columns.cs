using System;
using System.ComponentModel.DataAnnotations;

namespace WebApplicationProjectII.Models {

    public class Column {
        
        [Key]
        public int linkID {get; set;}
        public int categoryID {get; set;}
        public bool pinned{get; set;}
        [Required]
        [MaxLength(100)]
        [RegularExpression(@"^(?!\s*$).+", ErrorMessage="Please fill in the textField")]
        public string linkName {get; set;}
        [Required]
        [Url]
        public string permalink {get; set;}

    
    }

}