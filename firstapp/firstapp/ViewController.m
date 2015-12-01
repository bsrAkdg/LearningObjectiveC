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
@synthesize label,btn; //dersek label' ı al çizgi ile (_label) değil direk "label" olarak çağırabiliriz.

- (void)viewDidLoad {
    [super viewDidLoad];
    // Uygulama açılırken yapılması gerekenler burada işlenir.
    //diyelimki uygulama açıldığında tittle renkleri değişsin
    //forstate: hangi durumda değişeceğini belirtir
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    
    NSLog(@"butona tıklandı");
    
   //[label setText:@"butona dokunuldu"];     //labela yazı yazar.
   //[btn setHidden:TRUE];     //butonu gizler.

   //[btn setAlpha:0.5];      //butonu yarı yarıya gizler.
    
   //[btn setCenter: CGPointMake(50, 50)];  //butonu (50,50) koordinatına taşır.
    
   //[btn setBounds:CGRectMake(100,100,100, 100)]; //butonun en boy genişliğini büyüklüğünü ayarlar.
    
}
@end
