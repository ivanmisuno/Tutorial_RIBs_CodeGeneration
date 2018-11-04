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
//            var splashRouter: SplashRoutingMock!
//            beforeEach {
//                splashBuilder.buildHandler = { (_ listener: SplashListener) -> (SplashRouting) in
//                    splashRouter = SplashRoutingMock(interactable: <#T##Interactable#>, viewControllable: <#T##ViewControllable#>) // TODO: Oops, need mocks for base RIBs' protocols (`Interactable`, `ViewControllable`), but we can't annotate them (yet). Will solve that in the next commit.
//                    return splashRouter
//                }
//            }
        } // describe("routeToSplash()")
    }
}
