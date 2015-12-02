//
//  ViewController.m
//  DatePickerViewApp
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize datePicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Bir stringi date formatına çevirmek için:
    NSString *zaman = @"2016";
    
    //bir format oluşturuyoruz ve ne türde dönüştüreceğini belirtiyoruz: biz "yyyy" formatında oluşturduk
    
    NSDateFormatter *formatterstring = [[NSDateFormatter alloc] init];
    [formatterstring setDateFormat:@"yyyy"];
    
    NSDate *yil = [formatterstring dateFromString:zaman];
    
    //şimdi loglarken tekrar stringe çevir :
    NSLog(@" %@ ", [formatterstring stringFromDate:yil]);
    
    //şimdi varsayılan olarak bir string alalım onu datepickerde seçili olarak gösterelim:
    
    NSString *rastgelestr= @"2017-12-12";
    NSDateFormatter *rastegeleformatter = [[NSDateFormatter alloc] init];
    [rastegeleformatter setDateFormat:@"yyyy-mm-dd"];

    NSDate *rastgelezaman = [rastegeleformatter dateFromString:rastgelestr];
    //artık Date'e dönüştürdüğümüz string'i datepickerda gösterebiliriz:
    [datePicker setDate:rastgelezaman animated:YES];
    
    //istersek daepicker' ın  modunu programatik olarak değiştirebiliriz: zaman ve tarihi aynı anda gösterir

    [datePicker setDatePickerMode:UIDatePickerModeDateAndTime];
    
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
  
}


//datepickerde bir değişiklik olduğu zaman :
- (IBAction)dateDegistir:(id)sender {
    //biz datepicker' dan bir değer alacaksak bunun değeri NSDate olacak.
    //bize zaten sender olarak picker gönderiliyor o yüzden böylede tanımlayabiliriz:
    
    //hangi picker seçilmş olursa olsun o picker aşağıdaki kodda alınmış olacak:
    UIDatePicker *picker = (UIDatePicker*)sender;
    
    //şimdi pickerda seçili olan zamanı alalım ve stringe çevirmeye çalışalım :
    NSDate *secilenzaman = [picker date];
    
    //şuanki zamanı almak istiyorsak:
    //NSDate *suankizaman = [NSDate date];
    
    //şimdi bu date' i stringe çevirelim: Önce format oluşturuyoruz
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    //şimdi formatın ne olduğunu belirtiyoruz: yyyy-mm-dd , h, hh : mm gibi..
    [formatter setDateFormat:@"yyyy"];
    
    //hangi zaman çevrilecekce o seçilir:
    NSString *str = [formatter stringFromDate:secilenzaman];
    
    //şimdi yıl olarak loglayalım:
    NSLog(@"  %@  " ,str);
    
    
}
@end
