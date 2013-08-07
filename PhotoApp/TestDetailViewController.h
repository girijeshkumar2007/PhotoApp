//
//  TestDetailViewController.h
//  PhotoApp
//
//  Created by Girijesh Kumar on 07/08/13.
//  Copyright (c) 2013 Girijesh Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
