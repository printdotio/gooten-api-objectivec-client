#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGShipPrice.h"


@protocol SWGShipEstimate
@end

@interface SWGShipEstimate : SWGObject


@property(nonatomic) SWGShipPrice* minPrice;

@property(nonatomic) SWGShipPrice* maxPrice;

@property(nonatomic) NSString* vendorCountryCode;

@property(nonatomic) NSNumber* canShipExpedited;

@property(nonatomic) NSNumber* estShipDays;

@end
