#import "SimpleAlert.h"
#import <React/RCTUtils.h>

@implementation SimpleAlert

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(show:(NSString *)title message:(NSString *)message)
{
  UIViewController *presentingController = RCTPresentedViewController();
  if (presentingController == nil) {
    return;
  }


  UIAlertController *alertController = [UIAlertController
                                        alertControllerWithTitle:title
                                        message:nil
                                        preferredStyle:UIAlertControllerStyleAlert];

  UIAlertAction *buttonCancel = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
  [alertController addAction:buttonCancel];

  alertController.message = message;

  dispatch_async(dispatch_get_main_queue(), ^{
    [presentingController presentViewController:alertController animated:YES completion:nil];
  });
}

@end
