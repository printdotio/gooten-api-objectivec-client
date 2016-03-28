#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GImage.h"
#import "GMeta.h"





@protocol GPostOrderItem
@end

@interface GPostOrderItem : GObject



@property(nonatomic) NSNumber* quantity;


@property(nonatomic) NSString* sKU;


@property(nonatomic) NSNumber* shipCarrierMethodId;

/* If one does not want to pass a ShipCarrierMethodId of a specific shipping method, one can instead pass 'Standard', 'Overnight', or 'Expedited' here. 
 */
@property(nonatomic) NSString* shipType;


@property(nonatomic) NSArray<GImage>* images;

/* An optional place to pass in an ID for the OrderItem. 
 */
@property(nonatomic) NSString* sourceId;

/* An optional Map<string,string> of misc properties. 
 */
@property(nonatomic) GMeta* meta;


@end

