//
//  TestDetailViewController.h
//  PhotoApp
//
//  Created by Girijesh Kumar on 07/08/13.
//  Copyright (c) 2013 Girijesh Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFPhotoEditorController.h"

@interface TestDetailViewController : UIViewController<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,AFPhotoEditorControllerDelegate>{
    
}

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
-(IBAction)photoButtonClcik:(id)sender;
@end
