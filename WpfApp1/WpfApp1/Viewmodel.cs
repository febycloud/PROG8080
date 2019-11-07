using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1
{
    class Viewmodel
    {
        private bool doyoucheck;
        public bool Doyoucheck
        {
            get {
                return doyoucheck;
            }
            set {
                doyoucheck = value;
            }
        }

    }
}
