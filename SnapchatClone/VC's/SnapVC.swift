//
//  SnapViewController.swift
//  SnapchatClone
//
//  Created by Selçuk İleri on 4.11.2023.
//

import UIKit
import Firebase
import ImageSlideshow

class SnapVC: UIViewController {
    
    var selectedSnap: Snap?
    var inputArray = [KingfisherSource]()

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let snap = selectedSnap {
            timeLabel.text = "Time Left: \(snap.timeDifference)"
            for imageURL in snap.imageURLArray {
                inputArray.append(KingfisherSource(urlString: imageURL)!)
            }
            
            let imageSlideShow = ImageSlideshow(frame: CGRect(x: 10, y: 10, width: self.view.frame.width * 0.95, height: self.view.frame.height * 0.90))
            imageSlideShow.backgroundColor = UIColor.white
            imageSlideShow.contentScaleMode = UIViewContentMode.scaleAspectFit
            
            let pageIndicator = UIPageControl()
            pageIndicator.currentPageIndicatorTintColor = UIColor.lightGray
            pageIndicator.pageIndicatorTintColor = UIColor.black
            imageSlideShow.pageIndicator = pageIndicator
            
            imageSlideShow.setImageInputs(inputArray)
            self.view.addSubview(imageSlideShow)
            self.view.bringSubviewToFront(timeLabel)
        }
        
    }
    
    
}
