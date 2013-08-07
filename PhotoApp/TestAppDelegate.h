//
//  TestAppDelegate.h
//  PhotoApp
//
//  Created by Girijesh Kumar on 07/08/13.
//  Copyright (c) 2013 Girijesh Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
