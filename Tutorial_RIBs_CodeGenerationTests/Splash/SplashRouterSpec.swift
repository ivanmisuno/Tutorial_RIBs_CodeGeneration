//
//  SplashRouterSpec.swift
//  Tutorial_RIBs_CodeGenerationTests
//
//  Created by Ivan Misuno on 04-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

@testable import Tutorial_RIBs_CodeGeneration
import Quick
import Nimble
import RIBs

class SplashRouterSpec: TestSpec {
    override func spec() {
        var interactor: SplashInteractableMock!
        var viewController: SplashViewControllableMock!
        var sut: SplashRouter!
        beforeEach {
            interactor = SplashInteractableMock()
            viewController = SplashViewControllableMock(uiviewController: UIViewController())
            sut = SplashRouter(interactor: interactor,
                               viewController: viewController)
        }

        // MARK: - init()
        describe("init()") {
            it("sets interactor.router to self") {
                expect(interactor.router) === sut
            }
        } // describe("init()")
    }
}
