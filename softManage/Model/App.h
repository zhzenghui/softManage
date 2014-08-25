//
//  App.h
//  softManage
//
//  Created by bejoy on 14/8/25.
//  Copyright (c) 2014年 zeng hui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface App : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * number;
@property (nonatomic, retain) NSString * displayName;
@property (nonatomic, retain) NSString * version;
@property (nonatomic, retain) NSString * template;
@property (nonatomic, retain) NSString * them_id;

@end
