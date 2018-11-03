//
//  RootRouter.swift
//  Tutorial_RIBs_CodeGeneration
//
//  Created by Ivan Misuno on 03-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import RIBs
import SnapKit

/// sourcery: CreateMock
protocol RootInteractable: Interactable, SplashListener {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

/// sourcery: CreateMock
protocol RootViewControllable: ViewControllable {
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {

    private let splashBuilder: SplashBuildable
    private var splashRouter: SplashRouting?

    init(interactor: RootInteractable,
         viewController: RootViewControllable,
         splashBuilder: SplashBuildable) {

        self.splashBuilder = splashBuilder

        super.init(interactor: interactor, viewController: viewController)

        interactor.router = self
    }

    // MARK: - RootRouting

    func routeToSplash() {
        guard self.splashRouter == nil else { return }

        // Build splash router.
        let splashRouter = splashBuilder.build(withListener: interactor)
        self.splashRouter = splashRouter

        // Attach to the router hierarchy.
        attachChild(splashRouter)

        // Add view controller as a child view controller, add its view and make it fill the superview.
        viewController.uiviewController.addChild(splashRouter.viewControllable.uiviewController)
        viewController.uiviewController.view.addSubview(splashRouter.viewControllable.uiviewController.view)
        splashRouter.viewControllable.uiviewController.view.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        viewController.uiviewController.setNeedsStatusBarAppearanceUpdate()
    }
}
