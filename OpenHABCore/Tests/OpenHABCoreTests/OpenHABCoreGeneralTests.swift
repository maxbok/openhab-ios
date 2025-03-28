// Copyright (c) 2010-2023 Contributors to the openHAB project
//
// See the NOTICE file(s) distributed with this work for additional
// information.
//
// This program and the accompanying materials are made available under the
// terms of the Eclipse Public License 2.0 which is available at
// http://www.eclipse.org/legal/epl-2.0
//
// SPDX-License-Identifier: EPL-2.0

import Foundation

@testable import OpenHABCore

import XCTest

final class OpenHABCoreGeneralTests: XCTestCase {
    func testEndPoints() {
        let urlc = Endpoint.icon(
            rootUrl: "http://192.169.2.1",
            version: 2,
            icon: "switch",
            state: "OFF",
            iconType: .svg
        ).url
        XCTAssertEqual(urlc, URL(string: "http://192.169.2.1/icon/switch?state=OFF&format=SVG"), "Check endpoint creation")
    }

    func testLabelVale() {
        let widget = OpenHABWidget()
        widget.label = "llldl [llsl]"
        XCTAssertEqual(widget.labelValue, "llsl")
        widget.label = "llllsl[kkks] llls"
        XCTAssertEqual(widget.labelValue, "kkks")
    }
}
