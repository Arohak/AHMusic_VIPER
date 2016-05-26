//
//  FavoriteViewInput.swift
//  AHMusic
//
//  Created by AroHak on 22/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.
//

protocol FavoriteViewInput: MPPlayProtocol {

    func setupInitialState(items: Array<Track>)
}
