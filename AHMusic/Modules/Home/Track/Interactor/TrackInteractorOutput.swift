//
//  TrackInteractorOutput.swift
//  AHMusic
//
//  Created by Ara Hakobyan on 12/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.
//

protocol TrackInteractorOutput: class {

    func searchResultIsReady(items: Array<Track>)
    func getAlbumResultIsReady(album: Album)
    func getArtistResultIsReady(artist: Artist, tracks: Array<Track>)
    func getTrackResultIsReady(track: Track, tracks: Array<Track>)
}