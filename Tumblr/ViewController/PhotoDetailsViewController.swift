//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Kun Huang on 9/18/18.
//  Copyright © 2018 Kun Huang. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    var photoURL: URL?
    @IBOutlet weak var photoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImage.af_setImage(withURL: photoURL!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FullScreen" {
            let vc = segue.destination as! FullScreenPhotoViewController
            vc.photoURL = self.photoURL
        }
    }

}
