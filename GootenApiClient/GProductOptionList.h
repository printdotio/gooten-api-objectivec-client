#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GProductOption.h"


@protocol GProductOptionList
@end

@interface GProductOptionList : GObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSArray<GProductOption>* values;

@end
