#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */






@protocol GProductInfo
@end

@interface GProductInfo : GObject



@property(nonatomic) NSString* contentType;


@property(nonatomic) NSArray* /* NSString */ content;


@property(nonatomic) NSString* key;

/* The suggested ordering of the content about the product. 
 */
@property(nonatomic) NSNumber* index;


@end

