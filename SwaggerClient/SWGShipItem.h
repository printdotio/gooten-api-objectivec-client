#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGShipOption.h"


@protocol SWGShipItem
@end

@interface SWGShipItem : SWGObject


@property(nonatomic) NSArray* /* NSString */ sKUs;

@property(nonatomic) NSArray<SWGShipOption>* shipOptions;

@end