//
//  ViewController.m
//  PublicPrivateMetodlarApp
//
//  Created by Büşra Akdağ on 02/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //Ogretmen adında bir sınıf oluştuurp emtodlarını tanımlayıp implement edip ViewController.h' a import ettikten sonra:
    
    Ogretmen *ogretmen = [[Ogretmen alloc]init];
    
    // şimdi herhangi bir geri dönüş değeri olmayan metodu çağırıyoruz:
    [ogretmen deneme];
    
    //şimdi geri dönüş değeri int olan metodu çağırıyoruz:
    int a= [ogretmen deneme1];
    
    //NSNumberda int değer şu şekilde okunur:  [NSNumber numberWithInt:50]
    //geri dönüş değeri NSNumber olanmetod çağrılır veparametre olarak 50 int değeri NSNumber parametresi olarak gönderilir.
    NSNumber *number = [ogretmen sayiyiIkiyeKatla: [NSNumber numberWithInt:50]];
    
    NSString *stringim = [ogretmen stringi:@"Merhaba " stringiletopla: @"Dünya ! :) "];
    
    NSLog(@" %d", a);
    NSLog(@" %@ " , stringim);
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
