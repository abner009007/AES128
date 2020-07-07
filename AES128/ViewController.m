//
//  ViewController.m
//  AES128
//
//  Created by 乐天 on 2020/6/30.
//  Copyright © 2020 乐天. All rights reserved.
//


#import "ViewController.h"
#import "NSData+AES128.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSString * bodyString = @"123";
    NSString * key = @"abner";
    
    //加解密都是字符串
    NSString * aesString = [NSData AES128EncryptWithPlainText:bodyString key:key];
    
    NSLog(@"====abner==aesString===%@",aesString);
    
    NSString * unaesString = [NSData AES128DecryptWithCiphertext:aesString key:key];
    
    NSLog(@"====abner==unaesString===%@",unaesString);
    
    //加解密是data
    
    NSData *bodyData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    NSData *aesData = [NSData AES128EncryptWithData:bodyData key:key];
    NSData *unaesData = [NSData AES128DecryptWithData:aesData key:key];
    if ([bodyData isEqualToData:unaesData]) {
        NSLog(@"666");
    }
    
    
    
    
    
    
}


@end
