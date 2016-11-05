# LoginAndResigt

 1.项目中需要提前安装afnetworing
 2.把leancloud 中项目的 发送验证码服务 开启
 3.复制 key  和id
 4. 将本文件拖入项目中，在需要的地方引入头文件，类名调用方法如
 
[DFRegsitAndLogin login:appID(NSString *)appID appKey:(NSString *)appKey telephoneNum:(NSString *)telephoneNum passWord:(NSString *)passWord];

+(void)login:appID(NSString *)appID appKey:(NSString *)appKey telephoneNum:(NSString *)telephoneNum passWord:(NSString *)passWord;//登录

+(void)sendVerificationCode:appKey(NSString *)appKey appID:(NSString *)appID telephone:(NSString *)telephone;//发送验证码

+(void)regist:appID(NSString *)appID appKey:(NSString *)appKey telephoneNum:(NSString *)telephoneNum smsCode:(NSString *)smsCode passWord:(NSString *)passWord;//注册

自己封装的一个leancloud 注册登录功能， 一行代码可实现。

