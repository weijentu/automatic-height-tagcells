//
//  TagGroups.m
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-07-16.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

#import "TagGroups.h"

@implementation TagGroups

+ (NSArray<NSArray<AHTag *> *> *)dataSource {
    NSArray *pinterest = @[[self pin1], [self pin2], [self pin3], [self pin4]];
    NSArray *genre = @[[self genre1], [self genre2], [self genre3], [self genre4], [self genre5], [self genre6], [self genre7], [self genre8], [self genre9], [self genre10]];
    NSArray *device = @[[self device1], [self device2], [self device3], [self device4], [self device5], [self device6], [self device7], [self device8], [self device9]];
    NSArray *app = @[[self app1], [self app2], [self app3], [self app4], [self app5], [self app6], [self app7], [self app8], [self app9], [self app10], [self app11], [self app12], [self app13], [self app14], [self app15], [self app16], [self app17], [self app18], [self app19], [self app20], [self app22], [self app22], [self app23], [self app24]];
    return @[pinterest, genre, device, app];
}

#pragma mark - Pinterest

+ (AHTag *)pin1 {
    AHTag *tag = [AHTag new];
    tag.category = @"Pinterest";
    tag.title = @"All Pins";
    tag.color = [UIColor colorWithRed:1 green:0.56 blue:0.56 alpha:1];
    tag.url = [NSURL URLWithString:@"http://pinterest.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)pin2 {
    AHTag *tag = [AHTag new];
    tag.category = @"Pinterest";
    tag.title = @"Your Pins";
    tag.color = [UIColor colorWithRed:1 green:0.56 blue:0.56 alpha:1];
    tag.url = [NSURL URLWithString:@"http://pinterest.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)pin3 {
    AHTag *tag = [AHTag new];
    tag.category = @"Pinterest";
    tag.title = @"People";
    tag.color = [UIColor colorWithRed:1 green:0.56 blue:0.56 alpha:1];
    tag.url = [NSURL URLWithString:@"http://pinterest.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)pin4 {
    AHTag *tag = [AHTag new];
    tag.category = @"Pinterest";
    tag.title = @"Boards";
    tag.color = [UIColor colorWithRed:1 green:0.56 blue:0.56 alpha:1];
    tag.url = [NSURL URLWithString:@"http://pinterest.com"];
    tag.enabled = @YES;
    return tag;
}

#pragma mark - Genere

+ (AHTag *)genre1 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Classical";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)genre2 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Comedy";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)genre3 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Country";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)genre4 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Dance";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)genre5 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Drama";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)genre6 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Early Listening";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)genre7 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Electronic";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)genre8 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Folk";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)genre9 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Hip Hop/Rap";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)genre10 {
    AHTag *tag = [AHTag new];
    tag.category = @"Genre";
    tag.title = @"Holiday";
    tag.color = [UIColor colorWithRed:0.626 green:0.56 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://itunes.com"];
    tag.enabled = @YES;
    return tag;
}

#pragma mark - Device

+ (AHTag *)device1 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Mobile";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)device2 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Computer";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)device3 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Tablet";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)device4 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Car";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)device5 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Speaker";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)device6 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Playstation";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)device7 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"TV";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)device8 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Android Wear";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)device9 {
    AHTag *tag = [AHTag new];
    tag.category = @"Device";
    tag.title = @"Web Player";
    tag.color = [UIColor colorWithRed:0.56 green:0.713 blue:1 alpha:1];
    tag.url = [NSURL URLWithString:@"http://www.spotify.com"];
    tag.enabled = @YES;
    return tag;
}

#pragma mark - App store

+ (AHTag *)app1 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Books";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app2 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Business";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app3 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Catalogues";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app4 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Education";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app5 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Finance";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app6 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Food & Drink";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app7 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Games";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)app8 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Health & Fitness";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app9 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Kids";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app10 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Lifestyle";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app11 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Medical";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app12 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Music";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app13 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Navigation";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app14 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"News";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)app15 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Magazines & Newspapers";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)app16 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Photo & Video";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app17 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Productivity";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @NO;
    return tag;
}

+ (AHTag *)app18 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Reference";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app19 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Shopping";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app20 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Social Networking";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app21 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Sports";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app22 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Travel";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app23 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Utilities";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

+ (AHTag *)app24 {
    AHTag *tag = [AHTag new];
    tag.category = @"App Store";
    tag.title = @"Weather";
    tag.color = [UIColor colorWithRed:0.396 green:0.803 blue:0.64 alpha:1];
    tag.url = [NSURL URLWithString:@"http://appstore.com"];
    tag.enabled = @YES;
    return tag;
}

@end
