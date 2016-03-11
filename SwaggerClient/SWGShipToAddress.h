#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol SWGShipToAddress
@end

@interface SWGShipToAddress : SWGObject


@property(nonatomic) NSString* firstName;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSString* line1;

@property(nonatomic) NSString* line2;

@property(nonatomic) NSString* city;

@property(nonatomic) NSString* state;

@property(nonatomic) NSString* countryCode;

@property(nonatomic) NSString* postalCode;

@property(nonatomic) NSNumber* isBusinessAddress;

@property(nonatomic) NSString* phone;

@property(nonatomic) NSString* email;

@end