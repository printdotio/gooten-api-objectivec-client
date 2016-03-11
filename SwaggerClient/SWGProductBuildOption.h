#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGProductBuildInfoSpace.h"


@protocol SWGProductBuildOption
@end

@interface SWGProductBuildOption : SWGObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSString* imageUrl;

@property(nonatomic) NSNumber* isDefault;

@property(nonatomic) NSString* category;

@property(nonatomic) NSNumber* isPartnerSpecific;

@property(nonatomic) NSArray<SWGProductBuildInfoSpace>* spaces;

@end