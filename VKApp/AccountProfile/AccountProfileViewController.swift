//
//  AccountProfileViewController.swift
//  VKApp
//
//  Created by Tulai Dima on 1.07.21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AccountProfileDisplayLogic: class {
  func displayData(viewModel: AccountProfile.Model.ViewModel.ViewModelData)
}

class AccountProfileViewController: UIViewController, AccountProfileDisplayLogic {

  var interactor: AccountProfileBusinessLogic?
  var router: (NSObjectProtocol & AccountProfileRoutingLogic)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup() {
    let viewController        = self
    let interactor            = AccountProfileInteractor()
    let presenter             = AccountProfilePresenter()
    let router                = AccountProfileRouter()
    viewController.interactor = interactor
    viewController.router     = router
    interactor.presenter      = presenter
    presenter.viewController  = viewController
    router.viewController     = viewController
  }
  
  // MARK: Routing
  

  
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func displayData(viewModel: AccountProfile.Model.ViewModel.ViewModelData) {

  }
  
}
