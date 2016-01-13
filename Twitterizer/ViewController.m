//
//  ViewController.m
//  Twitterizer
//
//  Created by Joseph Mouer on 1/13/16.
//  Copyright © 2016 Joseph Mouer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *label;

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
    for (int i = 0; i < length; i++)
    {
        NSString *character = [NSString stringWithFormat:@"%c", [twitterizedText characterAtIndex:i]];
        if (![character containsString:@"a"])
        if (![character containsString:@"e"])
        if (![character containsString:@"i"])
        if (![character containsString:@"o"])
        if (![character containsString:@"u"])
        if (![character containsString:@"A"])
        if (![character containsString:@"E"])
        if (![character containsString:@"I"])
        if (![character containsString:@"O"])
        if (![character containsString:@"U"])
        {
            [mutableText appendString:character];
        }
    }
    
    self.textView.text = [NSString stringWithFormat:@"%@", mutableText];
    
}

-(void)textViewDidChange:(UITextView *)textView
{
    NSInteger count = self.textView.text.length;
    NSString *countValue = [NSString stringWithFormat:@"%lu", count];
    self.label.text = countValue;
}


    

@end
