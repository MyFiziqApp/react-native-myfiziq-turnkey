#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTLog.h>

/* Error codes. */
typedef NS_ENUM(NSInteger, RNMYQTKError) {
    /* No error. */
    RNMYQTKErrorErrorOk = 0,
    /* Setup param(s) nil. */
    RNMYQTKErrorErrorSetupParamNil,
    /* Setup failed. */
    RNMYQTKErrorErrorSetupFailed,
    /* Answer logins param(s) nil. */
    RNMYQTKErrorErrorAnswerLoginsParamNil,
    /* Capture process failed. */
    RNMYQTKErrorErrorCaptureProcessFailed,
    /* Invalid param to custom billing event call. */
    RNMYQTKErrorErrorBillingIDParamInvalid
};

#define RNMYQTK_ERR_DOMAIN              @"com.myfiziq.turnkey.reactnative"

@interface MYQTurnkey : NSObject <RCTBridgeModule>
@end
