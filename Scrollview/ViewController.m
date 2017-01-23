//
//  ViewController.m
//  Scrollview
//
//  Created by Angie Linton on 2017-01-23.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@property (strong, nonatomic) IBOutlet UIView *mainView;

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated{

    
    CGRect bounds = _mainView.bounds;
    bounds.origin = CGPointMake(0, 100);
    _mainView.bounds = bounds;
    
    
  
}

@end
//Refactor your code so that the boxes are added as subviews to MyScrollView and set the contentSize.
