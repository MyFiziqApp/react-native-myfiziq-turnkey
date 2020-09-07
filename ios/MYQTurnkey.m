#import "MYQTurnkey.h"
@import MyFiziqTurnkey;



@implementation MYQTurnkey

RCT_EXPORT_MODULE()

RCT_REMAP_METHOD(setup, 
                 key:(NSString *)key 
                 secret:(NSString *)sec 
                 environment:(NSString *)env
                 setupWithResolver:(RCTPromiseResolveBlock)resolve
                 ejecter:(RCTPromiseRejectBlock)reject)
{
    RCTLogInfo(@"MYQTK: setup() called");
    // Check params
    if (!key || !se || !env) {
        if (reject) reject(@"MYQTK: setup() - Invalid param",
                           RNMYQTK_ERR_DOMAIN,
                           [NSError errorWithDomain:RNMYQTK_ERR_DOMAIN code:RNMYQTKErrorErrorSetupParamNil userInfo:@{NSLocalizedDescriptionKey:@"Invalid param"]});
    }
    // Call setup
    NSDictionary<NSString *, NSString *> *credentials = @{
        MFZSdkSetupKey:key,
        MFZSdkSetupSecret:sec,
        MFZSdkSetupEnvironment:env
    };
    [[MyFiziqTurnkey shared] setupWithConfig:credentials success:^{
        RCTLogInfo(@"MYQTK: setup() - success");
        if (resolve) resolve(nil);
    } failure:^(NSError *error){
        RCTLogInfo(@"MYQTK: setup() - failed");
        if (reject) reject(@"MYQTK: setup() - failed",
                            RNMYQTKErrorErrorSetupFailed,
                            [NSError errorWithDomain:RNMYQTK_ERR_DOMAIN code:RNMYQTKErrorErrorSetupFailed userInfo:@{NSLocalizedDescriptionKey:@"MYQTK: setup() - failed"]}]);
    }];
}

@end
