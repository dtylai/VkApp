//
//  AppDelegate.swift
//  VKApp
//
//  Created by Tulai Dima on 29.06.21.
//

import UIKit
import VK_ios_sdk
@main
class AppDelegate: UIResponder, UIApplicationDelegate, AuthenticationServiceDelegate {
    
    
    var window: UIWindow?
    
    var authService: AuthenticationService!
    
    static func shared() -> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        self.authService = AuthenticationService()
        
        authService.delegate = self
        let authVC:AuthentificationViewController = AuthentificationViewController.loadFromStoryboard()
        window?.rootViewController = authVC
        window?.makeKeyAndVisible()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        VKSdk.processOpen(url, fromApplication: UIApplication.OpenURLOptionsKey.sourceApplication.rawValue)
        return true
    }
    
    
    
    // MARK: AuthentificationServiceDelegate
    
    func authServiceShouldShow(_ viewController: UIViewController) {
        print(#function)
        window?.rootViewController?.present(viewController, animated: true, completion: nil)
    }
    
    func authServiceSignIn() {
        print(#function)
//        let feedVC:NewsFeedViewController = NewsFeedViewController.loadFromStoryboard()
//        let navVC = UINavigationController(rootViewController: feedVC)
//        window?.rootViewController = navVC
        
    }
    
    func authServiceDidSignInFall() {
        print(#function)
    }
    
    
}

