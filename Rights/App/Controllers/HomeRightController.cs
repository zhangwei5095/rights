using Common;
using Langben.BLL;
using Langben.DAL;
using Langben.IBLL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Langben.App.Controllers
{
    public class HomeRightController : BaseController
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            Account account = GetCurrentAccount();

            ViewBag.LogonNum = account.LogonNum;
            ViewBag.IP = Common.IP.GetIP();            
            ViewBag.LastLogonIP = account.LastLogonIP;
            ViewBag.LastLogonTime = account.LastLogonTime;
            ViewBag.Name = account.Name;

            ISysAnnouncementBLL announcementBLL = new SysAnnouncementBLL();
            SysAnnouncement announcement = announcementBLL.GetTop(1);
            if (announcement != null)
            {
                ViewBag.Announcement = announcement.Message;
            }



            return View();
        }

    }
}

