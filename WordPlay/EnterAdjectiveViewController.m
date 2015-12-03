//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Michael Moss on 10/20/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;
@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    ResultsViewController *destination = segue.destinationViewController;
    destination.name = self.name;
    destination.verb = self.verb;
    destination.location = self.location;
    destination.adjective = self.adjectiveTextField.text;
}
- (IBAction)buttonPressed:(UIButton *)sender {
    if([self.adjectiveTextField hasText]){
        [self performSegueWithIdentifier: @"enterResultView" sender: nil];
    } else {
        self.adjectiveTextField.placeholder = @"Add an adjective silly!";
    }
}



@end
