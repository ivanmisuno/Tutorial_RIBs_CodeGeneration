//
//  RootRouterSpec.swift
//  Tutorial_RIBs_CodeGenerationTests
//
//  Created by Ivan Misuno on 04-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

@testable import Tutorial_RIBs_CodeGeneration
import Quick
import Nimble
import RIBs

class RootRouterSpec: TestSpec {
    override func spec() {
        var interactor: RootInteractableMock!
        var viewController: RootViewControllableMock!
        var splashBuilder: SplashBuildableMock!
        var sut: RootRouter!
        beforeEach {
            interactor = RootInteractableMock()
            viewController = RootViewControllableMock(uiviewController: UIViewController())
            splashBuilder = SplashBuildableMock()
            sut = RootRouter(interactor: interactor,
                             viewController: viewController,
                             splashBuilder: splashBuilder)
        }

        // MARK: - init()
        describe("init()") {
            it("sets interactor.router to self") {
                expect(interactor.router) === sut
            }
        } // describe("init()")

        // MARK: - routeToSplash()
        describe("routeToSplash()") {
            var splashRouter: SplashRoutingMock!
            beforeEach {
                splashBuilder.buildHandler = { (_ listener: SplashListener) -> (SplashRouting) in
                    splashRouter = SplashRoutingMock(interactable: InteractableMock(), viewControllable: ViewControllableMock(uiviewController: UIViewController()))
                    return splashRouter
                }
                sut.routeToSplash()
            }
            it("builds splashRouter") {
                expect(splashBuilder.buildCallCount) == 1
            }
            it("attaches splashRouter to the router hierarchy") {
                expect(sut.children).to(containElementSatisfying({ $0 === splashRouter }))
            }
            it("adds view controller to the view controller hierarchy") {
                expect(viewController.uiviewController.children).to(containElementSatisfying({ $0 === splashRouter.viewControllable.uiviewController}))
            }
            it("adds view controller's view to the view hierarchy") {
                expect(viewController.uiviewController.view.subviews).to(containElementSatisfying({ $0 === splashRouter.viewControllable.uiviewController.view}))
            }
            it("splashRouter is loaded") {
                expect(splashRouter.loadCallCount) == 1
            }
        } // describe("routeToSplash()")
    }
}
