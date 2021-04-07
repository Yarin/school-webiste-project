using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PersonalWebsite
{
    public class Dal
    {
        private SqlConnection conn;
        private SqlCommand command;
        private SqlDataAdapter adapter;
        private string strSQL;
        private string connectionString;

        public Dal()
        {
            strSQL = "select * from Users";
            connectionString = string.Format(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Yarin\source\repos\PersonalWebsite\PersonalWebsite\appdata\database.mdf;Integrated Security=True;Connect Timeout=30");
            conn = new SqlConnection(connectionString);
            command = new SqlCommand(strSQL, conn);
            adapter = new SqlDataAdapter(command);
        }

        public DataSet GetDataSetWithSql(string sql)

        {
            DataSet ds = new DataSet();
            command.CommandText = sql;
            adapter.SelectCommand = command;
            adapter.Fill(ds);
            return ds;
        }

        public int insert(string fname, string lname, string email)
        {
            int success = 1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "INSERT INTO Users(email, fname, lname) VALUES(@param1,@param2,@param3)";
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    cmd.Parameters.Add("@param1", SqlDbType.NVarChar, 60).Value = email;
                    cmd.Parameters.Add("@param2", SqlDbType.NVarChar, 10).Value = fname;
                    cmd.Parameters.Add("@param3", SqlDbType.NVarChar, 10).Value = lname;
                    cmd.CommandType = CommandType.Text;
                    success = cmd.ExecuteNonQuery();
                }
            }
            return success;
        }
    }

}
