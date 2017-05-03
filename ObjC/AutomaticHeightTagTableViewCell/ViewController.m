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

@implementation NSArray (Extensions)

- (NSArray *)map:(id (^)(id obj))block {
    NSMutableArray *mutableArray = [NSMutableArray new];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [mutableArray addObject:block(obj)];
    }];
    return mutableArray;
}

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
    
    return [objects map:^id(id obj) {
        return [(NSArray *)obj map:^id(id obj) { return [(NSDictionary *)obj tag]; }];
    }];
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

#pragma mark - UIViewControllerTransitionCoordinator

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];

    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        [self.tableView reloadData];
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {}];
}

@end
