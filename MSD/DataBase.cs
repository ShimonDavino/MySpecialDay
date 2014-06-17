using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Collections;
using System.Web.UI.WebControls;

namespace MSD
{
    public class DataBase
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MSD_db_con_Str"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        //public string UserName { get; set; }
        //public int Password { get; set; }
        List<string> Names;

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
            cmd.CommandType = CommandType.Text;
          
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
                           " WHERE u.UserName="+"'"+UserName+"'"+
                           " AND EXISTS (SELECT e.UserId FROM EventProfile e" +
                           " where u.UserId= e.UserId)";
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
            //cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                eventsList.Add(dr.GetInt32(i));
                i++;
            }
            con.Close();
            return eventsList;

        }



        public bool InsertInviteToTable(int EventId,string PrivateName,string PartnerName,
                                        string Family,int HowMatchComming)
        {
            con.Open();

            string Query = "INSERT INTO InvitesList(EventId,InviteName,partnerName,Family,How_match_comming)" +
                            " VALUES('"+ EventId+"',N'"+PrivateName+"',N'"+PartnerName+
                            "',N'"+Family+"','"+HowMatchComming+"')";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
   
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();

            if (affectedRows > 0)
                return true;
            else
                return false;
        }

        public int GetUserIdFromUserName(string UserName)
        {
            con.Open();
            string Query = "SELECT UserId from UserEvents" +
                            " WHERE UserName = '" + UserName + "'";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            dr.Read();
            int UserId = dr.GetInt32(0);
            con.Close();
            return UserId;
        }

        public List<EventUser> GetListEventOfUserId(int userId)
        {
            con.Open();
            List<EventUser> eventList = new List<EventUser>(); ;
            string Query = "SELECT EventId from EventProfile" +
                            " WHERE UserId = '" + userId + "'";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();

            
            while(dr.Read())
            {
                eventList.Add(new EventUser(userId,dr.GetInt32(0)));
            }
            con.Close();
            return eventList;
        }

        public string  GetEventOwnerName(int EventId)
        {
            con.Open();
            string Query = "SELECT EventOwnerName+' & '+PartnerName from EventProfile"+
                            " WHERE EventId = '"+EventId+"'";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            dr.Read();
            string UserName = dr.GetString(0).ToString();
            con.Close();
            return UserName;
        }

        public string GetEventPlace(int EventId)
        {
            con.Open();
            string Query = "SELECT EventPlace from EventProfile" +
                            " WHERE EventId = '" + EventId + "'";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            dr.Read();
            string UserName = dr.GetString(0).ToString();
            con.Close();
            return UserName;
        }

        public string GetEventDate(int EventId)
        {
            con.Open();
            string Query = "SELECT EventDate from EventProfile" +
                            " WHERE EventId = '" + EventId + "'";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            dr.Read();
            string UserName = dr.GetDateTime(0).ToShortDateString();
            con.Close();
            return UserName;
        }

        public string GetEventAddress(int EventId)
        {
            con.Open();
            string Query = "SELECT EventAddress from EventProfile" +
                            " WHERE EventId = '" + EventId + "'";
            cmd = new SqlCommand(Query, con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            dr.Read();
            string UserName = dr.GetString(0).ToString();
            con.Close();
            return UserName;
        }


        internal bool IsOwnerEvent(int UserId)
        {
            throw new NotImplementedException();
        }


        public List<string> GetAllInvites(string EventId)  //System.Web.UI.WebControls.ListItem[]
        {
            Names = new List<string>();
            
            con.Open();
            cmd = new SqlCommand("SELECT InviteName,partnerName,Family,How_match_comming from InvitesList", con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string fullName = ParsFullName(dr.GetString(0), dr.GetString(1), dr.GetString(2), dr.GetInt32(3));
                Names.Add(fullName);
            }
            con.Close();
            return Names;
        }

        private string ParsFullName(string Nname, string Pname, string Fname,int count)
        {
            if (Pname != "")
                return Nname + " ו" + Pname + " " + Fname + "  -  " + count;
            else
                return Nname + " " + Fname + "  -  " + count;
        }

        public List<string> findInvites(string latter)
        {
            Names = new List<string>();
            con.Open();
            cmd = new SqlCommand("SELECT InviteName,partnerName,Family,How_match_comming from InvitesList"+
                                 " WHERE Family LIKE @letter+'%' OR InviteName LIKE @letter+'%'", con);

            cmd.Parameters.Add("@letter", SqlDbType.NVarChar).Value = latter;
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string fullName = ParsFullName(dr.GetString(0), dr.GetString(1), dr.GetString(2), dr.GetInt32(3));
                Names.Add(fullName);
            }
            con.Close();
            return Names;
        }

        public string GetPeopleCount()
        {
            int count=0;
            con.Open();
            cmd = new SqlCommand("SELECT sum(How_match_comming) from InvitesList", con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            if (dr.Read())
                count = dr.GetInt32(0);
            con.Close();
            return count.ToString();
        }

        public string GetFamilyCount()
        {
            int count = 0;
            con.Open();
            cmd = new SqlCommand("SELECT COUNT(Family) from InvitesList", con);
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            if (dr.Read())
                count = dr.GetInt32(0);
            con.Close();
            return count.ToString();
        }

        public bool CheckIfEventExists(string EventId)
        {
            con.Open();
            cmd = new SqlCommand("SELECT  EventId from EventProfile WHERE EventId = @EventId", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@EventId", SqlDbType.NChar).Value = EventId;
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




