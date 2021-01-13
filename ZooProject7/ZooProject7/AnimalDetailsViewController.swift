//
//  AnimalDetailsViewController.swift
//  ZooProject7
//
//  Created by Carlos Castillo on 12/6/20.
//

import UIKit

class AnimalDetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    var currentAnimal : Animal = Animal() // like a catchers mitt, it will capture data thats coming to it from other table
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setAnimalViewValues()
    }
    
    // after loading the view, the labels and image are set to the current animals values
    func setAnimalViewValues()
    {
        self.nameLabel.text = currentAnimal.animalName
        self.descriptionLabel.text = currentAnimal.animalLongDescription
        self.animalImage.image = currentAnimal.animalImage
        self.animalImage.contentMode = .scaleAspectFill // test this out with other animal objs
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
