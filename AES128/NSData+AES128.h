//
//  NSData+AES128.h
//  ChatProject
//
//  Created by dy on 2019/11/7.
//  Copyright © 2019 dy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonKeyDerivation.h>


NS_ASSUME_NONNULL_BEGIN

@interface NSData (AES128)

//加密
+ (NSString *)AES128EncryptWithPlainText:(NSString *)plain key:(NSString*)key;
//解密
+ (NSString *)AES128DecryptWithCiphertext:(NSString *)ciphertexts key:(NSString*)key;


//加密
+ (NSData *)AES128EncryptWithData:(NSData *)data key:(NSString*)key;
//解密
+ (NSData *)AES128DecryptWithData:(NSData *)data key:(NSString*)key;



@end

NS_ASSUME_NONNULL_END
