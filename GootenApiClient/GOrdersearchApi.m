
#import "GOrdersearchApi.h"
#import "GQueryParamCollection.h"
#import "GSubmittedOrderList.h"



@interface GOrdersearchApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GOrdersearchApi

static GOrdersearchApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        GConfiguration *config = [GConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[GApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(GApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(GOrdersearchApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GOrdersearchApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GOrdersearchApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GOrdersearchApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [GApiClient requestQueueSize];
}

#pragma mark - Api Methods


///
/// Search an orders
/// Search through the orders and return information about orders that match search criteria.
///  @param partnerBillingKey Partner billing key
///
///  @param genericValues Any value which is related to order (partner name, address, phone, couponCode, etc...)
///
///  @param lastName Partner last name
///
///  @param email Partner email
///
///  @param postalCode Billing/Shipping address postal code
///
///  @param startDate Start date of the date range when order was created
///
///  @param endDate End date of the date range when order was created
///
///  @param uniqueUserId User Id
///
///  @param partnerId Partner Id
///
///  @param pageSize How many items to return in reponse.
///
///  @param page Page number, how many items to skip.
///
///  @returns GSubmittedOrderList*
///
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
    completionHandler: (void (^)(GSubmittedOrderList* output, NSError* error)) handler {

    
    // verify the required parameter 'partnerBillingKey' is set
    if (partnerBillingKey == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `partnerBillingKey` when calling `gETOrdersearch`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ordersearch/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (partnerBillingKey != nil) {
        
        queryParams[@"partnerBillingKey"] = partnerBillingKey;
    }
    if (genericValues != nil) {
        
        queryParams[@"genericValues"] = genericValues;
    }
    if (lastName != nil) {
        
        queryParams[@"lastName"] = lastName;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (postalCode != nil) {
        
        queryParams[@"postalCode"] = postalCode;
    }
    if (startDate != nil) {
        
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        
        queryParams[@"endDate"] = endDate;
    }
    if (uniqueUserId != nil) {
        
        queryParams[@"uniqueUserId"] = uniqueUserId;
    }
    if (partnerId != nil) {
        
        queryParams[@"partnerId"] = partnerId;
    }
    if (pageSize != nil) {
        
        queryParams[@"pageSize"] = pageSize;
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [GApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [GApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"GSubmittedOrderList*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GSubmittedOrderList*)data, error);
                           }
          ];
}





@end
