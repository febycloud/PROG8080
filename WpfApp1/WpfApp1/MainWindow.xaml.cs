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

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            TheList.Items.Add("itemA");
        }
        string msg = "nothing";
        private void TheList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            switch (TheList.SelectedIndex)
            {
                case 0:
                    msg = "1 slecect";
                    break;
                case 1:
                    msg = "2 slecect";
                    break;
                case 2:
                    msg = "3 slecect";
                    break;
            }
            MessageBox.Show(msg);
        }

        private void Window_Loaded(object sender,RoutedEventArgs e)
        {
            TheList.Items.Add("Hi nihao");
        }

        

        private void Click_Click(object sender, RoutedEventArgs e)
        {
            switch (TheList.SelectedIndex)
            {
                case 0:
                    msg = "1 slecect";
                    break;
                case 1:
                    msg = "2 slecect";
                    break;
                case 2:
                    msg = "3 slecect";
                    break;
            }
            if (Viewmodel.Doyoucheck)
            {
                msg += " you checked ";
            }
            MessageBox.Show(msg);
        }

        
    }
}
