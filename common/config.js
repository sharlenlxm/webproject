//prd  线上		cs 测试  
var Edition = 'prd';
var server;
if(Edition == 'prd'){
	server  = 'http://192.168.1.107:5006/shanhe-mechanism/'
}else{
	server  = 'http://192.168.1.116:8080/shanhe-mechanism/'
}

var CmsConfig = {

    ServiceUrl: {
         //ApiRootUrl: 'http://10.31.141.200:8080/RTAEDS/',
        //ApiRootUrl:'http://192.168.1.116:8080/IkkyuChegjtrack1/'
        ApiRootUrl:server
        // imgUrl:imgAdd
    },
    addressUrl: {
        Login: {
            // 获取验证码
            createCode: "login/createCode",
            // 登录
            login: "login/loginJG",
            exitLogin:"login/exitLogin"
        },
        //机构后台接口
        Mechanism: {
            //---系统设置
            //基本设置
            getInstitutionRegisterInfo:"Institution/getInstitutionRegisterInfo",
            updateInstitutionRegisterInfo:"Institution/updateInstitutionRegisterInfo",
            //邮件设置
            getInstitutionMailboxSetting:"InstitutionMailboxSetting/getInstitutionMailboxSetting",
            updateInstitutionMailboxSetting:"InstitutionMailboxSetting/updateInstitutionMailboxSetting",
            insertInstitutionMailboxSetting:"InstitutionMailboxSetting/insertInstitutionMailboxSetting",
            //短信设置
            getInstitutionSMSSetting:"InstitutionSMSSetting/getInstitutionSMSSetting",
            updateSMSSetting:"InstitutionSMSSetting/updateSMSSetting",
            insertSMSS:"InstitutionSMSSetting/insertSMSS",
            //修改密码
            updatePassword:"login/updatePassword",
            //管理员管理列表
            getInstitutionStaff:"InstitutionStaff/getInstitutionStaff",
            //添加管理员
            insertInstitutionStaff:"InstitutionStaff/insertInstitutionStaff",
            insterRiskSetUp:"InstitutionRiskSetUp/insterRiskSetUp",
            updateRiskSetUp:"InstitutionRiskSetUp/updateRiskSetUp",
            //修改管理员密码
            //删除管理员

            //--商户管理
            //商户列表
            /* 操作接口：
            //登录（登录标识）
            //支付通道设置
            //子账户列表
            //风控设置
            //费率设置
            //密码设置
            //编辑商户信息
            //商户秘钥
            //删除商户

            */
            //添加商户
            //风控设置
            getRiskSetUp:"InstitutionRiskSetUp/getRiskSetUp",
            //登录记录
            //商户操作日志，列表


            //--代理设置
            /*代理列表
            操作接口：
            登录(登录方法？)
            费率查询与修改
            密码修改接口
            编辑接口
            删除代理接口
            
            */
            //添加代理接口
            //资金变动列表接口

            //--全部订单
            //全部订单查询
            //列表操作接口：查看、同步
            //成功订单、未支付订单、异常订单同上


            //--通道管理
            //风控实况列表接口
            //通道管理列表查询
            /*操作：通道状态的改变接口
            子账号接口
            风控编辑接口
            产品接口
            编辑接口
            删除接口

            */
            //通道配置接口


            //--广告管理
            //广告列表
            //广告列表操作：
            //状态的开/关
            //编辑接口
            //删除接口


            //--财务分析
            //查询当日统计
            //商户订单金额TOP10列表
            //商户订单笔数TOP10列表
            //商户订单成功率TOP10列表
            //查询30天交易订单概况折线图
            //查询时间间隔展现折线图
            //平台报表列表
            //列表操作：冲正接口
            //接口交易统计
            //查询支付通道接口
            //根据父级查询子级支付统计

        },
        //收银后台
        Coller: {
        	
        },
        //商户后台
        Merchant:{
  			
        },
        //公共
        Public: {
          

        },
        
       
    }

};