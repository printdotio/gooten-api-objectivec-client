#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGValidationFailure.h"


@protocol SWGImageValidatorResult
@end

@interface SWGImageValidatorResult : SWGObject


@property(nonatomic) NSNumber* hadError;

@property(nonatomic) NSArray<SWGValidationFailure>* issues;

@end