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

        public void CheckUser(string userName, int password)
        {
            
            con.Open(); // open connection


            cmd = new SqlCommand("ValidateUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserName", SqlDbType.Int).Value = userName;
            cmd.Parameters.Add("@UserPassword", SqlDbType.Int).Value = password;
            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
                SuccessLogin = true;
            else
                SuccessLogin = false;

            con.Close();
        }


        public void RegisterUser(string UserName, int Password)
        {

            con.Open();

            cmd = new SqlCommand("RegisterUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserName", SqlDbType.NChar).Value = UserName;
            cmd.Parameters.Add("@UserPassword", SqlDbType.Int).Value = Password;
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();

            if (affectedRows>0)
                SuccessLogin = true;
            else
                SuccessLogin = false;

            con.Close();
        }

        public bool CheckIfUserIsFree(string UserName, int UserPassword)
        {
            con.Open();
            cmd = new SqlCommand("SELECT  UserName from UserEvents WHERE UserName = @UserName", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@UserName", SqlDbType.NChar).Value = UserName;
            dr = cmd.ExecuteReader();
            bool hasRows = dr.HasRows;
            con.Close();
            if (hasRows)
                return true;
            else
                return false;
        }
    }
}

   
    
    
    