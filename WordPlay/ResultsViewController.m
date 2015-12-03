//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Michael Moss on 10/20/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *yourString = [NSString stringWithFormat:@"%@ %@ %@ right to %@ ", self.adjective, self.name, self.verb, self.location];
    NSMutableAttributedString *mutableString = [[NSMutableAttributedString alloc] initWithString:yourString];
    NSRange boldedRange = NSMakeRange(5, 5);
    [mutableString beginEditing];
    [mutableString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:12] range:boldedRange];
    [mutableString endEditing];

    self.resultsTextView.attributedText = mutableString;
    self.resultsTextView.text = [mutableString string];
}


@end
