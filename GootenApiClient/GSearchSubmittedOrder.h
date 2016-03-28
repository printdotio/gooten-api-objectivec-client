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


@protocol GSearchSubmittedOrder
@end

@interface GSearchSubmittedOrder : GObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* niceId;
/* Clients can submit an ID they use for the order here. 
 */
@property(nonatomic) NSString* sourceId;

@property(nonatomic) NSArray<GPostSubmittedItem>* items;

@property(nonatomic) GProductPriceInfo* total;

@property(nonatomic) GProductPriceInfo* shippingTotal;

@property(nonatomic) NSString* discountCode;

@property(nonatomic) GProductPriceInfo* discountAmount;
/* An optional Map<string,string> of misc properties. 
 */
@property(nonatomic) GMeta* meta;

@end
