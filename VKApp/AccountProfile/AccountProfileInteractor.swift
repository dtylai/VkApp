//
//  AccountProfileInteractor.swift
//  VKApp
//
//  Created by Tulai Dima on 1.07.21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol AccountProfileBusinessLogic {
  func makeRequest(request: AccountProfile.Model.Request.RequestType)
}

class AccountProfileInteractor: AccountProfileBusinessLogic {

  var presenter: AccountProfilePresentationLogic?
  var service: AccountProfileService?
  
  func makeRequest(request: AccountProfile.Model.Request.RequestType) {
    if service == nil {
      service = AccountProfileService()
    }
  }
  
}
