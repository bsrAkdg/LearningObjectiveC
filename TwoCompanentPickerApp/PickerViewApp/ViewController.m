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

@synthesize myPicker, arr1,arr2;


- (void)viewDidLoad {
    [super viewDidLoad];

    //şimdi iki companent' li pickerview yapıyoruz.

    [myPicker setDelegate:self];
    [myPicker setDataSource:self];
    
    //daha önce böyle bir dizi tanımlamıştık:
    arr1= [NSArray arrayWithObjects:@"hülya", @"derya", @"kübra", @"büke",@"kübra", @"melek", @"nalan" , @"aylin", nil ];
   
    //şimdi ViewController.h'a bir dizi daha ekliyoruz: Ülke adlarını tutacak:
    arr2= [NSArray arrayWithObjects:@"İngiltere", @"Fransa", @"Amerika", @"İzlanda", nil ];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//pickerview da kaç companent olacak: bizim örneğimizde iki olacak (isim-şehir):

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;

}

//herbir companentte kaç satır var: bizim örneğimizde her companentin satır sayısı dizi uzunlukları kadar önce hangi companent olduğunu parametre olarak gelen "companent" ile kontrol ediyoruz :

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        //isim companenti:
        return arr1.count;
    }
    else{
        //ülke companenti:
        return arr2.count;
    }
}

//her satır için dönecek değer: bize burda zaten parametre olarak hangi companent olduğu "companent" olarak göderiliyor o yüzden  hangi companentse ona ait diziden row indeksli objeyi çekeceğiz:

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if (component == 0){
        return [arr1 objectAtIndex:row];
    }
    else{
        return [arr2 objectAtIndex:row];
    }
    
}

@end
