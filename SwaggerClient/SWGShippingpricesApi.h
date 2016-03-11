#import <Foundation/Foundation.h>
#import "SWGShippingPricesRequest.h"
#import "SWGShippingPricesResult.h"
#import "SWGObject.h"
#import "SWGApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SWGShippingpricesApi: NSObject

@property(nonatomic, assign)SWGApiClient *apiClient;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGShippingpricesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SWGShippingpricesApi*) sharedAPI;
///
///
/// Get a list of shipping options and prices for items
/// Get a list of shipping options and prices for items.
///
/// @param shippingPricesRequest DTO with required information
/// 
///
/// @return SWGShippingPricesResult*
-(NSNumber*) pOSTShippingpricesWithShippingPricesRequest: (SWGShippingPricesRequest*) shippingPricesRequest
    completionHandler: (void (^)(SWGShippingPricesResult* output, NSError* error)) handler;



@end
