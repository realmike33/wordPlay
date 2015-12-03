//
//  EnterLocationViewController.m
//  WordPlay
//
//  Created by Michael Moss on 10/20/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "EnterLocationViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *locationTextField;

@end

@implementation EnterLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)nextButtonPressed:(UIButton *)sender {
    if ([self.locationTextField hasText]) {
        [self performSegueWithIdentifier:@"enterAdjectiveView" sender:sender];
    } else {
        self.locationTextField.placeholder = @"whaaaa?";
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    NSLog(@"%@", sender.titleLabel.text);
    EnterAdjectiveViewController *destination = segue.destinationViewController;
    destination.location = self.locationTextField.text;
    destination.name = self.name;
    destination.verb = self.verb;
}


@end
