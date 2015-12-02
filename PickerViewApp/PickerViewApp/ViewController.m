//
//  ViewController.m
//  PickerViewApp
//
//  Created by Büşra Akdağ on 01/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myPicker, arr1;


- (void)viewDidLoad {
    [super viewDidLoad];

    //her pickerview in companentleri var. Yani bir PickerView' de birkaç farklı seçim yaptırabiliriz.
    //bir picker view sadece text barındırabileceği gibi view de barındarabilir.
    //UIPickerView' i alt tuşunu basılı seç. Delegate metodlarına bak delegateleri ViewController.h ' a "<>" arasına ekle.
    //picker view' in üç metodu var : kaç companent, kaç satır, her satır için hangi değerin döneceği
    
    
    //şimdi ViewController.h' ta <> arasına yazdığımız bölümlere self atamalıyız:
    
    [myPicker setDelegate:self];
    [myPicker setDataSource:self];
    
    //şimdi viewcontroller.h' a bir dizi ekle
    //diziyi iki şekilde burda tanımlayabiliriz:
    
    //1:
    arr1= [NSArray arrayWithObjects:@"hülya", @"derya", @"kübra", @"büke",@"kübra", @"melek", @"nalan" , @"aylin", nil ];
    
    //2:
    
    //arr1= @[@"hülya", @"derya", @"kübra", @"büke",@"kübra", @"melek", @"nalan" , @"aylin"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//pickerview da kaç companent olacak: bizim örneğimizde bir olacak:

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;

}

//herbir companentte kaç satır var: bizim örneğimizde dizi sayısı kadar olacak:

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [arr1 count];
    
    //return arr.count; da diyebilirdik.
}

//her satır için dönecek değer: bize burda zaten parametre olarak satır numarası row olarak göderiliyor o yüzden diziden row indeksli objeyi çekeceğiz:

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [arr1 objectAtIndex:row];
    
}

@end
