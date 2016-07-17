//
//  AHTagTableViewCell.h
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-07-16.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AHTagsLabel.h"

@interface AHTagTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet AHTagsLabel *label;
@end
