//
//  ViewController.m
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-07-16.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

#import "ViewController.h"
#import "AHTagTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray<NSArray<AHTag *> *> *_dataSource;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"TAGS";
    
    _dataSource = [self parseJSON];
    
    UINib *nib = [UINib nibWithNibName:@"AHTagTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)parseJSON {
    NSError *error;
    NSURL *URL= [[NSBundle mainBundle] URLForResource:@"TagGroups" withExtension:@"json"];
    NSData *data = [NSData dataWithContentsOfURL:URL];
    NSArray *objects = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    
    NSMutableArray *mArray = [NSMutableArray new];
    for (NSArray *object in objects) {
        NSMutableArray *nArray = [NSMutableArray new];
        for (NSDictionary *dictionary in object) {
            [nArray addObject:dictionary.tag];
        }
        [mArray addObject:nArray];
    }
    
    return mArray;
}

#pragma mark - UITableViewDataSource

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return _dataSource[section][0].category;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(id)object atIndexPath:(NSIndexPath *)indexPath {
    if (![object isKindOfClass:[AHTagTableViewCell class]]) {
        return;
    }
    AHTagTableViewCell *cell = (AHTagTableViewCell *)object;
    cell.label.tags = _dataSource[indexPath.section];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    UITableViewHeaderFooterView *v = (UITableViewHeaderFooterView *)view;
    v.textLabel.textColor = [UIColor darkGrayColor];
}

@end
