#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GMeta.h"
#import "GOrderPayment.h"
#import "GPostOrderItem.h"
#import "GShipToAddress.h"


@protocol GPostOrder
@end

@interface GPostOrder : GObject


@property(nonatomic) GShipToAddress* shipToAddress;

@property(nonatomic) GShipToAddress* billingAddress;

@property(nonatomic) NSArray<GPostOrderItem>* items;

@property(nonatomic) GOrderPayment* payment;
/* Clients can submit an ID they use for the order here. 
 */
@property(nonatomic) NSString* sourceId;
/* Submit the order into PrePayment status. 
 */
@property(nonatomic) NSNumber* isPreSubmit;

@property(nonatomic) NSString* couponCode;
/* An optional Map<string,string> of misc properties. 
 */
@property(nonatomic) GMeta* meta;

@end
