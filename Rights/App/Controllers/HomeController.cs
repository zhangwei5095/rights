using Common;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Langben.IBLL;
using Langben.BLL;
using Langben.DAL;

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
                Utils.WriteCookie("account", account, 7);
            }


            return View();
        }
        /// <summary>
        /// 获取列表中的按钮导航
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult GetToolbar(string id)
        {
            if (string.IsNullOrWhiteSpace(id) && id == "undefined")
            {
                return null;
            }
            Account account = GetCurrentAccount();
            if (account == null)
            {
                return Content(" <script type='text/javascript'> window.top.location='Account'; </script>");

            }
            ISysMenuSysRoleSysOperationBLL sro = new SysMenuSysRoleSysOperationBLL();
            List<SysOperation> sysOperations = sro.GetByRefSysMenuIdAndSysRoleId(id, account.RoleIds);
            List<toolbar> toolbars = new List<toolbar>();
            foreach (SysOperation item in sysOperations)
            {
                toolbars.Add(new toolbar() { handler = item.Function, iconCls = item.Iconic, text = item.Name });
            }
            return Json(toolbars, JsonRequestBehavior.AllowGet);
        }
    }
}

