using Cascading_Dropdownlist.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Cascading_Dropdownlist.Controllers
{
    public class HomeController : Controller
    {
      
        DB_Connection db = new DB_Connection();
       
        public IActionResult Index()
        {
            DataTable dt = db.getCountry();
            List<SelectListItem> list = new List<SelectListItem>();
            foreach(DataRow row in dt.Rows)
            {
                list.Add(new SelectListItem
                {
                    Text=row["country_name"].ToString(),
                    Value=row["country_id"].ToString()
                });
            }
            ViewBag.countryList = list;
            return View();
        }
        public JsonResult GetStatelist(int cid)
        {
            DataTable dt = db.getState(cid);
            List<SelectListItem> list = new List<SelectListItem>();
            foreach (DataRow row in dt.Rows)
            {
                list.Add(new SelectListItem
                {
                    Text = row["State_Name"].ToString(),
                    Value = row["State_id"].ToString()
                });
            }
            return Json(list);
        }
        public JsonResult GetCitylist(int sid)
        {
            DataTable dt = db.getCity(sid);
            List<SelectListItem> list = new List<SelectListItem>();
            foreach (DataRow row in dt.Rows)
            {
                list.Add(new SelectListItem
                {
                    Text = row["City_name"].ToString(),
                    Value = row["City_id"].ToString()
                });
            }
            return Json(list);
        }


    }
}
