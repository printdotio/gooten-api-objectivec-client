
#import "GOrdersApi.h"
#import "GQueryParamCollection.h"
#import "GPostSubmittedOrder.h"
#import "GOrderResult.h"
#import "GPostOrder.h"



@interface GOrdersApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GOrdersApi

static GOrdersApi* singletonAPI = nil;

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

+(GOrdersApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GOrdersApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GOrdersApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GOrdersApi alloc] init];
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
/// Get an order
/// Gets basic information about an order.
///  @param _id Order Id
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @param languageCode Resultant info language. Defaults to 'en'.
///
///  @returns GPostSubmittedOrder*
///
-(NSNumber*) gETOrdersWithId: (NSString*) _id
    version: (NSNumber*) version
    source: (NSString*) source
    languageCode: (NSString*) languageCode
    completionHandler: (void (^)(GPostSubmittedOrder* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `gETOrders`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `gETOrders`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `gETOrders`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v/{version}/source/{source}/orders/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (source != nil) {
        pathParams[@"source"] = source;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (languageCode != nil) {
        
        queryParams[@"languageCode"] = languageCode;
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
                              responseType: @"GPostSubmittedOrder*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GPostSubmittedOrder*)data, error);
                           }
          ];
}


///
/// Submit an order
/// Places an order into the system. An order can be submitted as PrePayment (in order to temporarily place an order and get an ID for Paypal) using the IsPreSubmit flag.
///  @param order Order to be submitted
///
///  @param version Version of the api being used
///
///  @param source Description of the source-- ios, android, api
///
///  @returns GOrderResult*
///
-(NSNumber*) pOSTOrdersWithOrder: (GPostOrder*) order
    version: (NSNumber*) version
    source: (NSString*) source
    completionHandler: (void (^)(GOrderResult* output, NSError* error)) handler {

    
    // verify the required parameter 'order' is set
    if (order == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `order` when calling `pOSTOrders`"];
    }
    
    // verify the required parameter 'version' is set
    if (version == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `version` when calling `pOSTOrders`"];
    }
    
    // verify the required parameter 'source' is set
    if (source == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `source` when calling `pOSTOrders`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v/{version}/source/{source}/orders/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (version != nil) {
        pathParams[@"version"] = version;
    }
    if (source != nil) {
        pathParams[@"source"] = source;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
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
    
    bodyParam = order;
    

    
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
                              responseType: @"GOrderResult*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GOrderResult*)data, error);
                           }
          ];
}





@end
