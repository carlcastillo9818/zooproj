//
//  MyAnimalClass.swift
//  ZooProject7
//
//  Created by  on 12/2/20.
//

import Foundation
import UIKit

class Animal
{
    var animalImage : UIImage
    var animalThumbnail : UIImage 
    var animalName : String
    var animalShortDescription : String
    var animalLongDescription : String
    
    //Initializer that allows user to input all the properties
    init(img : UIImage, thumbnailimg: UIImage, name : String, shortDesc : String, longDesc : String) {
        self.animalImage = img
        self.animalThumbnail = thumbnailimg
        self.animalName = name
        self.animalShortDescription = shortDesc
        self.animalLongDescription = longDesc
    }
    
    init()
    {
        self.animalImage = UIImage()
        self.animalThumbnail = UIImage()
        self.animalName = ""
        self.animalShortDescription = ""
        self.animalLongDescription = ""
        
    }
    
}
