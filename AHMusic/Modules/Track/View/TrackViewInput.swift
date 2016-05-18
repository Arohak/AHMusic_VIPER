//
//  TrackViewInput.swift
//  AHMusic
//
//  Created by Ara Hakobyan on 12/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.
//

protocol TrackViewInput: MiniPlayerProtocol {

    func setupInitialState(items: Array<Track>)
}
