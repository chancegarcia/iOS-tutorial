//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Chance Garcia on 04/24/12.
//  Copyright (c) 2012 chancegarcia.com. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController {
@private
    NSString *_userName;
}

@synthesize textField;
@synthesize label;
@synthesize userName = _userName;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;

    NSString *nameString = self.userName;

    if (0 == [nameString length])
    {
        nameString = @"World";
    }

    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];

    self.label.text = greeting;
}

- (BOOL) textFieldShouldReturn:(UITextField *) theTextField{
    if (theTextField == self.textField)
    {
        [theTextField resignFirstResponder];
    }

    return YES;
}
@end