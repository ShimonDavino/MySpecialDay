using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace MSD
{
	public class EventUser
	{
        private int userId;
        private int eventId;

        public EventUser(int userId,int eventId)
        {
            this.userId = userId;
            this.eventId = eventId;
        }

        public int UserId
        {
            get { return userId; }
            set { userId = value; }
        }

        public int EventId
        {
            get { return eventId; }
            set { eventId = value; }
        }

	}
}