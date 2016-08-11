//
//  Factory.h
//  GameLive
//

//  Created by tarena31 on 16/8/5.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Factory : NSObject
+(void)addPopBackItemForVC:(UIViewController *)vc;
+(void)addDismissItemForVC:(UIViewController *)vc;
+(void)addSearchItemForVC:(UIViewController *)vc clickedHandler:(void(^)())handler;
@end
