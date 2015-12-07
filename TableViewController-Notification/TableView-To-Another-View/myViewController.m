//
//  myViewController.m
//  TableView-To-Another-View
//
//  Created by Büşra Akdağ on 04/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()

@end

@implementation myViewController
@synthesize gonderilenKisi;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = gonderilenKisi.isim;

    NSLog(@"   %d tc kimlik nosuna sahip %@ adındaki kişi %@ şehrinde yaşıyor :) ", gonderilenKisi.tcKimlikNo, gonderilenKisi.isim, gonderilenKisi.sehir);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
