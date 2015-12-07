//
//  addViewController.m
//  TableView-To-Another-View
//
//  Created by Büşra Akdağ on 04/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "addViewController.h"

@interface addViewController ()

@end

@implementation addViewController
@synthesize tckimlik_txt,adsoyad_txt,sehir_txt;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    self.title = @"Yeni Kişi Ekle";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)kisiEkle:(id)sender {
    
    //yeni ekleyeceğim kişilerin bilgilerini alıyorum:
    Kisi *k = [[Kisi alloc]init];
    k.isim = adsoyad_txt.text;
    int tc = [tckimlik_txt.text integerValue];
    k.tcKimlikNo = tc;
    k.sehir = sehir_txt.text;
    
    //şimdi NSNotificationCenter' da yaptığımız gibi bir NSMUtableDictionary oluşturuyoruz.
    
    NSMutableDictionary * dic = [NSMutableDictionary dictionary];
    
    //Bu dictionary' e key atıyoruz. Artık akrşı tarafa gönderecek bir objemiz var bu yüzden setOBject' te bu objeyi belirtiyoruz. Bunu dinleyen yer bu keyi kulllanarak objeyi çekecek:
    
    [dic setObject:k forKey:@"kisi"];
    
    
    //şimdi ilk olarak bir NotificationCenter oluşturuyoruz:
    // parametre olarak notification adı, ne gönderielceği, ve key'i belirtilir.
    [[NSNotificationCenter defaultCenter] postNotificationName:@"kisi_ekle" object:nil userInfo:dic];
    
    //şimdi bu k objesini myTableViewController' da dinleyecek kodu yazalımmm! myTableViewController.m ' ye bakınn !!  (receiveNotification: fonksiyonu dinler)!!
    
    
    //kişi ekledikten sonra bir önceki view' e dönmek için:
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
