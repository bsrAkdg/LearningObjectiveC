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
                                          otherButtonTitles:@"OTURUM AÇ", nil];
    
    //şimdi Yukarıda alert i tanımlarken kullandığımız UIAlertView e alt tuşuna basılı iken seçin. Açılan bölümden UIAlertView.h' e tıklayın. ve UIAlertViewDelegate metodlarına bakın orda seçilen butonun indeksini bulan metodu göreceksiniz. Şimdi aşağıya o metodu çağıralım ama önce UIAlertViewDelegate'i kendi ViewController.h dosyamızda "<UIAlertViewDelegate>" içine yazalım.
    
    
    //eğer birden fazla alertview varsa bunlara "tag" ekleyebiliriz. Kontrol ederken [alert tag] == 12 diye kontrol edebiliriz.
    [alert setTag:12];
    
    
    //Alertimizi özelleştirelim kullanıcı adı ve şifre isteyen bir alert olsun: bunun için alertviewstyle' ı kullanacağız:
    [alert setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput ];
    
    //şimdi oluşturduğumuz alertview' ı gösteriyoruz.
    [alert show];
   
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //if([alertView tag] == 12){  NSLog(@" 12 nolu buton");
    
    
    if(buttonIndex == 0){
        NSLog(@"Cikis Yapıldı :( ");
    }else{
        
        //alertviewdeki 0. indekste kullanıcı adı 1. indekste şifre var.
        UITextField *uname = [alertView textFieldAtIndex:0];
        UITextField *pass = [alertView textFieldAtIndex:1];
        NSLog(@"kullanıcı adı : %@ sifre : %@ ", uname.text , pass.text );
        NSLog(@"Giriş Yapıldı :) ");
    
    }
}

@end
