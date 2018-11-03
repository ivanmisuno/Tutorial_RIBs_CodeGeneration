//
//  SplashRouter.swift
//  Tutorial_RIBs_CodeGeneration
//
//  Created by Ivan Misuno on 03-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import RIBs

/// sourcery: CreateMock
protocol SplashInteractable: Interactable {
    var router: SplashRouting? { get set }
    var listener: SplashListener? { get set }
}

/// sourcery: CreateMock
protocol SplashViewControllable: ViewControllable {
}

final class SplashRouter: ViewableRouter<SplashInteractable, SplashViewControllable>, SplashRouting {

    override init(interactor: SplashInteractable, viewController: SplashViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
