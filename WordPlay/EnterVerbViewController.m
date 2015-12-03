//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Michael Moss on 10/20/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterLocationViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterLocationViewController *destination = segue.destinationViewController;
    destination.verb = self.verbTextField.text;
    destination.name = self.name;
}
- (IBAction)nextButtonPressed:(UIButton *)sender {
    if ([self.verbTextField hasText]) {
        [self performSegueWithIdentifier:@"enterLocationView" sender:nil];
    } else {
        self.verbTextField.placeholder = @"Verb is what you do.";
    }
}


@end
