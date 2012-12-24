//
//  MyLunchDataStorage.h
//  MyLunch
//
//  Created by Administrator on 12/23/12.
//  Copyright (c) 2012 KOlya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyLunchDataStorage : NSObject
{
    NSMutableArray *lunchItemsArray;
}

@property (nonatomic, strong) NSMutableArray *lunchItemsArray;
//+(id) sharedInstance;
+(MyLunchDataStorage*) sharedInstance;
//+(id) init;

@end
