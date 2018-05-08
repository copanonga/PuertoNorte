//
//  ViewController.m
//  Puerto Norte
//
//  Created by Jose on 8/5/18.
//  Copyright © 2018 Copanonga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <SFSafariViewControllerDelegate> {
    BOOL primeraEntrada;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    
    NSLog(@"\nViewController");
    [super viewDidLoad];
    primeraEntrada = TRUE;
}

- (void)viewDidAppear:(BOOL)animated {
    
    if (primeraEntrada == TRUE) {
        primeraEntrada = FALSE;
        [self verWeb];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - SafariViewController

- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}

#pragma mark - Datos

-(void)verWeb {
    
    NSString *urlString = @"http://puertonorte.es/";
    NSURL *url = [NSURL URLWithString:urlString];
    
    SFSafariViewController *svc = [[SFSafariViewController alloc] initWithURL:url];
    svc.delegate = self;
    [self presentViewController:svc animated:NO completion:nil];
    
}

#pragma mark - Botón

- (IBAction)botonVerWeb:(id)sender {
    
    [self verWeb];
    
}

@end
