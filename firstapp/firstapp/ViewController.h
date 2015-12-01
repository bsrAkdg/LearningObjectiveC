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

- (IBAction)clickButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutlet UIButton *btn;

@end

