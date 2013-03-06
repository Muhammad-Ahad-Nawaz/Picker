//
//  diaryViewController.h
//  Picker
//
//  Created by ahadnawaz on 06/03/2013.
//  Copyright (c) 2013 ahadnawaz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyDatePickerViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIView *datePickerView;
@property (strong, nonatomic) IBOutlet UITextField *dateTextField;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)selectedDate:(id)sender;
-(IBAction)hideKeyPade:(id)sender;

@end
