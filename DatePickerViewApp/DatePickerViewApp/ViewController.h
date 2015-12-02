//
//  ViewController.h
//  DatePickerViewApp
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)dateDegistir:(id)sender;
@end

