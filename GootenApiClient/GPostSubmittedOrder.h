#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GMeta.h"
#import "GPostSubmittedItem.h"
#import "GProductPriceInfo.h"
#import "GShipToAddress.h"


@protocol GPostSubmittedOrder
@end

@interface GPostSubmittedOrder : GObject

/* The unique ID we use within our system. 
 */
@property(nonatomic) NSString* _id;
/* A short, non-unique ID that is optionally used for customer service. 
 */
@property(nonatomic) NSString* niceId;
/* Partner's internal ID-- entirely optional 
 */
@property(nonatomic) NSString* souceId;

@property(nonatomic) NSArray<GPostSubmittedItem>* items;

@property(nonatomic) GProductPriceInfo* total;

@property(nonatomic) GProductPriceInfo* shippingTotal;

@property(nonatomic) GProductPriceInfo* discountAmount;

@property(nonatomic) NSString* discountCode;

@property(nonatomic) GShipToAddress* billingAddress;

@property(nonatomic) GShipToAddress* shippingAddress;
/* An optional Map<string,string> of misc properties. 
 */
@property(nonatomic) GMeta* meta;

@end
