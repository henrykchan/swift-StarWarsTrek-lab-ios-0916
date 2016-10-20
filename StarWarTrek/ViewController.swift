//
//  ViewController.swift
//  StarWarTrek
//
//  Created by James Campagno on 10/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var anakinImage: UIImageView!
    @IBOutlet weak var chewbaccaImage: UIImageView!
    @IBOutlet weak var hanSoloImage: UIImageView!
    @IBOutlet weak var lukeSkyImage: UIImageView!
    
    @IBOutlet weak var captainKirkImage: UIImageView!
    @IBOutlet weak var drMcCoyImage: UIImageView!
    @IBOutlet weak var spockImage: UIImageView!
    @IBOutlet weak var uhuruImage: UIImageView!
    
    
    var starWarsCharacter: UIImageView!
    var starTrekCharacter: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starWarsGestureRecognizers()
        starTrekGestureRecognizers()
        
    }
    

    
    func starWarsGestureRecognizers() {
        
        let starWarsImage  = [anakinImage, chewbaccaImage, hanSoloImage, lukeSkyImage]
        
        for image in starWarsImage {
            let starWarsGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(starWarsCharacterChosen))
            starWarsGestureRecognizer.numberOfTapsRequired = 1
            image?.addGestureRecognizer(starWarsGestureRecognizer)
        }
    }
    
    
    func starTrekGestureRecognizers() {
        
        let starTrekImage = [captainKirkImage, drMcCoyImage, spockImage, uhuruImage]
        
        for image in starTrekImage {
            let starTrekGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(starTrekCharacterChosen))
            
            starTrekGestureRecognizer.numberOfTapsRequired = 1
            image?.addGestureRecognizer(starTrekGestureRecognizer)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "fightSegue" {
            
            let detailView = segue.destination as! DetailViewController
            detailView.starWarsImage = starWarsCharacter.image
            detailView.starTrekImage = starTrekCharacter.image
            print("hewiofjiwjfioweiofjow")
        }
        
    }
    
    
    
    func starWarsCharacterChosen(_ sender: UITapGestureRecognizer) {
        
        if starWarsCharacter != nil { starWarsCharacter.layer.borderWidth = 0.0 }
        let chosenImageView = sender.view as! UIImageView
        chosenImageView.layer.borderWidth = 2.0
        chosenImageView.layer.borderColor = UIColor.green.cgColor
        starWarsCharacter = chosenImageView
        checkForFight()
        print ("StarWARSSSSSSS")
    }
    
    
    func starTrekCharacterChosen(_ sender: UITapGestureRecognizer) {
        
        if starTrekCharacter != nil { starTrekCharacter.layer.borderWidth = 0.0 }
        let chosenImageView = sender.view as! UIImageView
        chosenImageView.layer.borderWidth = 2.0
        chosenImageView.layer.borderColor = UIColor.green.cgColor
        starTrekCharacter = chosenImageView
        checkForFight()
        print ("Star TREKKKKKK")
        
    }
    
    
    func checkForFight() {
        
        if starWarsCharacter != nil && starTrekCharacter != nil {
            
            performSegue(withIdentifier: "fightSegue", sender: nil)
        }
    }
    
    func panGesture() {
        
        
    }
    
    
    
    
    
 
}


