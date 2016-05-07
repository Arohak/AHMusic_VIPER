//
//  LandingViewController.swift
//  AHMusic
//
//  Created by Ara Hakobyan on 06/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.
//

class LandingViewController: UIViewController, LandingViewInput {

    var output: LandingViewOutput!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        baseConfig()
        output.viewIsReady()
    }


    // MARK: - LandingViewInput
    func setupInitialState() {
        
    }
    
    // MARK: - Private Method
    private func baseConfig() {
        let tab = (output as! LandingPresenter).tab
        
        styleTab(tab)
    }
    
    private func styleTab(tab: CarbonTabSwipeNavigation) {
        tab.setIndicatorColor(BLUE)
        tab.toolbar.translucent = false
        tab.setTabExtraWidth(30)
        tab.carbonSegmentedControl!.setWidth(200, forSegmentAtIndex: 0)
        tab.setNormalColor(BLACK.colorWithAlphaComponent(0.6))
        tab.setSelectedColor(BLUE, font: UIFont.boldSystemFontOfSize(14))
    }
}

