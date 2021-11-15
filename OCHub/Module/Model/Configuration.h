//
//  Configuration.h
//  OCHub
//
//  Created by liaoya on 2021/11/15.
//

#import <OCFrame/OCFrame.h>

@class SSHKeyFingerprint;

@interface Configuration : OCFConfiguration
@property (nonatomic, assign) BOOL verifiablePasswordAuthentication;
@property (nonatomic, strong) NSArray *api;
@property (nonatomic, strong) SSHKeyFingerprint *sshKeyFingerprints;

@end

@interface SSHKeyFingerprint : OCFBaseModel
@property (nonatomic, strong) NSString *rsa;

@end
