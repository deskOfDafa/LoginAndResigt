//
//  DFRegsitAndLogin.h
//  文青
//
//  Created by qingyun on 16/11/5.
//  Copyright © 2016年 qingyun.dafa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DFRegsitAndLogin : NSObject
+(void)login:(NSString *)appID :(NSString *)appKey :(NSString *)telephoneNum :(NSString *)passWord;//登录
+(void)sendVerificationCode:(NSString *)appKey :(NSString *)appID :(NSString *)telephone;//发送验证码
+(void)regist:(NSString *)appID :(NSString *)appKey :(NSString *)telephoneNum :(NSString *)smsCode :(NSString *)passWord;//注册
@end
