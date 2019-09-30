using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace week4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Viewmodel v = new Viewmodel();
        public class coin
        {
            public const int penny = 1;
            public const int nikel = 5;
            public const int dime = 10;
            public const int quarter = 25;
            public const int dollar = 100;

        }
        
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Dollar_Click(object sender, RoutedEventArgs e)
        {
            
            
            try
            {
                uint PenNum; uint.TryParse(v.getPenny,out PenNum);
                uint NikNum; uint.TryParse(v.getNikel, out NikNum);
                uint DimNum; uint.TryParse(v.getDime, out DimNum);
                uint QutNum; uint.TryParse(v.getQuarter,out QutNum);
                uint Total = PenNum * coin.penny + NikNum * coin.nikel + DimNum * coin.dime + QutNum * coin.quarter;

                if (coin.dollar >Total)
                {
                    MessageBox.Show("all coins over a dollar");
                }
                else if (coin.dollar == Total)
                {
                    MessageBox.Show("all coins equal a dollar");
                }
                else { MessageBox.Show("all coins less than a dollar"); }
            }
            catch
            {

            }
        }
    }
}
