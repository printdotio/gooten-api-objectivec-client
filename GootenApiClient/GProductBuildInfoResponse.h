#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GProductBuildOption.h"


@protocol GProductBuildInfoResponse
@end

@interface GProductBuildInfoResponse : GObject


@property(nonatomic) NSArray<GProductBuildOption>* options;

@end
