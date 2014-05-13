using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MSD
{
	public class Gift
	{
        private string nameOfGift;
        private int amount;

        public Gift(string name,int amount){
            this.amount=amount;
            nameOfGift = name;
        }

        public string NameOfGift{
            //set{nameOfGift = value;}
            get{return nameOfGift;}
        }

        public int Amount
        {
            get { return amount; }
        }

        public bool updateAmount()
        {
            if (amount == 0)
                return false;
            amount--;
            return true;
        }

        public string toString()
        {
            return "Name of the gift: " + nameOfGift + ", Amount: " + amount;
        }

	}

}