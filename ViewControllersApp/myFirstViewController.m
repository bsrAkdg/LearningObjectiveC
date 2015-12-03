//
//  myFirstViewController.m
//  ViewControllersApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "myFirstViewController.h"

@interface myFirstViewController ()

@end

@implementation myFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //ilk olarak iki tane viewcontroller tanımla
    //ikinci controller da bir string tanımla (public)
    //şimdi buna ulaşmak için birinci controllerın.h' ında ikinc controller'ı import et.
    //daha sonra birinci controller'ın .m' ında segue (bir view den diğer view' e geçişi sağlar) bilgisini çekeceğin metodu tanımla (aşağıdaki gibi)
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//parametre olarak gelen segue' de hangi view' e gittiğinin bilgisi vardır. bizim view'ler arasında veri alışverişini sağlayabilmemiz için segue' den önce hangi view ' a gittiğinin bilgisini anlamlıtız.
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    //destination son durak neresi onu getirir.
    mySecondViewController *svc = [segue destinationViewController];
    //artık birinci viewcontrollerdan ikinci controllerın stingine ulaşabiliyorum. İkinci controllerın viewDidLoad'ında bu stringi yazdıralım  self.str diyerek ulaşacağız:
    
    svc.str= @"birinciden ikinciye gelldinn :)";
    
}

@end
