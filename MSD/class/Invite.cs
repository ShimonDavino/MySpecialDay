using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MSD
{
	public class Invite
	{
        private string inviteName;
        private int amount;

        public Invite(string inviteName, int amount)
        {
            this.inviteName = inviteName;
            this.amount = amount;
        }

        public string InviteName
        {
            set { inviteName = value;}
            get { return inviteName; }
        }

        public int Amount
        {
            set { amount = value; }
            get { return amount; }
        }


    }

}