//
//  MyLunchDataStorage.m
//  MyLunch
//
//  Created by Administrator on 12/23/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import "MyLunchDataStorage.h"

@implementation MyLunchDataStorage

@synthesize lunchItemsArray;

/*+(id) init
{
    self = [[super alloc] init];
    luc
}*/

//+(id) sharedInstance
+(MyLunchDataStorage*) sharedInstance
{
    //static id sharedInstance = nil;
    static MyLunchDataStorage *instance = nil;
    
    if (instance == nil) {
        instance = [[self alloc] init];
        //lunchItemsArray = [[NSMutableArray alloc] init];
    }
    return instance;
}

@end
