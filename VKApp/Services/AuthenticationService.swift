//
//  AuthenticationService.swift
//  VKApp
//
//  Created by Tulai Dima on 29.06.21.
//

import Foundation
import VK_ios_sdk

protocol  AuthenticationServiceDelegate: AnyObject {
    func authServiceShouldShow(_ viewController:UIViewController)
    func authServiceSignIn()
    func authServiceDidSignInFall()
}

final class AuthenticationService: NSObject, VKSdkDelegate,VKSdkUIDelegate{
    
    private let appId = "7891922"
    private let vkSdk: VKSdk
    
    weak var delegate: AuthenticationServiceDelegate?
    
    var token: String? {
        return VKSdk.accessToken()?.accessToken
    }
    
    override init(){
        vkSdk = VKSdk.initialize(withAppId: appId)
        super.init()
        print("VKSdk.init")
        vkSdk.register(self)
        vkSdk.uiDelegate = self
    }
    
    func wakeUpSession(){
        let scope = ["wall", "friends"]
        
        VKSdk.wakeUpSession(scope) {[delegate] (state, error) in
            if state == VKAuthorizationState.authorized{
                print("VKAuthorizationState.authorized")
                delegate?.authServiceSignIn()
            } else if state == VKAuthorizationState.initialized{
                print("VKAuthorizationState.initialized")
                VKSdk.authorize(scope)
            } else{
                print("auth problem, state \(state) error \(String(describing: error))")
                delegate?.authServiceDidSignInFall()
            }
        }
    }
    // MARK: VKSdkDelegate
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print(#function)
        if result.token != nil{
            delegate?.authServiceSignIn()
        }
        
    }
    
    func vkSdkUserAuthorizationFailed() {
        print(#function)
    }
    
    //MARK: VKSdkUIDelegate
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        print(#function)
        delegate?.authServiceShouldShow(controller)
    }
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        print(#function)
    }
    
}
