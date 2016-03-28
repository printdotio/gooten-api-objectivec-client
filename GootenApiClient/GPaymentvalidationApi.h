#import <Foundation/Foundation.h>
#import "GPaymentValidationResponse.h"
#import "GObject.h"
#import "GApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface GPaymentvalidationApi: NSObject

@property(nonatomic, assign)GApiClient *apiClient;

-(instancetype) initWithApiClient:(GApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(GPaymentvalidationApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(GPaymentvalidationApi*) sharedAPI;
///
///
/// Submit payment validation for PayPal
/// Submit payment validation for PayPal
///
/// @param orderId Order Id returned from orders/POST
/// @param payPalKey The PayPal key returned from the Mobile SDK
/// 
///
/// @return GPaymentValidationResponse*
-(NSNumber*) paymentvalidationWithOrderId: (NSString*) orderId
    payPalKey: (NSString*) payPalKey
    completionHandler: (void (^)(GPaymentValidationResponse* output, NSError* error)) handler;



@end
