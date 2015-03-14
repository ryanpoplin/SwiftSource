//
//  DetailViewController.swift
//  Project1
//
//  Created by Byrdann Fox on 3/14/15.
//  Copyright (c) 2015 lycan.io. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!

    var detailItem: String? {
        // prop. observer...
        didSet {
            // Update the view.
            // self.configureView() is not needed...
            configureView()
        }
    }

    func configureView() {
        
        // if there's an image, and an UIImageView to show it...
        
        // Update the user interface for the detail item.
        // safely unwrapping optional values...
        if let detail: String = detailItem {
            if let imageView = detailImageView {
                imageView.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillDisappear(animated)
        // if we do have a navigationController...
        navigationController?.hidesBarsOnTap = true
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
        
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}