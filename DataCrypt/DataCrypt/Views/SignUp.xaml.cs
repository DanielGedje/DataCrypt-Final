using System.Linq;
using System.Windows;
using DataCrypt.Code;

namespace DataCrypt.Views
{
    /// <summary>
    /// Interaction logic for SignUp1.xaml
    /// </summary>
    public partial class SignUp : Window
    {
        FirebaseManager firebase = new FirebaseManager();

        private const int PASSWORD_MINIMAL_LENGTH = 8;
        public SignUp()
        {
            InitializeComponent();
        }

        private async void SignUp_Button(object sender, RoutedEventArgs e)
        {
            if(!IsPasswordValid(password.Text))
            {
                MessageBox.Show("password not valid, please try again");
            }
            else if(password.Text != confirmPassword.Text)
            {
                MessageBox.Show("passwords dont match, please try again");
            }
            else if (await firebase.signUp(fullName.Text, password.Text))
            {
                var newForm = new Home(fullName.Text);
                newForm.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("User name already exist, please try again");
            }
        }

        private void OnClick_SignIn(object sender, RoutedEventArgs e)
        {
            var newForm = new Login();
            newForm.Show();
            this.Close();
        }

        public bool IsPasswordValid(string password)
        {

            if (password.Length < PASSWORD_MINIMAL_LENGTH)
            {
                return false;
            }
            if (!password.Any(char.IsUpper))
            {
                return false;
            }
            if (!password.Any(char.IsLower))
            {
                return false;
            }
            if (!password.Any(char.IsDigit))
            {
                return false;
            }
            if (password.Contains(" "))
            {
                return false;
            }
            string specialCh = @"%!@#$%^&*()?/>.<,:;'\|}]{[_~`+=-" + "\"";
            char[] specialChArray = specialCh.ToCharArray();
            foreach (char ch in specialChArray)
            {
                if (password.Contains(ch))
                    return true;
            }
            return false;

        }
    }
}
