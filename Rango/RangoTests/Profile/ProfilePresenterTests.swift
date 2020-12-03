//
//  ProfileTests.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 30/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import Rango


class ProfilePresenterTests: QuickSpec {
    
    override func spec() {
        var profile: ProfilePresenterType!
        var view: ProfileViewMock!
        
        beforeEach {
            profile = ProfilePresenter()
            view = ProfileViewMock()
            profile.view = view
        }
        
        describe("when profile screen") {
            context("when load profile") {
                it("should get profile with success") {
                    profile.api = ProfileSuccessMockApiNetworkService()
                    
                    profile.loadScreen()
                    
                    expect(profile.user?.id).to(equal(1))
                    expect(profile.user?.name).to(equal("Rhian"))
                    expect(profile.user?.email).to(equal("rhian@gmail.com"))
                    expect(profile.user?.bio).to(equal("mock bio"))
                    expect(profile.user?.image).to(equal("https://image.png"))
                    expect(view.shownUser).toNot(beNil())
                }
                it("should get profile with fail") {
                    profile.api = ProfileFailMockApiNetworkService()
                    
                    profile.loadScreen()
                    
                    expect(view.hasError).to(beTrue())
                }
            }
        }
    }
}
