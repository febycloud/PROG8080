using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace week4
{
    class Viewmodel
    {
        private string getpenny;
        private string getnikel;
        private string getdime;
        private string getquarter;
        public string getPenny
        {
            get
            {
                return getpenny;
            }
            set{
                getpenny = value;
            }


        }
        public string getNikel
        {
            get
            {
                return getnikel;
            }
            set
            {
                getnikel = value;
            }
        }

        public string getDime
        {
            get
            {
                return getdime;
            }
            set
            {
                getdime = value;
            }
        }
        public string getQuarter
        {
           
            get
            {
                return getquarter;
            }
            set
            {
                getquarter = value;
            }
        }
    }
}