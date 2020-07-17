//
//  RootViewController.m
//  rs.ios-stage2-task7
//
//  Created by Sergey Gomolko on 7/16/20.
//  Copyright © 2020 s.gomolko. All rights reserved.
//

#import "RootViewController.h"
#import "FirstTabBarTableViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = UIColor.systemBlueColor ;
    [self initializationSubviews];
}

//MARK: - add, config and initialization subviews
-(void)initializationSubviews{
    NSMutableArray *tabBarControllers = [NSMutableArray new];
    
    
    FirstTabBarTableViewController *firstView = [FirstTabBarTableViewController new];
    firstView.view.backgroundColor = [UIColor greenColor];
    firstView.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage systemImageNamed:@"house"] selectedImage:[UIImage systemImageNamed:@"house.fill"]];
    //paperplane.fill
    [tabBarControllers addObject:firstView];
    
    UIViewController *secondView = [UIViewController new];
    secondView.view.backgroundColor = [UIColor yellowColor];
    secondView.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage systemImageNamed:@"star"] selectedImage:[UIImage systemImageNamed:@"star.fill"]];
    
    [tabBarControllers addObject:secondView];
    

    
    self.viewControllers = tabBarControllers;
    self.selectedViewController = firstView;
    
}
@end
