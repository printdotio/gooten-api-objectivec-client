#import "SWGOrdersearchApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGSubmittedOrderList.h"


@interface SWGOrdersearchApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGOrdersearchApi

static SWGOrdersearchApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGOrdersearchApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGOrdersearchApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGOrdersearchApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGOrdersearchApi alloc] init];
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
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Search an orders
/// Search through the orders and return information about orders that match search criteria.
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
///  @returns SWGSubmittedOrderList*
///
-(NSNumber*) gETOrdersearchWithGenericValues: (NSString*) genericValues
    lastName: (NSString*) lastName
    email: (NSString*) email
    postalCode: (NSString*) postalCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    uniqueUserId: (NSString*) uniqueUserId
    partnerId: (NSNumber*) partnerId
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
    completionHandler: (void (^)(SWGSubmittedOrderList* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ordersearch/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json"]];

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
                              responseType: @"SWGSubmittedOrderList*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((SWGSubmittedOrderList*)data, error);
                           }
          ];
}



@end
