using Common;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Langben.IBLL;
using Langben.BLL;

namespace Langben.App.Controllers
{
    public class HomeController : BaseController
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            Account account = GetCurrentAccount();
            if (account == null)
            {  
                RedirectToAction("Index", "Account");
            }
            else
            {

                //IHomeBLL home = new HomeBLL();
                ViewData["Menu"] = App.Codes.MenuCaching.GetMenu(ref account); //home.GetMenuByAccount(ref account);// 获取菜单

            }


            return View();
        }

    }
}

