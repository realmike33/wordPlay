//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Medichael Moss on 10/20/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterVerbViewController.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController
- (IBAction)nextButtonPressed:(UIButton *)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   
    EnterVerbViewController *destination = segue.destinationViewController;
    destination.name = self.nameTextField.text;
   
}
- (IBAction)onNextButtonPressed:(UIButton *)sender {
    if ([self.nameTextField hasText]) {
       [self performSegueWithIdentifier:@"enterVerbView" sender:nil];
    } else {
        self.nameTextField.placeholder = @"Say anything!";
    }
}



@end
