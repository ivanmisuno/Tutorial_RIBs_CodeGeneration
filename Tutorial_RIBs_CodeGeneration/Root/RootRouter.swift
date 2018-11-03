//
//  RootRouter.swift
//  Tutorial_RIBs_CodeGeneration
//
//  Created by Ivan Misuno on 03-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import RIBs

/// sourcery: CreateMock
protocol RootInteractable: Interactable {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

/// sourcery: CreateMock
protocol RootViewControllable: ViewControllable {
}

final class RootRouter: ViewableRouter<RootInteractable, RootViewControllable>, RootRouting {

    override init(interactor: RootInteractable, viewController: RootViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
