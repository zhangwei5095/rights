 

/*
请在运行此脚本之前备份目标数据库。
*/
 
BEGIN TRANSACTION
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson],[IsLeaf]) VALUES (N'1307311605187265267d33f281da5', N'个人设置', NULL, NULL, N'tu0625', 222, N'1001', NULL, NULL, NULL, NULL, NULL, N'父节点')
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson],[IsLeaf]) VALUES (N'1307311605187265267d33f281da4', N'系统设置', NULL, NULL, N'tu2011', 111, N'1000', NULL, NULL, NULL, '131101 17:31:33.850', N'Admin', N'父节点')

INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson],[IsLeaf]) VALUES (N'1307311605187265267d33f281da3', N'基础设置', N'1307311605187265267d33f281da4', NULL, N'tu0504', 111, N'10001000', N'关闭', NULL, NULL, '131101 16:18:08.147', N'Admin', N'父节点')

INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281d11', N'异常捕获', N'1307311605187265267d33f281da3', N'SysException', N'tu1101', 666, N'100010001001', NULL, NULL, NULL, '131101 17:56:18.617', N'Admin')
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281d12', N'菜单管理', N'1307311605187265267d33f281da4', N'SysMenu', N'tu0701', 444, N'10001003', NULL, NULL, NULL, '131101 17:16:58.533', N'Admin')
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281da0', N'角色管理', N'1307311605187265267d33f281da4', N'SysRole', N'tu0525', 666, N'10001005', NULL, NULL, NULL, '131101 17:31:19.727', N'Admin')
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281da1', N'日志管理', N'1307311605187265267d33f281da3', N'SysLog', N'tu1001', 555, N'100010001000', NULL, NULL, NULL, '131101 17:56:10.177', N'Admin')

INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281da8', N'人员管理', N'1307311605187265267d33f281da4', N'SysPerson', N'tu0625', 333, N'10001002', NULL, NULL, NULL, '131101 17:26:32.297', N'Admin')
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281da9', N'数据字典', N'1307311605187265267d33f281da3', N'SysField', N'tu0704', 777, N'100010001002', NULL, NULL, NULL, '131101 14:03:39.163', N'Admin')
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281df2', N'狼奔网站', N'1307311605187265267d33f281da5', N'http://www.langben.com', N'langben', 222, N'10011001', NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1310181133541969540a9ad916764', N'操作管理', N'1307311605187265267d33f281da4', N'SysOperation', N'tu0901', 555, N'10001004', NULL, N'Admin', '131018 11:33:54.000', '131101 17:30:59.053', N'Admin')
INSERT INTO [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson]) VALUES (N'1311011720196053073ccff5a1c7c', N'部门管理', N'1307311605187265267d33f281da4', N'SysDepartment', N'tu1201', 222, N'10001001', NULL, N'Admin', '131101 17:20:19.000', '131106 15:14:48.783', N'Admin')

INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [EmailAddress], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e24e', N'Admin', N'狼奔', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '350020527@qq.com', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e222', N'WangXiaoxia', N'王晓霞', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e333', N'QuXiaolin', N'曲晓林', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e444', N'SongFulai', N'宋福来', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e555', N'WangYuyan', N'王语嫣', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e666', N'LiuYiyang', N'刘一阳', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')

