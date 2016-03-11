#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol SWGOrderPayment
@end

@interface SWGOrderPayment : SWGObject


@property(nonatomic) NSString* braintreeEncryptedCCNumber;

@property(nonatomic) NSString* braintreeEncryptedCCExpDate;

@property(nonatomic) NSString* braintreeEncryptedCCV;

@property(nonatomic) NSString* braintreePaymentNonce;
/* A code that when passed allows the order to be submitted on credit. 
 */
@property(nonatomic) NSString* partnerBillingKey;

@property(nonatomic) NSNumber* total;

@property(nonatomic) NSString* currencyCode;

@end
