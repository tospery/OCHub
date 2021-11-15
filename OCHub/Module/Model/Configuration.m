//
//  Configuration.m
//  OCHub
//
//  Created by liaoya on 2021/11/15.
//

#import "Configuration.h"

@interface Configuration ()

@end

@implementation Configuration

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    NSDictionary *mapping = [NSDictionary mtl_identityPropertyMapWithModel:self];
    mapping = [mapping ocf_dictionaryByUnderlineValuesFromCamel];
//    mapping = [mapping mtl_dictionaryByAddingEntriesFromDictionary:@{
//        @"mid": @"id",
//        @"sellState": @"deal_status",
//        @"title": @"short_title",
//        @"subtitle": @"show_text",
//        @"icon": @"deal_image_url",
//        @"originalPrice": @"list_price",
//        @"originalPricePrefix": @"list_price_prefix",
//        @"serverTime": @"serverTime",
//        @"badgeKey": @"activity_key",
//        @"badgeIcon": @"activity_icon",
//        @"rowTags": @"label_tags",
//        @"gridTags": @"grid_label_tags"
//    }];
    return mapping;
}

//+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key {
//    return @{
//        @"badgeIcon": [MTLJSONAdapter NSURLJSONTransformer],
//        @"couponUrl": [MTLJSONAdapter NSURLJSONTransformer],
//        @"dealDetailUrl": [MTLJSONAdapter NSURLJSONTransformer],
//        @"icon": [MTLJSONAdapter NSURLJSONTransformer],
//        @"detailUrl": [MTLJSONAdapter NSURLJSONTransformer],
//        @"h5Link": [MTLJSONAdapter NSURLJSONTransformer],
//        @"video": [MTLJSONAdapter dictionaryTransformerWithModelClass:ProductVideo.class],
//        @"rowTags": [MTLJSONAdapter arrayTransformerWithModelClass:ProductTag.class],
//        @"gridTags": [MTLJSONAdapter arrayTransformerWithModelClass:ProductTag.class]
//    }[key];
//}

@end


@interface SSHKeyFingerprint ()

@end

@implementation SSHKeyFingerprint

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"rsa": @"SHA256_RSA"
    };
}

@end
