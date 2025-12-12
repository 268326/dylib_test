#import <Foundation/Foundation.h>

%hook NSUserDefaults

- (NSInteger)integerForKey:(NSString *)key {
    // 把这个 key 换成 App 真正的会员状态 key
    if ([key isEqualToString:@"subscriptionStatus"]) {
        return 3; // 返回会员状态数值
    }
    return %orig;
}

- (BOOL)boolForKey:(NSString *)key {
    // 如果 App 是用布尔值判断的，用这个
    if ([key isEqualToString:@"isVip"]) {
        return YES;
    }
    return %orig;
}

%end
