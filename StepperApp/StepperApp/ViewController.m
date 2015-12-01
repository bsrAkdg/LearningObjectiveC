//
//  ViewController.m
//  StepperApp
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
    
    //Her view' ın içine girdiği bir çerçeve var. Bu çerçevenin merkezini ayarlayabilirsiniz: (* ile tanımlamadık çünkü CGRect bir struct)
    CGRect frame = CGRectMake(100,100,200,50);
    
    //yukarıda tanımladığımız noktaya stepper ekliyoruz:
    UIStepper *stp = [[UIStepper alloc] initWithFrame:frame];
    
    //minimum - maksimum- kaçar kaçar artacağı değerlerini giriyoruz.
    [stp setMinimumValue:0];
    [stp setMaximumValue:50];
    [stp setStepValue:5];
    
    //başlangıçtki değerini ayarlayabiliyorsun
    [stp setValue:20];
    //oluşturduğumuz stepper'ı view e ekliyoruz.
    [self.view addSubview:stp];
    
    //stepper'ı view' de ortalayalım:
    [stp setCenter: self.view.center];
   
    //değerleri loglayalım:
    //NSLog(@"   %f  "  , [stp value] );
    
    
    //şimdi aşağıda degerdegisti diye bir metod tanımlayalım sonra burda o metodla stepper ı bağlayalım:
    //self  ile aslında stepper' ın kendisini gönderiyoruz.
    //action ile metodu belirtiyoruz. (degerdegisti: iki nokta oluşunun sebebi tek parametre alması)
    //forControlEvents ile hangi durumda çağrılacağını belirtiyoruz. (değer değişitiği zaman)
    
    
    [stp addTarget:self action:@selector(degerdegisti:) forControlEvents:UIControlEventValueChanged];

    //Sona gelince başa sarıyor:
    [stp setWraps:YES];
    
    
    //basılı tutunca ne olacağı: her artım değeri için bir defa basma koşulu ekleyelim: YES dersek basılı tuttuğumuz süre boyunca artıcak değeri.
    [stp setAutorepeat:NO];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)degerdegisti:(id)sender{
    
    //burda direk değeri alamıyoruz çünkü stepper'ı yukarıda tanımladık:
    NSLog(@"deger değişti");


    //yukarıda tanımladığımız stepper'a buradan erişebilmek için sana gelen (sender ile gelir)  ne ise (self) onu al s1 stepper'ına ata diyoruz:
    
    UIStepper *s1 = (UIStepper*) sender;
    
    //artık hangi değerde olduğunu loglayabiliriz:
    
    NSLog(@"  %d  ", (int)[s1 value]);
}

@end
