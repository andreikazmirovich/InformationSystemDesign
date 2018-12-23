using System;
using System.Data.SqlClient;

namespace Lab2
{
    class Program
    {
        static void Main(string[] args)
        {
            string connString = @"Data Source=DESKTOP-46RJUTG\SQLEXPRESS;Initial Catalog=Lab2;Integrated Security=True;";
            
            using(SqlConnection connection = new SqlConnection(connString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("SELECT * FROM dbo.Countries", connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        Console.WriteLine("COUNTRIES");
                        while (reader.Read())
                        {
                            Console.WriteLine("Country => {0}, Capital => {1}, Currency => {2}", reader.GetValue(1), reader.GetValue(2), reader.GetValue(3));
                        }
                        Console.WriteLine();
                    }
                }
                using (SqlCommand command = new SqlCommand("SELECT * FROM dbo.Banks", connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        Console.WriteLine("BANKS");
                        while (reader.Read())
                        {
                            Console.WriteLine("Name => {0}, City => {1}, Phone Number => {2}", reader.GetValue(1), reader.GetValue(2), reader.GetValue(3));
                        }
                    }
                }
            }
        }
    }
}