INSERT INTO [dbo].[SysRole] ([Id], [Name], [Description], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281da6', N'超级管理员', N'具有全部的菜单和操作', NULL, NULL, '131101 14:54:55.583', N'Admin')

INSERT INTO [dbo].[SysRoleSysPerson] ([SysPersonId], [SysRoleId]) VALUES (N'1311061516356389621569df3e24e', N'1307311605187265267d33f281da6')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'1310181134390713796477e27c097', N'创建', N'flexiCreate', N'icon-add', 222, NULL, NULL, '131018 11:34:39.000', N'Admin')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'131018155411503738459acd560d4', N'修改', N'flexiModify', N'icon-edit', 444, NULL, NULL, '131018 15:54:11.000', N'Admin')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'1310181554235506134d5697ad13c', N'删除', N'flexiDelete', N'icon-remove', 333, NULL, NULL, '131018 15:54:23.000', N'Admin')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'13101815543634748843f1d3c904c', N'详细', N'getView', N'icon-details', 111, NULL, NULL, '131018 15:54:36.000', N'Admin')
 
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281d12', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281d12', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281d12', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281d12', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da0', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da0', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da0', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da0', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da9', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da9', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da9', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da9', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1310181133541969540a9ad916764', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1310181133541969540a9ad916764', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1310181133541969540a9ad916764', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1310181133541969540a9ad916764', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1311011720196053073ccff5a1c7c', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1311011720196053073ccff5a1c7c', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1311011720196053073ccff5a1c7c', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1311011720196053073ccff5a1c7c', N'13101815543634748843f1d3c904c')
				  
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'13110615150465633401262dc14e3', N'1311011720196053073ccff5a1c7c', N'1307311605187265267d33f281da6', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'131106151504656334013675b2a93', N'1307311605187265267d33f281da8', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340171513c641', N'1307311605187265267d33f281da9', N'1307311605187265267d33f281da6', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'13110615150465633401a5ebca73a', N'1310181133541969540a9ad916764', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'13110615150465633401e535daba2', N'1311011720196053073ccff5a1c7c', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'131106151504656334028b56f0d04', N'1307311605187265267d33f281d12', N'1307311605187265267d33f281da6', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'13110615150465633402a7ed21318', N'1307311605187265267d33f281da3', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'131106151504656334038557d2978', N'1307311605187265267d33f281da0', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'13110615150465633403f042a0814', N'1307311605187265267d33f281da1', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'131106151504656334045a488eb0f', N'1310181133541969540a9ad916764', N'1307311605187265267d33f281da6', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'131106151504656334045d37ed47e', N'1307311605187265267d33f281da8', N'1307311605187265267d33f281da6', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'131106151504656334060c2cd261e', N'1310181133541969540a9ad916764', N'1307311605187265267d33f281da6', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340679f67d063', N'1307311605187265267d33f281da9', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340708020f6f3', N'1307311605187265267d33f281d12', N'1307311605187265267d33f281da6', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'131106151504656334098c2f900a5', N'1307311605187265267d33f281df2', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'13110615150465633409ac13d561a', N'1307311605187265267d33f281da9', N'1307311605187265267d33f281da6', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340a309fd8a3f', N'1307311605187265267d33f281da8', N'1307311605187265267d33f281da6', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340a71520ecfd', N'1307311605187265267d33f281da9', N'1307311605187265267d33f281da6', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340a9b7537a33', N'1307311605187265267d33f281da8', N'1307311605187265267d33f281da6', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340a9db99e565', N'1311011720196053073ccff5a1c7c', N'1307311605187265267d33f281da6', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340b2ac40c4e9', N'1307311605187265267d33f281da0', N'1307311605187265267d33f281da6', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340b2ecb513c2', N'1307311605187265267d33f281da0', N'1307311605187265267d33f281da6', N'13101815543634748843f1d3c904c')

INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340b66180cc5c', N'1307311605187265267d33f281da5', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340b6d60b129f', N'1307311605187265267d33f281d12', N'1307311605187265267d33f281da6', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340ba2c20f446', N'1307311605187265267d33f281d12', N'1307311605187265267d33f281da6', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340ca4225cfe7', N'1307311605187265267d33f281da8', N'1307311605187265267d33f281da6', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340d3c096875c', N'1307311605187265267d33f281da0', N'1307311605187265267d33f281da6', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340ddcca58dee', N'1307311605187265267d33f281da0', N'1307311605187265267d33f281da6', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340e2e79d53aa', N'1307311605187265267d33f281d12', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340e58fbe9cd6', N'1311011720196053073ccff5a1c7c', N'1307311605187265267d33f281da6', N'131018155411503738459acd560d4')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340eb37469ada', N'1310181133541969540a9ad916764', N'1307311605187265267d33f281da6', N'1310181554235506134d5697ad13c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340edb0edff69', N'1307311605187265267d33f281da4', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340f161fa0ed6', N'1307311605187265267d33f281da9', N'1307311605187265267d33f281da6', N'1310181134390713796477e27c097')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340f2e8a15c0a', N'1307311605187265267d33f281d11', N'1307311605187265267d33f281da6', NULL)
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340fa4206c604', N'1311011720196053073ccff5a1c7c', N'1307311605187265267d33f281da6', N'13101815543634748843f1d3c904c')
INSERT INTO [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysRoleId], [SysOperationId]) VALUES (N'1311061515046563340fd4f755ce2', N'1310181133541969540a9ad916764', N'1307311605187265267d33f281da6', N'131018155411503738459acd560d4')

INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311105187265267d33f281df3', N'是', NULL, N'SysEmailTemp', N'IsDefault', 111, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311105187265267d33f281df4', N'否', NULL, N'SysEmailTemp', N'IsDefault', 222, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281d99', N'关闭', NULL, N'SysMenu', N'State', 222, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281df3', N'开启', NULL, N'SysPerson', N'State', 111, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281df4', N'关闭', NULL, N'SysPerson', N'State', 222, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'13112209551672144939a6262d8e5', N'男', NULL, N'SysPerson', N'Sex', 111, N'SysPerson男', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220955257836593c4a4bbea87', N'女', NULL, N'SysPerson', N'Sex', 111, N'SysPerson女', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220956161414228ccc2b579f8', N'北京市', NULL, N'SysPerson', N'Province', 111, N'SysPerson+Province+北京市',NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220956340783488723f958e59', N'上海市', NULL, N'SysPerson', N'Province', 222, N'SysPerson+Province+上海市', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220957265297953ba74f034d3', N'海淀区', N'1311220956161414228ccc2b579f8', N'SysPerson', N'City', 111, N'SysPerson+City+海淀区', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220957429042713f2c8c544c5', N'东城区', N'1311220956161414228ccc2b579f8', N'SysPerson', N'City', 111, N'SysPerson+City+东城区', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220958318400832b4af840c44', N'中关村', N'1311220957265297953ba74f034d3', N'SysPerson', N'Village', 111, N'SysPerson+Village+中关村', NULL, N'Admin', NULL, NULL)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281234','市场部',null,'北京市朝阳区',111)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281235','财务部',null,'北京市海淀区',222)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281236','人力部',null,'北京市朝阳区',333)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281237','规划','1307311605187265267d33f281236','北京市朝阳区',111)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281238','招聘','1307311605187265267d33f281236','北京市朝阳区',222)
INSERT INTO [dbo].[SysAnnouncement]
           ([Id]
           ,[Title]
           ,[Message]
           ,[State]
           )
     VALUES
           ('1408231959411063352ca07edc847'
           ,'新系统开通公告'
           ,'	<br />  尊敬的各位朋友：<br />  &nbsp;&nbsp;&nbsp; 为了给广大客户更好的提供服务，新系统已开通，以全新的面貌为您服务。<br />  &nbsp;&nbsp;&nbsp; 如您遇到任何问题，请拨打我们的客户中心电话<span style="color:#B22222">4000-333-584</span>，我们将竭诚为您提供更优质的服务。<br />  &nbsp;&nbsp;&nbsp; 最后预祝新老客户工作顺利，事业兴旺！<br />  <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 狼奔（北京）科技有限公司<br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2014年9月6日'
          ,'开启'
            )
            INSERT INTO [dbo].[SysEmailTemp]
           ([Id]
           ,[Mail_name]
           ,[Subject]
           ,[Content]
           ,[Reply_email]
           ,[IsDefault]
        )
     VALUES
           ('14090515150232976744f80d07a79'
           ,'修改密码发送的邮件通知'
           ,'修改密码成功'
           ,'	{{用户名}}，你好：<br />  恭喜你，修改密码成功，新密码为：{{密码}}<br />  谢谢。'
           ,'clark@langben.com'
           ,'是'
           )
COMMIT TRANSACTION
