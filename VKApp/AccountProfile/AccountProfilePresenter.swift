//
//  AccountProfilePresenter.swift
//  VKApp
//
//  Created by Tulai Dima on 1.07.21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AccountProfilePresentationLogic {
  func presentData(response: AccountProfile.Model.Response.ResponseType)
}

class AccountProfilePresenter: AccountProfilePresentationLogic {
  weak var viewController: AccountProfileDisplayLogic?
  
  func presentData(response: AccountProfile.Model.Response.ResponseType) {
  
  }
  
}
