//
//  ViewController.m
//  TaxCalculator
//
//  Created by Mohamed Ayadi on 5/12/16.
//  Copyright © 2016 Mohamed Ayadi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property double sfTax, chiTax,nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _sfTax  = .0875;
    _chiTax = .1025;
    _nyTax  = 0.08875;
    
    
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    double price, result;
    
    
    price =[self.priceTextField.text doubleValue];
    
    switch (self.segmentedControl.selectedSegmentIndex ) {
        
        case 0:
             result = price * _sfTax;
            _resultLabel.text = [NSString stringWithFormat:@"$%.02f", result];
            break;
            
        case 1:
            result = price * _chiTax;
            _resultLabel.text = [NSString stringWithFormat:@"$%.02f", result];
            break;
            
        case 2:
            result = price * _nyTax;
            _resultLabel.text = [NSString stringWithFormat:@"$%.02f", result];
            break;
            
        default:
            break;
    }
    
    
}

@end
