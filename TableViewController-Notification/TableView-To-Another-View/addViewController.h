//
//  addViewController.h
//  TableView-To-Another-View
//
//  Created by Büşra Akdağ on 04/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Kisi.h"

@interface addViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *adsoyad_txt;
@property (strong, nonatomic) IBOutlet UITextField *tckimlik_txt;
@property (strong, nonatomic) IBOutlet UITextField *sehir_txt;
- (IBAction)kisiEkle:(id)sender;

@end
