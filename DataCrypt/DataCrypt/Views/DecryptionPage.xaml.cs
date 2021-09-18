using Microsoft.Win32;
using System;
using System.IO;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;
using DataCrypt.Code;

namespace DataCrypt.Views
{
    /// <summary>
    /// Interaction logic for DecryptionPage.xaml
    /// </summary>
    public partial class DecryptionPage : Window
    {
        public static Cryption cryption = new Cryption();
        User user = new User();
        FirebaseManager firebaseManager = new FirebaseManager();
        private UserData userData = new UserData();
        string username = "";

        byte[] ImageEnd = new byte[] { 0x49, 0x45, 0x4E, 0x44, 0xAe, 0x42, 0x60, 0x82 };
        public DecryptionPage(string username)
        {
            this.username = username;
            InitializeComponent();
            userData = Task.Run(() => firebaseManager.getUser(username)).Result;
        }

        static string filePath = null;

        private void Button_Click(object sender, RoutedEventArgs e)
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
                catch (Exception)
                {

                }
            }
        }

        private void Decrypt_click(object sender, RoutedEventArgs e)
        {
            encryText.Text = "";
            try
            {
                byte[] imageByte = File.ReadAllBytes(filePath);
                int index = findSequence(imageByte, 0, ImageEnd);
                byte[] encryptByte = new byte[imageByte.Length - index];
                Array.Copy(imageByte, index, encryptByte, 0, imageByte.Length - index);
                //byte[] key = File.ReadAllBytes("Key");
                //byte[] iv = File.ReadAllBytes("IV");
                //encryText.Text = cryption.DecryptStringFromBytes_Aes(encryptByte, key, iv);
                encryText.Text = cryption.DecryptStringFromBytes_Aes(encryptByte, userData.KEY, userData.IV);
            }
            catch(Exception)
            {
            
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

        private static int findSequence(byte[] array, int start, byte[] sequence)
        {
            int end = array.Length - sequence.Length; // past here no match is possible
            byte firstByte = sequence[0]; // cached to tell compiler there's no aliasing

            while (start <= end)
            {
                // scan for first byte only. compiler-friendly.
                if (array[start] == firstByte)
                {
                    // scan for rest of sequence
                    for (int offset = 1; ; ++offset)
                    {
                        if (offset == sequence.Length)
                        { // full sequence matched?
                            return start + 8;
                        }
                        else if (array[start + offset] != sequence[offset])
                        {
                            break;
                        }
                    }
                }
                ++start;
            }

            // end of array reached without match
            return -1;
        }

        private void Home_Button(object sender, RoutedEventArgs e)
        {
            var newForm = new Home(username);
            newForm.Show();
            this.Close();
        }

        private void Encryption_Button(object sender, RoutedEventArgs e)
        {
            var newForm = new EncryptionPage(username);
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
