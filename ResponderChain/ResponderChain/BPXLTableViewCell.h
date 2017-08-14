//
//  BPXLTableViewCell.h
//  ResponderChain
//
//  Created by Brandon Alexander on 4/21/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BPXLEvent;

@protocol BPXLTableViewCellActionHandler <NSObject>

- (void) updateTitle:(id) sender forEvent:(BPXLEvent *) event;

@end

@interface BPXLTableViewCell : UITableViewCell

+ (NSString *) reuseIdentifier;

- (void) configureWithTitle:(NSString *) title;

@end
