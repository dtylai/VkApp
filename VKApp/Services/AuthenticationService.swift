//
//  AuthenticationService.swift
//  VKApp
//
//  Created by Tulai Dima on 29.06.21.
//

import Foundation
import VK_ios_sdk

final class AuthenticationService: NSObject, VKSdkDelegate,VKSdkUIDelegate{

    private let appId = "7891158"
    private let vkSdk: VKSdk
    
    override init(){
        vkSdk = VKSdk.initialize(withAppId: appId)
        super.init()
        print("VKSdk.init")
        vkSdk.register(self)
        vkSdk.uiDelegate = self
    }
    
    // MARK: VKSdkDelegate
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print(#function)
    }
    
    func vkSdkUserAuthorizationFailed() {
        print(#function)
    }
    
    //MARK: VKSdkUIDelegate
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        print(#function)
    }
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        print(#function)
    }
    
}
