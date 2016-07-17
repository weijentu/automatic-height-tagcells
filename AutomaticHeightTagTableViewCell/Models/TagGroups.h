//
//  TagGroups.h
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-07-16.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AHTag.h"

@interface TagGroups : NSObject
+ (NSArray<NSArray<AHTag *> *> *)dataSource;
@end
