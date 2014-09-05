using Langben.DAL;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Linq;
namespace Langben.BLL
{
    /// <summary>
    /// 基于system.net.mail发送邮件，支持附件
    /// </summary>
    public class NetSendMail
    {
        public static void MailSend(string mailFrom, string maiFromlAccount, string mailFromPwd, string mailSmtpServer,int port, IList<string> mailTo, IList<string> mailCC, IList<string> mailBCC, string mailTitle, string mailContent, IList<string> mailAttachments, System.Text.Encoding encoding, bool isBodyHtml)
        {
            MailMessage message = new MailMessage();
            if (mailFrom.Trim() == "")
            {
                throw new Exception("发送邮件不可以为空");
            }
            message.From = new MailAddress(mailFrom);
            if (mailTo.Count <= 0)
            {
                throw new Exception("接收邮件不可以为空");
            }
            foreach (string s in mailTo)
            {
                message.To.Add(new MailAddress(s));
            }
            if (mailCC.Count > 0)
            {
                foreach (string s in mailCC)
                {
                    message.CC.Add(new MailAddress(s));
                }
            }
            if (mailBCC.Count > 0)
            {
                foreach (string s in mailBCC)
                {
                    message.Bcc.Add(new MailAddress(s));
                }
            }
            message.Subject = mailTitle;
            message.Body = mailContent;
            message.BodyEncoding = encoding;   //邮件编码
            message.IsBodyHtml = isBodyHtml;      //内容格式是否是html
            message.Priority = MailPriority.High;  //设置发送的优先集
            //附件
            foreach (string att in mailAttachments)
            {
                message.Attachments.Add(new Attachment(att));
            }
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = mailSmtpServer;
            smtpClient.Port = port;
            smtpClient.Credentials = new NetworkCredential(maiFromlAccount, mailFromPwd);
            smtpClient.Timeout = 100000;
            smtpClient.EnableSsl = false;        //不使用ssl连接
            smtpClient.Send(message);
        }

        public static void MailSendText(string mailFrom, string maiFromlAccount, string mailFromPwd, string mailSmtpServer, IList<string> mailTo, IList<string> mailCC, IList<string> mailBCC, string mailTitle, string mailContent)
        {
            //List<string> attList = new List<string>();
            //MailSend(mailFrom, maiFromlAccount, mailFromPwd, mailSmtpServer, mailTo, mailCC, mailBCC, mailTitle, mailContent, attList, Encoding.UTF8, false);
        }
        public static void SendSMTPEMail(string strSmtpServer, int port, string strFrom, string maiFromlAccount, string strFromPass, string strto, string strSubject, string strBody)
        {
            System.Net.Mail.SmtpClient client = new SmtpClient(strSmtpServer);
            client.Port = port;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(maiFromlAccount, strFromPass);
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            
            System.Net.Mail.MailMessage message = new MailMessage(maiFromlAccount, strto, strSubject, strBody);
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;
            MailAddress reply = new MailAddress(strFrom,"服务");
            message.ReplyToList.Add(reply);
            client.Send(message);
        }
        public static void MailSendHTML( SysEntities db,string mailTo, string name, string psw)
        {
            string tempName = "修改密码发送的邮件通知";
            var data = db.SysEmailTemp.Where(w => w.Mail_name == tempName).FirstOrDefault();
            if (data != null)
            {


                SysEmail email = new SysEmail();
                email.CreateTime = DateTime.Now;
                email.Id = Common.Result.GetNewId();
                email.SysMailId = data.Id;
                email.Subject = data.Subject.Replace("{{用户名}}", name).Replace("{{密码}}", psw);
                email.Content = data.Content.Replace("{{用户名}}", name).Replace("{{密码}}", psw);
                email.Mail_type = mailTo;
                email.Reply_email = data.Reply_email;
                db.SysEmail.Add(email);

                string   mailFromPwd = "langben123",
                  mailSmtpServer = "smtp.exmail.qq.com";

                SendSMTPEMail(mailSmtpServer, 25, email.Reply_email, "service@langben.com", mailFromPwd, mailTo, email.Subject, email.Content);
                                

                //MailSend(mailFrom, maiFromlAccount, mailFromPwd, mailSmtpServer,465, mailToList, mailCC, mailBCC, email.Subject, email.Content, attList, Encoding.UTF8, true);
            }
        }
    }
}
