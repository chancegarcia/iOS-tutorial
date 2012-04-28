//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Chance Garcia on 04/24/12.
//  Copyright (c) 2012 chancegarcia.com All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
- (IBAction)changeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (copy, nonatomic) NSString *userName;

@end