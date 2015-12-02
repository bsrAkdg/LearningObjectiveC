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

    //şimdi iki component' li pickerview yapıyoruz.

    [myPicker setDelegate:self];
    [myPicker setDataSource:self];
    
    //daha önce böyle bir dizi tanımlamıştık:
    arr1= [NSArray arrayWithObjects:@"hülya", @"derya", @"kübra", @"büke",@"kübra", @"melek", @"nalan" , @"aylin", nil ];
   
    //şimdi ViewController.h'a bir dizi daha ekliyoruz: Ülke adlarını tutacak:
    arr2= [NSArray arrayWithObjects:@"İngiltere", @"Fransa", @"Amerika", @"İzlanda", nil ];
    
    //hangi componentte hangi satırın seçili olarak geleceğini de belirtebiliriz: 0. componentte 3. satırı seçili olarak animasyonlu getir:
    
    [myPicker selectRow:3 inComponent:0 animated:YES];
    
    //1. componentte 2. satırı seçili olarak animasyonlu getir:
    [myPicker selectRow:2 inComponent:1 animated:YES];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//pickerview da kaç component olacak: bizim örneğimizde iki olacak (isim-şehir):

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 2;

}

//herbir componentte kaç satır var: bizim örneğimizde her componentin satır sayısı dizi uzunlukları kadar önce hangi compaonent olduğunu parametre olarak gelen "component" ile kontrol ediyoruz :

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        //isim componenti:
        return arr1.count;
    }
    else{
        //ülke componenti:
        return arr2.count;
    }
}

//her satır için dönecek değer: bize burda zaten parametre olarak hangi component olduğu "component" olarak göderiliyor o yüzden  hangi componentse ona ait diziden row indeksli objeyi çekeceğiz:

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if (component == 0){
        return [arr1 objectAtIndex:row];
    }
    else{
        return [arr2 objectAtIndex:row];
    }
    
}

//hangi satırı seçtiğimizi bize döndüren metod:
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    //seçilen component ve satırı
    NSLog(@" seçilen companent: %d , seçilen row: %d ", component, row);
    
    //0. componentte seçilen satırı görmek istiyorsam:
    int secilensatir= [pickerView selectedRowInComponent:0]; // burada 0. companenti seçtiğimizi belirttik.
    NSLog(@" 0. component te seçili satır: %d ", secilensatir);

}

//NSArray diyerek tanımlaıdğımız için biz şimdi statik olarak dizinin değeri değiştirip yeniden yüklemesini yapalım:
- (IBAction)reloadPickerView:(id)sender {
    arr1= @[@"buke", @"busra", @"emre", @"memo"];
    
    //burdapicker view ile ilgili bütün metodları yeniden çağrmasını sağlıyoruz: sil butonuna bastığı gibi buke, busra vs gösterilecek.
    [myPicker reloadAllComponents];
    
    /*dilersek hangi componenti yeniden yükleyeceğinide belirtebiliriz:
    
    [myPicker reloadComponent:0]; //0. componenti yeniden yükle
    */
    
    
    //istersekte butona bastıktan sonra pickerview' i gizleyebiliriz:
    
    [myPicker setHidden:YES];
    
    
}
@end
