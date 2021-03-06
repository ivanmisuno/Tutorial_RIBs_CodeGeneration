//
//  SplashInteractorSpec.swift
//  Tutorial_RIBs_CodeGenerationTests
//
//  Created by Ivan Misuno on 04-11-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

@testable import Tutorial_RIBs_CodeGeneration
import Quick
import Nimble
import RIBs

class SplashInteractorSpec: TestSpec {
    override func spec() {
        var presenter: SplashPresentableMock!
        var sut: SplashInteractor!
        beforeEach {
            presenter = SplashPresentableMock()
            sut = SplashInteractor(presenter: presenter)
        }

        // MARK: - init()
        describe("init()") {
            it("sets presenter.listener to self") {
                expect(presenter.listener) === sut
            }

            // MARK: - didBecomeActive()
            describe("didBecomeActive()") {
                beforeEach {
                    sut.activate()
                }
                it("presentes loading animation") {
                    expect(presenter.startLoadingAnimationCallCount) == 1
                }

                context("resources are loaded") {
                    // TODO:
                } // context("resources are loaded")

            } // describe("didBecomeActive()")
        } // describe("init()")

    }
}
