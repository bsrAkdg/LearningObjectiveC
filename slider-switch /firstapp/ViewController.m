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

@synthesize sld, swt;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Uygulama açılırken yapılması gerekenler burada işlenir.

    //slider'ın alacağı minimum değeri gösterir.
    [sld setMinimumValue:0];
    //maximum değeri gösterir.
    [sld setMaximumValue:100];
    //sol çubuk rengi
    [sld setMaximumTrackTintColor: [UIColor redColor]];

    //No dersek slider değişim sonucunu bize gösterir. Sürekli değişirkenki değeri değil.
    [sld setContinuous:NO];
    
    //switch açık olarak gelsin:
    [swt setOn:NO];
    //kapalı tarafının rengi:
    [swt setTintColor: [UIColor redColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeSlider:(id)sender {
    NSLog(@"   %d  ", (int)[sld value]);

}

- (IBAction)changeSwitch:(id)sender {
    if([swt isOn]){
        NSLog(@"AÇIK");
    }else{
        NSLog(@"KAPALI");
        
    }
}
@end
