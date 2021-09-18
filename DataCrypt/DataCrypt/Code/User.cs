namespace DataCrypt.Code
{
    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public byte[] KEY { get; set; }
        public byte[] IV { get; set; }

    }
}
