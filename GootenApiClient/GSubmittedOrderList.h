#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GSearchSubmittedOrder.h"


@protocol GSubmittedOrderList
@end

@interface GSubmittedOrderList : GObject


@property(nonatomic) NSArray<GSearchSubmittedOrder>* orders;

@property(nonatomic) NSNumber* totalPages;

@property(nonatomic) NSNumber* page;

@property(nonatomic) NSNumber* hadError;

@end
