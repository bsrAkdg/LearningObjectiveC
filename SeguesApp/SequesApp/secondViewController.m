//
//  secondViewController.m
//  SequesApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"   %d  ", self.intdeneme);
    NSLog(@"   %@  ",[self.arr objectAtIndex:0]);
    NSLog(@"   %@  ",[self.arr objectAtIndex:1]);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
