//
//  BPXLTableViewController.m
//  ResponderChain
//
//  Created by Brandon Alexander on 4/21/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

#import "BPXLTableViewController.h"
#import "BPXLTableViewCell.h"
#import "BPXLEvent.h"

@interface BPXLTableViewController ()
@property NSArray *dataSource;
@end

@implementation BPXLTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = @[@"The Phantom Menace", @"Attack of the Clones", @"Revenge of the Sith", @"A New Hope", @"Empire Strikes Back", @"Return of the Jedi", @"The Force Awakens", @"The Last Jedi"];

//    [self becomeFirstResponder];
}

- (BOOL) canBecomeFirstResponder {
    return YES;
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:[BPXLTableViewCell reuseIdentifier]];
}

- (void) tableView:(UITableView *)tableView willDisplayCell:(BPXLTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title = self.dataSource[indexPath.row];
    
    [cell configureWithTitle:title];
}

#pragma mark - Actions

//- (void) updateTitle:(id) sender forEvent:(BPXLEvent *) event{
//    self.title = event.title;
//}

@end
