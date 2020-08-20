//
//  ViewController.m
//  FEKYC_Sample
//
//  Created by Ragnar on 8/17/20.
//  Copyright © 2020 Ragnar. All rights reserved.
//

#import "ViewController.h"
@import FEKYC;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}
- (IBAction)btnStartClicked:(id)sender {
    FEKYCConfig* config = [[FEKYCConfig alloc]initWithApiKey:@"papFhWBwHBV7RvFx7b0STPAZw0xo7kRJ" fullName:@"" orcType:FEKYCOrcTypeVideo orcDocumentType:FEKYCOrcDocumentTypeIdCard isShowResult:false isReturnPhoto:false];
    FEKYC* fe = [[FEKYC alloc] initWithConfig:config];
    
    [fe startFrom:self completion:^(NSDictionary<NSString *,id> * _Nullable result) {
        [[self tvResult] setText:[NSString stringWithFormat:@"%@", result]];
        
        NSDictionary * orcResponse = [result objectForKey:@"orcResponse"];
        NSString* stAddress = [[[[orcResponse objectForKey:@"data"] objectForKey:@"back"] objectForKey:@"data"] objectForKey:@"address"];
        int addressProb = [[[[[orcResponse objectForKey:@"data"] objectForKey:@"back"] objectForKey:@"data"] objectForKey:@"address_prob"] intValue];
        NSLog(@"%@ \n %d", stAddress, addressProb);
    }];
}


@end
