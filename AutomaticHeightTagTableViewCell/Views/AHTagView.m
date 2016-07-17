//
//  AHTagView.m
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-07-16.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

#import "AHTagView.h"

@implementation AHTagView {
    UILabel *_label;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupViews];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setupViews {
    self.backgroundColor = [UIColor whiteColor];
    _label = [UILabel new];
    _label.textColor = [UIColor whiteColor];
    _label.translatesAutoresizingMaskIntoConstraints = NO;
    _label.layer.cornerRadius = 8;
    _label.layer.masksToBounds = YES;
    [self addSubview:_label];
    [self setupConstraints];
}

- (void)setupConstraints {
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray new];
    
    [constraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-4.0-[_label]-4.0-|"
                                                                             options:NSLayoutFormatDirectionLeadingToTrailing
                                                                             metrics:nil
                                                                               views:@{@"_label": _label}]];
    
    [constraints addObject:[NSLayoutConstraint constraintWithItem:_label
                                                        attribute:NSLayoutAttributeHeight
                                                        relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                           toItem:nil
                                                        attribute:NSLayoutAttributeHeight
                                                       multiplier:1.0
                                                         constant:24.0]];
    
    [constraints addObject:[NSLayoutConstraint constraintWithItem:_label
                                                        attribute:NSLayoutAttributeTop
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:self
                                                        attribute:NSLayoutAttributeTop
                                                       multiplier:1.0
                                                         constant:3.0]];
    
    [constraints addObject:[NSLayoutConstraint constraintWithItem:self
                                                        attribute:NSLayoutAttributeBottom
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:_label
                                                        attribute:NSLayoutAttributeBottom
                                                       multiplier:1.0
                                                         constant:3.0]];
    
    [NSLayoutConstraint activateConstraints:constraints];
}

#pragma mark - Getter

- (UIImage *)image {
    UIGraphicsBeginImageContextWithOptions(self.frame.size, YES, 0.0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
