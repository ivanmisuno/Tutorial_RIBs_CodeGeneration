//
//  SplashInteractor.swift
//  Tutorial_RIBs_CodeGeneration
//
//  Created by Ivan Misuno on 03-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import RIBs
import RxSwift

/// sourcery: CreateMock
protocol SplashRouting: ViewableRouting {
}

/// sourcery: CreateMock
protocol SplashPresentable: Presentable {
    var listener: SplashPresentableListener? { get set }
}

/// sourcery: CreateMock
protocol SplashListener: class {
}

final class SplashInteractor: PresentableInteractor<SplashPresentable>, SplashInteractable, SplashPresentableListener {

    weak var router: SplashRouting?
    weak var listener: SplashListener?

    override init(presenter: SplashPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
    }
}
