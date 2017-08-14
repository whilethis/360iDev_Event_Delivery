//
//  BPXLTableViewCell.m
//  ResponderChain
//
//  Created by Brandon Alexander on 4/21/16.
//  Copyright © 2016 Black Pixel. All rights reserved.
//

#import "BPXLTableViewCell.h"
#import "BPXLEvent.h"

@interface BPXLTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation BPXLTableViewCell

+ (NSString *) reuseIdentifier {
    return NSStringFromClass([self class]);
}

- (void) configureWithTitle:(NSString *) title {
    self.titleLabel.text = title;
}

- (IBAction)cellButtonTapped:(id)sender {
    BPXLEvent *event = [[BPXLEvent alloc] init];
    event.title = self.titleLabel.text;
    
    [[UIApplication sharedApplication] sendAction:@selector(updateTitle:forEvent:) to:nil from:self forEvent:event];
}

@end
