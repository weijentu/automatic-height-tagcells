//
//  AHTag.m
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-07-16.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

#import "AHTag.h"

#define CATEGORY_KEY @"CATEGORY"
#define TITLE_KEY @"TITLE"
#define COLOR_KEY @"COLOR"
#define URL_KEY @"URL"
#define ENABLED_KEY @"ENABLED"

@implementation AHTag

@end

@implementation NSDictionary (Extensions)

- (AHTag *)tag {
    
    AHTag *tag = [AHTag new];
    tag.category = self[CATEGORY_KEY];
    tag.title = self[TITLE_KEY];
    tag.color = ((NSString *)self[COLOR_KEY]).color;
    tag.url = [NSURL URLWithString:self[URL_KEY]];
    tag.enabled = self[ENABLED_KEY];
    
    return tag;

}

@end

@implementation NSString (Extensions)

- (UIColor *)color {
    unsigned value = 0;
    NSScanner *scanner = [NSScanner scannerWithString:self];
    [scanner scanHexInt:&value];
    
    return [UIColor colorWithRed:((float)((value & 0xFF0000) >> 16))/255.0 \
                           green:((float)((value & 0x00FF00) >>  8))/255.0 \
                            blue:((float)((value & 0x0000FF) >>  0))/255.0 \
                           alpha:1.0];
}

@end
