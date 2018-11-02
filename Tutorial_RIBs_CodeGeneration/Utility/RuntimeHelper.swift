//
//  RuntimeHelper.swift
//  Envelope
//
//  Created by Ivan Misuno on 06-10-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import Foundation

final class RuntimeHelper {
    static var isRunningUnitTests: Bool {
        let isRunningUnitTests = ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] != nil
        return isRunningUnitTests;
    }
}
