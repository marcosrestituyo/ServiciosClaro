using System;
using System.Collections.Generic;
<<<<<<< HEAD
using System.ComponentModel.DataAnnotations;
=======
>>>>>>> 956a4028e1c855a7f23811dca6cb578d144c2c59
using System.Linq;
using System.Web;

namespace ServiciosClaro.Models
{
    public class Recarga
    {
<<<<<<< HEAD
        public int Id { get; set; }

        [StringLength(100)]
        public string Lugar { get; set; }

        [Required]
        public decimal Precio { get; set; }

        [Required]
        [DataType(DataType.PhoneNumber)]
        public string Celular { get; set; }

        [Required]
        public int Cliente { get; set; }

        public int Tarea { get; set; }

        public Clientes Clientes { get; set; }
        public Tareas Tareas { get; set; }
=======
>>>>>>> 956a4028e1c855a7f23811dca6cb578d144c2c59
    }
}