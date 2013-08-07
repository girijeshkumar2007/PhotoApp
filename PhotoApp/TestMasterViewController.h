//
//  TestMasterViewController.h
//  PhotoApp
//
//  Created by Girijesh Kumar on 07/08/13.
//  Copyright (c) 2013 Girijesh Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface TestMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
