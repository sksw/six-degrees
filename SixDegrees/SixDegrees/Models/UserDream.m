//
//  UserDream.m
//  SixDegrees
//
//  Created by Steven Wu on 2015-02-21.
//  Copyright (c) 2015 Steven Wu. All rights reserved.
//

#import "UserDream.h"
#import "Dream.h"
#import "User.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

@implementation UserDream

+ (NSValueTransformer *)contentJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Dream.class];
}

+ (NSValueTransformer *)userJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:User.class];
}

@end
