using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Telefonen_ukazatel_raboti
{
    public class DbConnection
    {
        private SqlConnection connection = new SqlConnection("Server=(localdb)\\MSSQLLocalDB; Database=TelefonenUkazatel; Integrated Security=true;");

        public void AddContact(string name, string surname, string phoneNum, string email) 
        {
            SqlCommand command = new SqlCommand("insert into Contacts values (@name, @surname, @phoneNum, @email);", connection);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}