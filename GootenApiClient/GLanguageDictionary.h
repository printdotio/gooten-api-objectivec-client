#import <Foundation/Foundation.h>
#import "GObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "GKeyValuePair.h"


@protocol GLanguageDictionary
@end

@interface GLanguageDictionary : GObject


@property(nonatomic) NSString* category;

@property(nonatomic) NSArray<GKeyValuePair>* values;

@end
