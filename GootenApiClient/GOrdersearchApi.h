#import <Foundation/Foundation.h>
#import "GSubmittedOrderList.h"
#import "GObject.h"
#import "GApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface GOrdersearchApi: NSObject

@property(nonatomic, assign)GApiClient *apiClient;

-(instancetype) initWithApiClient:(GApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(GOrdersearchApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(GOrdersearchApi*) sharedAPI;
///
///
/// Search an orders
/// Search through the orders and return information about orders that match search criteria.
///
/// @param partnerBillingKey Partner billing key
/// @param genericValues Any value which is related to order (partner name, address, phone, couponCode, etc...)
/// @param lastName Partner last name
/// @param email Partner email
/// @param postalCode Billing/Shipping address postal code
/// @param startDate Start date of the date range when order was created
/// @param endDate End date of the date range when order was created
/// @param uniqueUserId User Id
/// @param partnerId Partner Id
/// @param pageSize How many items to return in reponse.
/// @param page Page number, how many items to skip.
/// 
///
/// @return GSubmittedOrderList*
-(NSNumber*) gETOrdersearchWithPartnerBillingKey: (NSString*) partnerBillingKey
    genericValues: (NSString*) genericValues
    lastName: (NSString*) lastName
    email: (NSString*) email
    postalCode: (NSString*) postalCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    uniqueUserId: (NSString*) uniqueUserId
    partnerId: (NSNumber*) partnerId
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
    completionHandler: (void (^)(GSubmittedOrderList* output, NSError* error)) handler;



@end
