using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1
{
    internal class zgloszenie
    {
        public int Id { get; set; }
        public string NazwaUzytkownika { get; set; }
        public string Opis { get; set; }
        public string DataDodania { get; set; }
        public string PrzydzieloneDo { get; set; }
        public int Wykonane { get; set; }
        public string Kategoria { get; set; }
    }
}
