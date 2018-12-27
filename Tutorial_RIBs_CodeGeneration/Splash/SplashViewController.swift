//
//  SplashViewController.swift
//  Tutorial_RIBs_CodeGeneration
//
//  Created by Ivan Misuno on 03-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

/// sourcery: CreateMock
protocol SplashPresentableListener: class {
}

final class SplashViewController: UIViewController, SplashPresentable, SplashViewControllable {

    weak var listener: SplashPresentableListener?

    private let activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: .gray)
        activityIndicator.hidesWhenStopped = true
        return activityIndicator
    }()

    // MARK: - Overrides

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow

        view.addSubview(activityIndicator)
        activityIndicator.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }

    // MARK: - SplashPresentable

    /// The loading animation is presented during (potentially) lengthy application initialization process,
    /// e.g., resources loading, initial network request, etc.
    /// The animation starts on top of the splash screen potentially transforming it to something else.
    func startLoadingAnimation() {
        // TODO: Do something fancy here!

        activityIndicator.startAnimating()
    }

    /// Fade-out animation hides the splash screen, revealing the main screen.
    ///
    /// - Parameter completionCallback: A callback to be called on animation completion.
    func startFadeOutAnimation(completionCallback: @escaping () -> ()) {
        UIView.animate(withDuration: 0.35, delay: 0, options: [.allowUserInteraction, .curveEaseInOut], animations: {
            self.view.alpha = 0
        }, completion: { _ in
            completionCallback()
        })
    }

}
