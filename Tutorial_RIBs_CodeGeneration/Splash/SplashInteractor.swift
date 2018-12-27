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

    /// The loading animation is presented during (potentially) lengthy application initialization process,
    /// e.g., resources loading, initial network request, etc.
    /// The animation starts on top of the splash screen potentially transforming it to something else.
    func startLoadingAnimation()

    /// Fade-out animation hides the splash screen, revealing the main screen.
    ///
    /// - Parameter completionCallback: A callback to be called on animation completion.
    func startFadeOutAnimation(completionCallback: @escaping () -> ())
}

/// sourcery: CreateMock
protocol SplashListener: class {
    func splashDidComplete()
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

        // Start loading animation immediately upon activation.
        presenter.startLoadingAnimation()

        // Start the transition animation once the initialization process has completed.
        // TODO: Use an external event, for now just use 1-second delay
        _ = Single.just(()).delay(1, scheduler: MainScheduler.instance).subscribe(onSuccess: { _ in
            self.presenter.startFadeOutAnimation {
                self.listener?.splashDidComplete()
            }
        })
    }
}
