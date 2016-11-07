//
//  DFRegsitAndLogin.h
//  文青
//
//  Created by qingyun on 16/11/5.
//  Copyright © 2016年 qingyun.dafa. All rights reserved.
// 1.项目中需要提前安装afnetworing
// 2.把leancloud 中项目的 发送验证码服务 开启
// 3.复制 key  和id
// 4. 将本文件拖入项目中，在需要的地方引入头文件，类名调用方法如
// [DFRegsitAndLogin login:appID(NSString *)appID appKey:(NSString *)appKey telephoneNum:(NSString *)telephoneNum passWord:(NSString *)passWord];

#import <Foundation/Foundation.h>

@interface DFRegsitAndLogin : NSObject
#pragma mark 登录使用
+(void)loginAppID:(NSString *)appID appKey:(NSString *)appKey telephoneNum:(NSString *)telephoneNum passWord:(NSString *)passWord;//登录

#pragma mark 注册使用
+(void)sendVerificationCodeAppID:(NSString *)appID appKey:(NSString *)appKey telephone:(NSString *)telephone;//发送验证码

+(void)registAppID:(NSString *)appID appKey:(NSString *)appKey telephoneNum:(NSString *)telephoneNum smsCode:(NSString *)smsCode passWord:(NSString *)passWord;//注册

#pragma mark 找回密码使用
+(void)requestPasswordResetBySmsCodeAppID:(NSString *)appID appKey:(NSString *)appKey telephone:(NSString *)telephone;//申请验证码
+(void)resetPasswordAppID:(NSString *)appID appKey:(NSString *)appKey smsCode:(NSString *)smsCode NewPassWord:(NSString *)NewpassWord;//从新设置密码


@end
