using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace MSD
{
	public class EventLisiOfUser
	{
        private string userName;
        private List<int> eventsList;

        public EventLisiOfUser(string userName)
        {
            this.userName = userName;
            eventsList = new List<int>();
        }

        public string UserId
        {
            get { return userName; }
            set { userName = value; }
        }

        public Event addEvent(int eventId)
        {
            eventsList.Add(eventId);
            return new Event(eventId, userName);
        }

        public List<int> EventsList
        {
            get { return eventsList; }
        }

	}
}