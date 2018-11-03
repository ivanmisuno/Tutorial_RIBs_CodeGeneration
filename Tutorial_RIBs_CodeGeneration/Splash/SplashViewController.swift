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
}
