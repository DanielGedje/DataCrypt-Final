using System.Collections.Generic;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Threading.Tasks;
using FireSharp;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace DataCrypt.Code
{
    class FirebaseManager
    {

        IFirebaseClient client;

        private IFirebaseConfig config = new FireSharp.Config.FirebaseConfig()
        {
            AuthSecret = "p7L6BhhTK7t7rATpXdjyo5fn66GAbOYBr1lWChoH",
            BasePath = "https://datacrypt-51e0a-default-rtdb.firebaseio.com/"
        };

        public FirebaseManager()
        {
            try
            {
                client = new FirebaseClient(config);
            }
            catch
            {
                System.Windows.Application.Current.Shutdown();
            }
        }

        public async Task<bool> signUp(string username, string password)
        {
            Aes aes = Aes.Create();
            aes.GenerateIV();
            aes.GenerateKey();
            User user = new User
            {
                Username = username,
                Password = password,
                KEY = aes.Key,
                IV = aes.IV
            };

            FirebaseResponse countResponse = await client.GetAsync("users/" + username);
            Debug.WriteLine(countResponse.Body);
            if (countResponse.Body != "null")
            {
                return false;
            }
            await client.SetAsync("users/" + username, user);
            return true;
        }

        public async Task<bool> login(string username, string password)
        {

            FirebaseResponse countResponse = await client.GetAsync("users/" + username);
            Debug.WriteLine(countResponse.Body);
            if (countResponse.Body == "null")
            {
                return false;
            }
            User tmpUser = countResponse.ResultAs<User>();
            if(tmpUser.Password != password)
            {
                return false;
            }
            return true;
        }

        public async Task<List<string>> getUsers()
        {
            FirebaseResponse countResponse = await client.GetAsync("users/");
            Debug.WriteLine(countResponse);
            Dictionary<string, User> users = countResponse.ResultAs<Dictionary<string, User>>();
            return new List<string>(users.Keys);
        }

        public async Task<UserData> getUser(string username)
        {
            FirebaseResponse countResponse = await client.GetAsync("users/"+ username);
            User user  = countResponse.ResultAs<User>();
            UserData userData = new UserData
            {
                IV = user.IV,
                KEY = user.KEY,
            };
            return userData;
        }
    }
}