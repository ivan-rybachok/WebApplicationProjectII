using System;
using System.ComponentModel.DataAnnotations;

namespace WebApplicationProjectII.Models {

    public class Categories {
        
        [Key]
        public int categoryID {get; set;}
        [Required]
        [MaxLength(100)]
        [RegularExpression(@"^(?!\s*$).+", ErrorMessage="Please fill in the textField")]
        public string categoryName {get; set;}
        
    }

}