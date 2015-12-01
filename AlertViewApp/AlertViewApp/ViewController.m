//
//  ViewController.m
//  AlertViewApp
//
//  Created by Büşra Akdağ on 01/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //öncelikle bir alertview oluşturuyoruz sırasıyla parametrelere: başlık bilgisi, mesaj,self (delegate kendinde olmayan özelliklere erişmemizi değiştirmemizi sağlar eğer buraya self dersek delegate metodları kullanabiliriz bizde self diyerekhangi butona tıklanıldığını bulan delegate emtodu çağıracağız), iptal buton adı, diğer buton varsa onun adı.
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"BAŞLIK"
                                                    message:@"AÇILDI MI?"
                                                   delegate:self cancelButtonTitle:@"HAYIR"
                                          otherButtonTitles:@"BAŞKA BUTON", nil];
    
    
    //şimdi oluşturduğumuz alertview' ı gösteriyoruz.
    [alert show];
    
    //şimdi Yukarıda alert i tanımlarken kullandığımız UIAlertView e alt tuşuna basılı iken seçin. Açılan bölümden UIAlertView.h' e tıklayın. ve UIAlertViewDelegate metodlarına bakın. orda seçilen butonun indeksini bulan metodu göreceksiniz. Şimdi aşağıya o metodu çağıralım.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@" %d. indeksli button", buttonIndex);

}

@end
