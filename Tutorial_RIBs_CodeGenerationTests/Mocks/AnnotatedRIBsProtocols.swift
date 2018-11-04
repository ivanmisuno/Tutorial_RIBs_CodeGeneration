//
//  AnnotatedRIBsProtocols.swift
//  Tutorial_RIBs_CodeGenerationTests
//
//  Created by Ivan Misuno on 06-10-2018.
//  Copyright © 2018 ivanmisuno. All rights reserved.
//

import RIBs

/// We want to have mocks for base RIBs protocols.
/// Mark with Sourcery annotations.

/// sourcery: CreateMock
extension Buildable {}

/// sourcery: CreateMock
extension Interactable {}

/// sourcery: CreateMock
extension LaunchRouting {}

/// sourcery: CreateMock
extension Presentable {}

/// sourcery: CreateMock
extension Routing {}

/// sourcery: CreateMock
extension ViewableRouting {}

/// sourcery: CreateMock
extension ViewControllable {}

/// sourcery: CreateMock
extension Working {}
