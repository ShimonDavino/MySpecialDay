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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSD_db_con_Str"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        //public string UserName { get; set; }
        //public int Password { get; set; }


        public bool SuccessLogin { get; private set; }

        public void CheckUser(string userName, string password)
        {

            con.Open(); // open connection


            cmd = new SqlCommand("ValidateUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserName", SqlDbType.NChar).Value = userName;
            cmd.Parameters.Add("@UserPassword", SqlDbType.NChar).Value = password;
            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
                SuccessLogin = true;
            else
                SuccessLogin = false;

            con.Close();
        }


        public int RegisterUser(string UserName, string Password)
        {

            con.Open();

            cmd = new SqlCommand("RegisterUser", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UserName", SqlDbType.NChar).Value = UserName;
            cmd.Parameters.Add("@UserPassword", SqlDbType.NChar).Value = Password;
            //int affectedRows = cmd.ExecuteNonQuery();
            dr = cmd.ExecuteReader();
            dr.Read();
            int userId = dr.GetInt32(0);
            con.Close();
            if (userId>0)
                return userId;
            else
                return 0;
        }

        public bool CheckIfUserIsFree(string UserName)
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
        public bool RegisterUserToNewEvent(int UserId, int EventId, string EventType, string EventOwnerName, string PartnerName,
                                          string Family_1, string Family_2, string EventDate, string EventPlace, string EventAddress,
                                          string PhoneOf_EventOwner, string PhoneOf_EventPlace)
        {
            con.Open();

            string Query = "DECLARE @datetime date "+
                            "set @datetime="+"'"+ EventDate+"'"+
                " INSERT INTO [EventProfile]"+
                "(UserId,EventId,EventType,EventOwnerName,PartnerName,Family_1,Family_2,EventDate,EventPlace,EventAddress,PhoneOf_EventOwner,PhoneOf_EventPlace) "
                +"VALUES " +
            "('" + UserId + "','" + EventId + "','" + EventType + "', N'" + EventOwnerName + "', N'" + PartnerName +
             "', N'" + Family_1 + "', N'" + Family_2 + "'," + "@datetime" + ", N'" + EventPlace + "', N'" + EventAddress +
             "','" + PhoneOf_EventOwner + "','" + PhoneOf_EventPlace + "')";
            cmd = new SqlCommand(Query, con);
            
            //cmd.Parameters.Add("@datetime", SqlDbType.Date  ).Value = EventDate;
            //cmd = new SqlCommand("RegisterUserToEvent", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@UserId", SqlDbType.Int).Value = UserId;
            //cmd.Parameters.Add("@EventId", SqlDbType.Int).Value = EventId;
            //cmd.Parameters.Add("@EventType", SqlDbType.NChar).Value = EventType;
            //cmd.Parameters.Add("@EventOwnerName", SqlDbType.NVarChar).Value = @"N"+ EventOwnerName;  //'N'+EventOwnerName;
            //cmd.Parameters.Add("@PartnerName", SqlDbType.NVarChar).Value = PartnerName;
            //cmd.Parameters.Add("@Family_1", SqlDbType.NVarChar).Value = Family_1;
            //cmd.Parameters.Add("@Family_2", SqlDbType.NVarChar).Value = Family_2;
            //cmd.Parameters.Add("@PhoneOf_EventOwner", SqlDbType.NChar).Value = PhoneOf_EventOwner;
            //cmd.Parameters.Add("@PersonalAddress", SqlDbType.NVarChar).Value = PersonalAddress;
            //cmd.Parameters.Add("@EventDate", SqlDbType.Date).Value = EventDate;
            //cmd.Parameters.Add("@EventPlace", SqlDbType.NVarChar).Value = EventPlace;
            //cmd.Parameters.Add("@EventAddress", SqlDbType.NVarChar).Value =EventAddress;
            //cmd.Parameters.Add("@PhoneOf_EventPlace", SqlDbType.NChar).Value = PhoneOf_EventPlace;

            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();

            if (affectedRows > 0)
                return true;
            else
                return false;


        }

        public bool ifUserRegistered(string UserName)
        {

            con.Open();
            string Query = "SELECT  u.UserId from UserEvents u" +
                           "WHERE u.UserName="+"'"+UserName+"'"+
                           "AND EXISTS (SELECT e.UserId FROM EventProfile e" +
                           "where u.UserId= e.UserId)";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            //cmd.Parameters.Add("@UserName", SqlDbType.NChar).Value = UserName;
            dr = cmd.ExecuteReader();
            bool hasRows = dr.HasRows;
            con.Close();
            if (hasRows)
                return true;
            else
                return false;
        }

        public List<int> LastEvents(string EventType,int NumOfEvents)
        {
            List<int> eventsList = new List<int>();
            int i = 0;
            con.Open();
            string Query = "DECLARE @dayNow date"+
                           "set @dayNow = GETDATE()"+
                           "select top"+"'"+NumOfEvents+"'"+ "EventId from EventProfile"+
                           "WHERE EventDate  = @dayNow"+
                           "AND EventType ="+"'"+EventType+"'"+
                           "ORDER BY EventDate DESC";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                eventsList.Add(dr.GetInt32(i));
                i++;
            }
            con.Close();
            return eventsList;

        }


    }
}




