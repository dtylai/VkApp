//
//  AuthentificationViewController.swift
//  VKApp
//
//  Created by Tulai Dima on 29.06.21.
//

import UIKit

class AuthentificationViewController: UIViewController {

    
    private var authService: AuthenticationService!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //authService = AuthService()
        authService = AppDelegate.shared().authService
    }
    @IBAction func signInTouch(){
        authService.wakeUpSession()
    }
    


}
