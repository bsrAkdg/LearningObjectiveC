//
//  ViewController.h
//  SequesApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "firstViewController.h"
#import "secondViewController.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtView;

- (IBAction)goView:(id)sender;

@end

