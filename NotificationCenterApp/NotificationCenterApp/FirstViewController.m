//
//  FirstViewController.m
//  NotificationCenterApp
//
//  Created by Büşra Akdağ on 04/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    //notification üç bölümden oluşuyor: gönderici, alıcı, gödnerecenin alacağı metod.
    
    //şimdi butona her tıklanıldığında secondViewController ' daki sayıyı arttırması için aşağıdaki metodda bir sender tanımmlamalıyız. Daha sonra alıcı tarafında (secondViewController) bunu dinleyen (observerd) kısmı yazıyoruz.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sayiArttir:(id)sender {
    
    //ilk olarak ne göndereceğiz? number.
    
    NSNumber *number = [NSNumber numberWithInt:1];
    
    //NSMutableDictinory oluşturuyoruz: verileri göndermek için
    NSMutableDictionary *userinfo = [NSMutableDictionary dictionary];
    
    [userinfo setObject:number forKey:@"key"];
    
    
    //şimdi ilk olarak bir NotificationCenter oluşturuyoruz:
    // parametre olarak notification adı, ne gönderielceği, ve key'i belirtilir.
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"myNotification" object:nil userInfo:userinfo];
    
    //şimdi bunu dinleyen tarafıda SecondViewController.m ' de tanımmlıyoruz
    
}
@end
