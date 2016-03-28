
#import "GCountriesApi.h"
#import "GQueryParamCollection.h"
#import "GCountryList.h"



@interface GCountriesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation GCountriesApi

static GCountriesApi* singletonAPI = nil;

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

+(GCountriesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[GCountriesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(GCountriesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[GCountriesApi alloc] init];
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
/// Get a list of supported countries. Output is in specified language.
/// Get a list of supported countries. Output is in specified language.
///  @param languageCode Two-character language code, like \"en\" (english)
///
///  @param key A string used to query the language dictionary for specific values within a category.
///
///  @returns GCountryList*
///
-(NSNumber*) countriesWithLanguageCode: (NSString*) languageCode
    key: (NSString*) key
    completionHandler: (void (^)(GCountryList* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/countries/"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (languageCode != nil) {
        
        queryParams[@"languageCode"] = languageCode;
    }
    if (key != nil) {
        
        queryParams[@"key"] = key;
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
                              responseType: @"GCountryList*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((GCountryList*)data, error);
                           }
          ];
}





@end
