//
//  AlbumViewController.swift
//  AHMusic
//
//  Created by Ara Hakobyan on 12/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.
//

//MARK: - class AlbumViewController
class AlbumViewController: UIViewController {

    var output: AlbumViewOutput!

    let albumView = AlbumView()
    var items = Array<Album>()
    let cellIdentifire = "albumCell"
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        baseConfig()
        output.viewIsReady()
    }
    
    // MARK: - Private Method
    private func baseConfig() {
        self.view = albumView
        
        albumView.tableView.dataSource = self
        albumView.tableView.delegate = self
        albumView.tableView.registerClass(AlbumCell.self, forCellReuseIdentifier: cellIdentifire)
    }
}

//MARK: - extension for AlbumViewInput
extension AlbumViewController: AlbumViewInput {
    
    func setupInitialState(items: Array<Album>) {
        self.items = items
        
        albumView.tableView.reloadData()
    }
}

//MARK: - extension for UITableView
extension AlbumViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifire) as! AlbumCell
        
        let album = items[indexPath.row]
        cell.setValues(album)
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return AL_CELL_HEIGHT
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let track = items[indexPath.row]
    }
}
