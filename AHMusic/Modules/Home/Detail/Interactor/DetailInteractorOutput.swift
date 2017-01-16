//
//  DetailInteractorOutput.swift
//  AHMusic
//
//  Created by AroHak on 15/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.
//

protocol DetailInteractorOutput: class {

    func getTrackResultIsReady(_ track: Track, tracks: Array<Track>)
}
