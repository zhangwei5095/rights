using Common;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Langben.App.Controllers
{
    public class HomeController : BaseController
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            //Account account = GetCurrentAccount();
            //if (account == null)
            //{
            //    RedirectToAction("Index", "Account");
            //}
            //else
            //{
            //    ViewData["Show"] = string.Format(@"登录总次数：{0} <br/>       本次登录IP：{1}     <br/>    本次登录时间：{2}      <br/>   上次登录IP：{3}     <br/>    上次登录时间：{4}<br/>", account.LogonNum, Common.IP.GetIP(), System.DateTime.Now, account.LastLogonIP, account.LastLogonTime);
            //    ViewBag.Name = account.Name;
            //    IHomeBLL home = new HomeBLL();
            //    //在1.4版本中修改 
            //    ViewData["Menu"] = home.GetMenuByAccount(ref account);// 获取菜单
            //}


            return View();
        }

    }
}

