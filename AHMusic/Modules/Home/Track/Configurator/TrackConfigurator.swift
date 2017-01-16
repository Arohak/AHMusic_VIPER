//
//  TrackConfigurator.swift
//  AHMusic
//
//  Created by Ara Hakobyan on 12/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.
//

class TrackModuleConfigurator {

    func configureModuleForController(_ viewController: AnyObject) {
        
        if let viewController = viewController as? TrackViewController {
            configure(viewController)
        }
    }
    
    fileprivate func configure(_ viewController: TrackViewController) {
        
        let presenter = TrackPresenter()
        let interactor = TrackInteractor()
        
        presenter.view = viewController
        presenter.interactor = interactor
        
        interactor.output = presenter
        viewController.output = presenter
    }
}
