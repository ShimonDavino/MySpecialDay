using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MSD
{
	public class Event
	{
        private int eventId;
        private List<Gift> giftsList;
        private List<Invite> invitesList;
        private string messages;
        private int amountOfConfirm;
        private string eventName;

        public Event(int eventId,string name)
        {
            this.eventId = eventId;
            giftsList = new List<Gift>();
            invitesList = new List<Invite>();
            messages = "";
            amountOfConfirm = 0;
            eventName = name;
            
        }

        public string Messages
        {
            get { return messages; }
            set { messages = value; }
        }

        public void addMessage(string Content)
        {
            messages+="\n"+Content;
        }

        public void addGift(string name, int amount)
        {
            giftsList.Add(new Gift(name, amount));
        }

        public string EventString
        {
            get { return eventName; }
        }

        public List<Gift> GiftsList
        {
            get { return giftsList; }

        }

        public int EventId
        {
            get { return eventId; }
        }

        public int AmountOfConfirm
        {
            get { return amountOfConfirm; }
        }

        public List<Invite> InvitesList
        {
            get { return invitesList; }
        }

        public void AddInvite(string name, int amount)
        {
            invitesList.Add(new Invite(name, amount));
            amountOfConfirm += amount;
        }
	}
}