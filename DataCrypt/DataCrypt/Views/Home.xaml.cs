using System.Windows;

namespace DataCrypt.Views
{
    /// <summary>
    /// Interaction logic for Home.xaml
    /// </summary>
    public partial class Home : Window
    {
        string username = "";
        public Home(string username)
        {
            this.username = username;
            InitializeComponent();
        }

        private void Encryption_Button(object sender, RoutedEventArgs e)
        {
            var newForm = new EncryptionPage(username);
            newForm.Show();
            this.Close();
        }

        private void Decryption_Button(object sender, RoutedEventArgs e)
        {
            var newForm = new DecryptionPage(username);
            newForm.Show();
            this.Close();
        }

        private void onClick_logOut(object sender, RoutedEventArgs e)
        {
            var newForm = new Login();
            newForm.Show();
            this.Close();
        }
    }
}
