//
//  SecondViewController.m
//  NotificationCenterApp
//
//  Created by Büşra Akdağ on 04/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize sayikac,sayi;

- (void)viewDidLoad {
    [super viewDidLoad];


    //gelen notification' ı dinlemek için observed eden metodu  çağırıyoruz.
    // parametre olarak ilk kim dinliyor :  self
    // selector: hangi metod çağrılacak
    // name : dinlenilecek notification adı
    
    [[NSNotificationCenter defaultCenter] addObserver:self  selector:@selector(  receiveNotification: ) name:@"myNotification" object:nil];
    
    sayikac =0;
    
}

//DİKKAT PARAMETRE OLARAK NSNotification alıyor

-(void) receiveNotification : (NSNotification*)notification
{
    //gelen notificationdan userinfoya ait olan NSMutableDictionary'i al gelenDic' e ata.
    NSMutableDictionary *gelenDic = notification.userInfo;

    //gelenDic' tende daha önce verdiğimiz key üzerinden direk değere ulaşacağız bunuda number a atayacağız:
    NSNumber *number = [gelenDic objectForKey:@"key"];

    int i = [number intValue];
    i++;
    
    //sayiyi her butona basıldığında arttırcağımız için:
    sayi.text =  [NSString stringWithFormat:@"%d", i ];
    
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
