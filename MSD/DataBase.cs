using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

namespace MSD
{
    public class DataBase
    {
        public DataBase()
        {
            
        }
        //string MSD_db_con_Str = ConfigurationManager.ConnectionStrings["MSD_db_con_Str"].ConnectionString;
        //SqlConnection con = new SqlConnection(MSD_db_con_Str);
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSD_db_con_Str"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        //public string UserName { get; set; }
        //public int Password { get; set; }


        public bool SuccessLogin { get; private set; }

        public void CheckUser(string userName, string password)
        {
            
            con.Open();

            cmd = new SqlCommand("ValidateUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Username", SqlDbType.NChar).Value = userName;
            cmd.Parameters.Add("@Password", SqlDbType.NChar).Value = password;
            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
                SuccessLogin = true;
            else
                SuccessLogin = false;

            con.Close();
        }
        
    }
}

   
    
    
    