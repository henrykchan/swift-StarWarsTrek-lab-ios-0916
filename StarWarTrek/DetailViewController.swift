//
//  DetailViewController.swift
//  StarWarTrek
//
//  Created by Henry Chan on 10/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var starWarsImageView: UIImageView!
    @IBOutlet weak var starTrekImageView: UIImageView!
    
    var starWarsImage: UIImage!
    var starTrekImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()

        starTrekImageView.image = starTrekImage
        starWarsImageView.image = starWarsImage
        
        starWarsPanGesture()
        starTrekPanGesture()
        
    }

   
    func starWarsPanGesture() {
        
        let starWarsPan = UIPanGestureRecognizer(target: self, action: #selector(draggingView))
        
        starWarsImageView.addGestureRecognizer(starWarsPan)
    }
    
    
    func starTrekPanGesture() {
        
        let starTrekPan = UIPanGestureRecognizer(target: self, action: #selector(draggingView))
        
        starTrekImageView.addGestureRecognizer(starTrekPan)
    }
    
    
    
    
    func draggingView(_ sender: UITapGestureRecognizer) {
        
        
        let point = sender.location(in: view)
        let draggedView = sender.view as! UIImageView
        draggedView.center = point
        
        
    }

   

}
