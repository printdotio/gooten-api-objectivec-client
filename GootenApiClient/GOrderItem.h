#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GOrderItemImage.h"


@protocol GOrderItem
@end

@interface GOrderItem : GObject


@property(nonatomic) NSNumber* quantity;

@property(nonatomic) NSString* sKU;

@property(nonatomic) NSNumber* shipCarrierMethodId;

@property(nonatomic) NSArray<GOrderItemImage>* images;

@end
