//
//  ViewController.m
//  firstapp
//
//  Created by Büşra Akdağ on 01/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

//view bileşenlerindeki olaylar burada işlenir.

@implementation ViewController
@synthesize label,txtfield;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Uygulama açılırken yapılması gerekenler burada işlenir.

    //txtfield' in uygulama ilk açıldığında seçili olarak gelmesini istiyorsam;
    [txtfield becomeFirstResponder];
    
    //txtfield' de parola alıcaksak;
    [txtfield setSecureTextEntry:TRUE];
    
    //txtfielde artık sadece telefon numarasının girilebileceği bir keyboard açılıyor.
    [txtfield setKeyboardType:UIKeyboardTypeNumberPad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)editingbegin:(id)sender {
    NSLog(@"değiştirme işlemi başladı");
    
}
- (IBAction)editingend:(id)sender {
    NSLog(@"değiştirme işlemi sonlandı");
    
    //txtfield' den aldığı değeri label' a set eder. (self'i javadaki this gibi düşün.)
    NSString *str = self.txtfield.text;
    [label setText: str];
  
}
- (IBAction)editingchanged:(id)sender {
    
    //txtfield' e her yazı girildiğinde değişenin ne olduğunu yazar.
    NSLog(@"   %@   ", [txtfield text] );
  
    NSLog(@"tekrar değişti");
}
- (IBAction)allscreenbutton:(id)sender {
    NSLog(@"tap çalıştı");
    
    //bu metod klavyeyi kapatmayı sağlar.
    [txtfield resignFirstResponder];
}
@end
