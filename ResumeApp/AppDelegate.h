//
//  AppDelegate.h
//  ResumeApp
//
//  Created by Abiú Roldán on 27/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

