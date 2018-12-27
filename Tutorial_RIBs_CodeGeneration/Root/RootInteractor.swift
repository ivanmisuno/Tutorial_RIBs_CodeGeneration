//
//  RootInteractor.swift
//  Tutorial_RIBs_CodeGeneration
//
//  Created by Ivan Misuno on 03-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import RIBs
import RxSwift

/// sourcery: CreateMock
protocol RootRouting: LaunchRouting {
    /// Build and attach Splash RIB synchronously.
    func routeToSplash()
    func detachSplash()
}

/// sourcery: CreateMock
protocol RootPresentable: Presentable {
    var listener: RootPresentableListener? { get set }
}

/// sourcery: CreateMock
protocol RootListener: class {
}

final class RootInteractor: PresentableInteractor<RootPresentable>, RootInteractable, RootPresentableListener {

    weak var router: RootRouting?
    weak var listener: RootListener?

    override init(presenter: RootPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()

        router?.routeToSplash()
    }

    // MARK: - SplashListener

    func splashDidComplete() {
        router?.detachSplash()
    }
}
