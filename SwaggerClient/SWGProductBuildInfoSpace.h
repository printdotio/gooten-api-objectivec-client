#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGProductBuildInfo.h"


@protocol SWGProductBuildInfoSpace
@end

@interface SWGProductBuildInfoSpace : SWGObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* _description;

@property(nonatomic) NSNumber* index;

@property(nonatomic) NSNumber* defaultRotation;

@property(nonatomic) NSArray<SWGProductBuildInfo>* layers;

@end