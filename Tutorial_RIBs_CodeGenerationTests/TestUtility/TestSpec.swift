//
//  TestSpec.swift
//  EnvelopeTest
//
//  Created by Ivan Misuno on 24-01-2018.
//  Copyright © 2018. All rights reserved.
//


import Quick

/// Base class for all tests; don't use QuickSpec directly.
/// The main purpose of this class is to override at the run-time the pre-configured
/// timers/schedulers/etc. to make testing of asynchronous code easier.
/// It will also contain helper extensions (e.g., to record analytics events, simplify testing Rx code), etc.
open class TestSpec: QuickSpec {
}
