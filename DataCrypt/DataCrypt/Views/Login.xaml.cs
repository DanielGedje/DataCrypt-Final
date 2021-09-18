using System.Windows;
using DataCrypt.Code;

namespace DataCrypt.Views
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        FirebaseManager firebase = new FirebaseManager();

        public Login()
        {
            InitializeComponent();
        }

        private async void Login_Button(object sender, RoutedEventArgs e)
        {
            
            if(await firebase.login(fullName.Text, password.Text))
            {
                var newForm = new Home(fullName.Text);
                newForm.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Wrong User Name Or Password, please try again");
            }
        }

        private void onClick_SignUp(object sender, RoutedEventArgs e)
        {
            var newForm = new SignUp();
            newForm.Show();
            this.Close();
        }
    }
}
