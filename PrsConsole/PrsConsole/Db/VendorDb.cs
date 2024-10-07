using PrsConsole.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrsConsole.Db
{
    internal class VendorDb
    {
        private bmdbContext dbContext = new();

        //CRUD Methods
        public List<Vendor> GetVendors()
        {
            return dbContext.Vendors.ToList();
        }

        public Vendor FindVendors(int id)
        {
            return dbContext.Vendors.Where(v => v.Id == id).FirstOrDefault();
        }

        public void AddVendor(Vendor vendor)
        {
            dbContext.Vendors.Add(vendor);
            dbContext.SaveChanges();
        }

        public void UpdateVendor(Vendor vendor)
        {
            dbContext.SaveChanges();
        }

        public void RemoveVendor(Vendor vendor)
        {
            dbContext.Vendors.Remove(vendor);
            dbContext.SaveChanges();
        }
    }
}
