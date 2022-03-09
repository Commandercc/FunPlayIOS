//
//  CCObjectGenerateFromClassString.m
//  FunPlayIOS
//
//  Created by zhengxu on 2022/3/9.
//

#import "CCObjectGenerateFromClassString.h"

@implementation CCObjectGenerateFromClassString
+ (id)createObjectGenerateFromClassString:(NSString *)classString
{
    return [[NSClassFromString(classString) alloc] init];
}
@end
