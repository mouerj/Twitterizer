//
//  ViewController.m
//  Twitterizer
//
//  Created by Joseph Mouer on 1/13/16.
//  Copyright © 2016 Joseph Mouer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)twitterize:(UIButton *)sender
{
    NSString *twitterizedText = self.textView.text;
    NSMutableString *mutableText = [NSMutableString new];
    NSInteger length = twitterizedText.length;
    for (int i = 0; i < length; i++) {
        if ([twitterizedText characterAtIndex:i] == ) {
            <#statements#>
        }
    }
    
//    NSString *character = [NSString stringWithFormat:@"%c", [firstPart characterAtIndex:i - 1]];
//    [secondPart appendString:character];
    
}

@end
