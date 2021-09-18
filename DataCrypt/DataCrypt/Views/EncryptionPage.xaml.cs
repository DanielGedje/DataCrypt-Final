using System;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using Microsoft.Win32; //For the FileDialog
using DataCrypt.Code;
using System.IO;

namespace DataCrypt.Views
{
    public partial class EncryptionPage : Window
    {
        public static Cryption cryption = new Cryption();
        int counter = 0;
        private UserData userData = new UserData();
        FirebaseManager firebaseManager = new FirebaseManager();
        string username = "";
        public EncryptionPage(string username)
        {
            this.username = username;
            InitializeComponent();
            var usersL = Task.Run(() => firebaseManager.getUsers()).Result;
            foreach (string user in usersL)
            {
                users.Items.Add(user);
            }
        }

        static string filePath = null;

        private void ChooseImageButton(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.Filter = "PNG|*.png"; //to filter the file explorer to those specific options

            if (fileDialog.ShowDialog() == true)
            {
                filePath = fileDialog.FileName;
              
                try
                {
                    BitmapImage src = new BitmapImage();
                    src.BeginInit();
                    src.UriSource = new Uri(filePath, UriKind.Absolute);
                    src.EndInit();
                    encryptedImage.Source = src;
                }
                catch(Exception)
                {

                }
            }
        }

        private void EncryptionButton(object sender, RoutedEventArgs e)
        {
            if(users.SelectedItem == null)
            {
                MessageBox.Show("Select contact");
            }
            else 
            {
                byte[] encryptedBytes = cryption.EncryptStringToBytes_Aes(encryText.Text, userData.KEY, userData.IV);
                try
                {
                System.Drawing.Image image = System.Drawing.Image.FromFile(filePath);
                byte[] imageByte = ImageToByteArray(image);
                byte[] newImageByte = Combine(imageByte, encryptedBytes);
                File.WriteAllBytes("encrypted" + counter + ".png", newImageByte);
                counter++;
                }
                catch(Exception)
                {

                }
                encryText.Text = "";
                encryptedImage.Source = null;
            }
        }

        public byte[] ImageToByteArray(System.Drawing.Image imageIn)
        {
            using (var ms = new MemoryStream())
            {
                imageIn.Save(ms, imageIn.RawFormat);
                return ms.ToArray();
            }
        }

        public static byte[] Combine(byte[] first, byte[] second)
        {
            byte[] bytes = new byte[first.Length + second.Length];
            first.CopyTo(bytes, 0);
            second.CopyTo(bytes, first.Length);
            return bytes;
        }

        public System.Drawing.Image byteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            System.Drawing.Image returnImage = System.Drawing.Image.FromStream(ms);
            return returnImage;
        }

        private void Home_Button(object sender, RoutedEventArgs e)
        {
            var newForm = new Home(username);
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

        private async void onChange(object sender, SelectionChangedEventArgs e)
        {
            userData = await firebaseManager.getUser(users.SelectedItem.ToString());
        }
    }
}
