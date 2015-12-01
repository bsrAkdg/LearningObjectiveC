//
//  ViewController.h
//  firstapp
//
//  Created by Büşra Akdağ on 01/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <UIKit/UIKit.h>

//view bileşenleri burada tanımlanır.

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISlider *sld;
@property (strong, nonatomic) IBOutlet UISwitch *swt;
- (IBAction)changeSlider:(id)sender;
- (IBAction)changeSwitch:(id)sender;

@end

