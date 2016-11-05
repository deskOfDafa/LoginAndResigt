# LoginAndResigt
使用前，需要将leancloud的短信验证码服务打开，将头文件引入，然后使用类名调用如调用登录方法
[DFRegsitAndLogin login:(NSString *)appID :(NSString *)appKey :(NSString *)telephoneNum :(NSString *)passWord];


+(void)login:(NSString *)appID :(NSString *)appKey :(NSString *)telephoneNum :(NSString *)passWord;//登录

+(void)sendVerificationCode:(NSString *)appKey :(NSString *)appID :(NSString *)telephone;//发送验证码

+(void)regist:(NSString *)appID :(NSString *)appKey :(NSString *)telephoneNum :(NSString *)smsCode :(NSString *)passWord;//注册

自己封装的一个leancloud 注册登录功能， 一行代码可实现。

