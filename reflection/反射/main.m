//
//  main.m
//  反射
//
//  Created by Mac on 15-1-23.
//  Copyright (c) 2015年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Class clas=NSClassFromString(@"person");
        if (clas) {
            NSLog(@"clas这个类存在");
            
            SEL sel=NSSelectorFromString(@"requesturl:asdjl:");
            
            if ([clas instancesRespondToSelector:sel])  {
                
                NSLog(@"该方法被映射了");
                NSObject *objc=[[clas alloc]init];

                if ([objc respondsToSelector:sel]) {

                [objc performSelectorOnMainThread:sel withObject:@"hello" waitUntilDone:YES];
                }
            }else
            {
            NSLog(@"该方法没有被映射");
            }
        }else{
            NSLog(@"clas这个类存在");
        }
        Class clas1=NSClassFromString(@"pers1on");
        if (clas1) {
            NSLog(@"clas1这个类存在");
        }else{
         NSLog(@"clas1这个类不存在");
        }
    }
    return 0;
}

