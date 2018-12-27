//
//  RootInteractorSpec.swift
//  Tutorial_RIBs_CodeGenerationTests
//
//  Created by Ivan Misuno on 04-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

@testable import Tutorial_RIBs_CodeGeneration
import Quick
import Nimble
import RIBs

class RootInteractorSpec: TestSpec {
    override func spec() {
        var presenter: RootPresentableMock!
        var sut: RootInteractor!
        var router: RootRoutingMock!
        beforeEach {
            presenter = RootPresentableMock()
            sut = RootInteractor(presenter: presenter)

            router = RootRoutingMock(interactable: InteractableMock(), viewControllable: ViewControllableMock(uiviewController: UIViewController()))
            sut.router = router
        }

        // MARK: - init()
        describe("init()") {
            it("sets presenter.listener to self") {
                expect(presenter.listener) === sut
            }
        } // describe("init()")

        // MARK: - didBecomeActive()
        describe("didBecomeActive()") {
            beforeEach {
                sut.activate()
            }
            it("calls router.routeToSplash()") {
                expect(router.routeToSplashCallCount) == 1
            }

            // MARK: - SplashListener
            describe("splashDidComplete()") {
                beforeEach {
                    sut.splashDidComplete()
                }
                it("detaches the splash") {
                    expect(router.detachSplashCallCount) == 1
                }
            } // describe("splashDidComplete()")

        } // describe("didBecomeActive()")
    }
}
