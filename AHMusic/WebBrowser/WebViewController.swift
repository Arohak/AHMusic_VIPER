//
//  WebViewController.swift
//  AHMusic
//
//  Created by Ara Hakobyan on 06/05/2016.
//  Copyright © 2016 AroHak LLC. All rights reserved.

//MARK: - class WebViewController -
class WebViewController: UIViewController {
    
    var resourceName: String!
    var url: NSURL!
    
    lazy var browser: UIWebView = {
        let view = UIWebView.newAutoLayoutView()
        view.delegate = self
        
        return view
    }()
    
    //MARK: - Initilize -
    init() {
        super.init(nibName: nil, bundle:nil)
    }
    
    convenience init(resourceName: String, url: NSURL) {
        self.init()
        
        self.resourceName = resourceName
        self.url = url
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(browser)
        browser.autoPinEdgesToSuperviewEdges()
        
        self.navigationItem.title = resourceName
        self.navigationItem.setRightBarButtonItem(UIBarButtonItem(barButtonSystemItem: .Action, target: self, action: #selector(WebViewController.close)), animated: true)
        browser.loadRequest(NSURLRequest(URL: url))
    }
    
    //MARK: - Actions -
    func close() {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
}

//MARK: - extension for UIWebViewDelegate -
extension WebViewController: UIWebViewDelegate {
    
}
