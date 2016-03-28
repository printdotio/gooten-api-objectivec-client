#import "GOrderstatusApi.h"
#import "GQueryParamCollection.h"
#import "GOrderStatusUpdateResult.h"


@interface GOrderstatusApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GOrderstatusApi

static GOrderstatusApi* singletonAPI = nil;

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

+(GOrderstatusApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GOrderstatusApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GOrderstatusApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GOrderstatusApi alloc] init];
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
/// Update an order status
/// Update status of each order item.
///  @param partnerBillingKey Partner billing key
///
///  @param _id Order Id
///
///  @param orderStatusName Order status name for update
///
///  @returns GOrderStatusUpdateResult*
///
-(NSNumber*) pOSTOrderstatusWithPartnerBillingKey: (NSString*) partnerBillingKey
    _id: (NSString*) _id
    orderStatusName: (NSString*) orderStatusName
    completionHandler: (void (^)(GOrderStatusUpdateResult* output, NSError* error)) handler {

    
    // verify the required parameter 'partnerBillingKey' is set
    if (partnerBillingKey == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `partnerBillingKey` when calling `pOSTOrderstatus`"];
    }
    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `pOSTOrderstatus`"];
    }
    
    // verify the required parameter 'orderStatusName' is set
    if (orderStatusName == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `orderStatusName` when calling `pOSTOrderstatus`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/orderstatus/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (partnerBillingKey != nil) {
        
        queryParams[@"partnerBillingKey"] = partnerBillingKey;
    }
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (orderStatusName != nil) {
        
        queryParams[@"orderStatusName"] = orderStatusName;
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
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"GOrderStatusUpdateResult*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GOrderStatusUpdateResult*)data, error);
                           }
          ];
}



@end
