//
//  TestDetailViewController.m
//  PhotoApp
//
//  Created by Girijesh Kumar on 07/08/13.
//  Copyright (c) 2013 Girijesh Kumar. All rights reserved.
//

#import "TestDetailViewController.h"


@interface TestDetailViewController ()
- (void)configureView;
@end

@implementation TestDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

-(IBAction)photoButtonClcik:(id)sender{
    
        
     UIActionSheet *actionSheet1=[[UIActionSheet alloc] init];
    [actionSheet1  addButtonWithTitle:@"Take a photo"];
    [actionSheet1  addButtonWithTitle:@"Choose from library"];
    [actionSheet1  addButtonWithTitle:@"cancel"];
    [actionSheet1 setCancelButtonIndex:2];
    [actionSheet1 setDelegate:self];
    actionSheet1.actionSheetStyle=UIActionSheetStyleDefault;
     [actionSheet1 showInView:self.view];
}


- (void)photoEditor:(AFPhotoEditorController *)editor finishedWithImage:(UIImage *)image

{
    
    // Handle the result image here
    
}

- (void)photoEditorCanceled:(AFPhotoEditorController *)editor

{
    
    // Handle cancellation here
    
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
        switch (buttonIndex)
        {
            case 0:
                if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
                {
                    UIImagePickerController *imagePicker=[[UIImagePickerController alloc] init];
                    imagePicker.allowsEditing=YES;
                    imagePicker.delegate=self;
                    [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
                    [self presentViewController:imagePicker animated:YES completion:^{
                        
                    }];
                }
                break;
                
            case 1:
                if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary])
                {
                   
                    UIImagePickerController *imagePicker=[[UIImagePickerController alloc] init];
                    imagePicker.allowsEditing=YES;
                    imagePicker.delegate=self;
                    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
                    [self presentViewController:imagePicker animated:YES completion:^{
                        
                    }];
                }
                break;
                
            case 2:
                [actionSheet dismissWithClickedButtonIndex:2 animated:NO];
                break;
        }
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    UIImage *imagePic = [info objectForKey:UIImagePickerControllerEditedImage];
    
    AFPhotoEditorController *editorController = [[AFPhotoEditorController alloc] initWithImage:imagePic];
    [editorController setDelegate:self];
    [self.navigationController pushViewController:editorController animated:YES];
   // [self.navigationController presentViewController:editorController animated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
    NSLog(@"test this");
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    [AFOpenGLManager beginOpenGLLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
