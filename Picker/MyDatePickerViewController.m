//
//  diaryViewController.m
//  Picker
//
//  Created by ahadnawaz on 06/03/2013.
//  Copyright (c) 2013 ahadnawaz. All rights reserved.
//

#import "MyDatePickerViewController.h"

@interface MyDatePickerViewController ()

@end

@implementation MyDatePickerViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.datePickerView.hidden=YES;
	// Do any additional setup after loading the view, typically from a nib.
    self.datePickerView.frame = CGRectMake(0, 500, 320, self.datePickerView.frame.size.height);
    [self.view addSubview:self.datePickerView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [self.dateTextField resignFirstResponder];
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if(self.dateTextField==textField){
        [UIView beginAnimations:@"Date Key Pad" context:nil];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
        self.datePickerView.frame = CGRectMake(0, 203, 320, self.datePickerView.frame.size.height);
        
        [UIView commitAnimations];
        self.datePickerView.hidden=NO;
        
        return NO;
    }

    
        return YES;
}

- (IBAction)selectedDate:(id)sender {
    NSDate *date=[self.datePicker date];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:[NSString stringWithFormat:@"%@",date ] message:@"your choice" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

-(IBAction)hideKeyPade:(id)sender
{
    [UIView beginAnimations:@"Date Key Pad" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    self.datePickerView.frame = CGRectMake(0, 500, 320, self.datePickerView.frame.size.height);
    
    [UIView commitAnimations];
    
    [UIView commitAnimations];
    
}
@end
