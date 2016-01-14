//
//  SFDateUtil.m
//
//  Created by Jeffrey Jackson on 1/7/16.
//

#import "SFDateUtil.h"

@implementation SFDateUtil

+ (NSString *)toSOQLDateTimeString:(NSDate *)date isDateTime:(BOOL)isDateTime {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
    
    if (isDateTime) {
        [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.000'Z'"];
        return [dateFormatter stringFromDate:date];
    } else {
        [dateFormatter setDateFormat:@"yyyy-MM-dd"];
        return [dateFormatter stringFromDate:date];
    }
    return nil;
}

+ (NSDate *)SOQLDateTimeStringToDate:(NSString *)soqlDateTimeString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.000'Z'"];
    return [dateFormatter dateFromString:soqlDateTimeString];
}

@end



