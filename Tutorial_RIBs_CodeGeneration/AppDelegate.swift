//
//  AppDelegate.swift
//  Tutorial_RIBs_CodeGeneration
//
//  Created by Ivan Misuno on 31-10-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        #if !PRODUCTION_BUILD
        guard !RuntimeHelper.isRunningUnitTests else {
            // The app is running unit tests - don't instantiate the actual app component/view hierarchy,
            // so that it doesn't interfere with unit-tests.
            // Instantiare a lightweight view controller only.

            let viewController = UIViewController()
            viewController.view.backgroundColor = UIColor.green
            window?.rootViewController = viewController
            window?.makeKeyAndVisible()
            return true
        }
        #endif

        finishLaunchingWithUI()

        return true
    }
}

private extension AppDelegate {
    func finishLaunchingWithUI() {
        guard let window = window else { return }

        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.gray
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
