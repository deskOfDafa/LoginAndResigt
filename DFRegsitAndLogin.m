//
//  DFRegsitAndLogin.m
//  文青
//
//  Created by qingyun on 16/11/5.
//  Copyright © 2016年 qingyun.dafa. All rights reserved.
//

#import "DFRegsitAndLogin.h"
#import "AFNetworking.h"
@implementation DFRegsitAndLogin


+(void)regist:(NSString *)appID :(NSString *)appKey :(NSString *)telephoneNum :(NSString *)smsCode :(NSString *)passWord{
    
    
    AFHTTPSessionManager *manager= [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json", @"text/html", nil];
    
    [manager.requestSerializer setValue:appID forHTTPHeaderField:@"X-LC-Id"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"X-LC-Key"];
    
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    
    NSString *url =@"https://api.leancloud.cn/1.1/usersByMobilePhone";
    
    
    NSDictionary* parameters = @{@"mobilePhoneNumber":telephoneNum,@"smsCode":smsCode,@"password":passWord};
    [manager POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
        
        NSLog(@"成功了%@",responseObject);
        
    }
          failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
              NSLog(@"%@",error); }]; }

//从storybord 连线过来的button方法（发送短信验证码）

+(void)sendVerificationCode:(NSString *)appKey :(NSString *)appID :(NSString *)telephone{
    
    // 前提引入AFNetworking 第三方库
    AFHTTPSessionManager *manager= [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json", @"text/html", nil];
    
    // 将请求格式转换为json，不然会出现401（权限错误）
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:appID forHTTPHeaderField:@"X-LC-Id"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"X-LC-Key"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    // 设置是否信任无效或过期的 SSL 证书的服务器。默认为否 //manager.securityPolicy.allowInvalidCertificates = YES;
    // 设置安全验证模式，默认为 AFSSLPinningModeNone
    
    //manager.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModePublicKey];
    NSDictionary *parameters = @{@"mobilePhoneNumber":telephone};
    NSString *url =@"https://api.leancloud.cn/1.1/requestSmsCode";
    [manager POST:url parameters:parameters progress:nil
          success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
              
              NSLog(@"成功了%@",responseObject);
          }
          failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
              NSLog(@"%@",error); }];
        }

+(void)login:(NSString *)appID :(NSString *)appKey :(NSString *)telephoneNum :(NSString *)passWord {
    
    AFHTTPSessionManager *manager= [AFHTTPSessionManager manager];
    // manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json", @"text/html", nil];
    [manager.requestSerializer setValue:appID forHTTPHeaderField:@"X-LC-Id"];
    [manager.requestSerializer setValue:appKey forHTTPHeaderField:@"X-LC-Key"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    NSString *url =@"https://api.leancloud.cn/1.1/login";
    
    NSDictionary* parameters = @{@"mobilePhoneNumber":telephoneNum,@"password":passWord};
 
    [manager GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"登陆成功");
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];
}





@end
