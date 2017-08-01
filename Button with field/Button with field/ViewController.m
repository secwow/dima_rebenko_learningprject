//
//  ViewController.m
//  Button with field
//
//  Created by New user on 01.08.17.
//  Copyright © 2017 New user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *TextField;
    __weak IBOutlet UILabel *textLable;
    
}
- (IBAction)onTouch:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onTouch:(id)sender {
    [textLable setText:[TextField text]];
}
@end
