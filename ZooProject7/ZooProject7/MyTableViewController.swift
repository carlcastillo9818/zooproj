//
//  MyTableViewController.swift
//  ZooProject7
//
//  Created by Carlos Castillo on 12/2/20.
// for mobile apps class

import UIKit

class MyTableViewController: UITableViewController {

    
    var sectionNamesArray : [String] = [] // array that holds section names
    var dogsArray : [Animal] = [] // array that holds dog objects
    var catsArray : [Animal] = [] // array holding cat objects
    var clickedAnimal = Animal()
    var SectionPositionsArrayCounter : Int = 0 // counter for the array of positions
    var SectionPositionsArray : [Int] = [] // array of section positions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadInitialValues()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    func loadInitialValues()
    {
        loadDogs()
        loadCats()
        sectionNamesArray = ["Dogs", "Cats"]
        
        var x = 0
        while(x < sectionNamesArray.count) // loop runs and each section position is added to the sectionpos array
        {
            SectionPositionsArray.append(x)
            x += 1
        }
    }
        

    // sets the values for each dog objects properties
    func loadDogs()
    {
        let arcticWolf = Animal(img: UIImage(named: "Arctic-wolf.jpg")!, thumbnailimg: UIImage(named: "arcticWolfTN.jpg")!, name: "Arctic Wolf", shortDesc: "They have small ears and short muzzles to retain body heat", longDesc: "Arctic wolves have white fur, which helps them blend in with the snowy environment around them. Compared to other subspecies of wolves, they have smaller ears, shorter legs, and smaller muzzles. Their fur, however, is dense and long in comparison to other subspecies. At their longest they can grow to nearly 6 ft. long, including their tail. The Arctic wolf is a subspecies of the gray wolf (Canis lupus). Arctic wolves inhabit some of the most inhospitable terrain in the world where the air temperature rarely rises above -30 degrees C (-22 F) and the ground is permanently frozen.")
        let coyote = Animal(img: UIImage(named: "coyote_pic.jpg")!, thumbnailimg: UIImage(named: "coyoteTN.jpg")!, name: "Coyote", shortDesc: "Have a long, bushy tail, pointed ears and a narrow pointed face.", longDesc: "The coyote is a medium-sized member of the dog family that includes wolves and foxes. With pointed ears, a slender muzzle, and a drooping bushy tail, the coyote often resembles a German shepherd or collie. Coyotes are usually a grayish brown with reddish tinges behind the ears and around the face but coloration can vary from a silver-gray to black. The tail usually has a black tip. Eyes are yellow, rather than brown like many domestic dogs. Most adults weigh between 25-35 pounds, with a few larger individuals weighing up to 42 pounds.")
        let dhole = Animal(img: UIImage(named: "dhole_dog.jpg")!, thumbnailimg:UIImage(named: "dholeTN.jpg")!, name: "Dhole", shortDesc: "Has a broad skull and a short, broad muzzle.", longDesc: "The dhole is also known as the Asiatic wild dog, red dog, and whistling dog. It is about the size of a German shepherd but looks more like a long-legged fox. This highly elusive and skilled jumper is classified with wolves, coyotes, jackals, and foxes in the taxonomic family Canidae.  Dholes are incredibly athletic. They are fast runners, excellent swimmers, and impressive jumpers. These skills are critical when the pack is hunting. In some protected areas, they share habitat with tigers and leopards.")
        let culpeo = Animal(img: UIImage(named:"culpeo_dog.jpg")!, thumbnailimg : UIImage(named : "culpeoTN.jpg")!, name: "Culpeo", shortDesc: "Are found in South America from Ecuador to southern Chile.", longDesc: "The Culpeo is a South American fox species. It is the second-largest native canid on the continent, after the Maned wolf. Culpeos have grey and reddish fur, a white chin, reddish legs and a stripe on their back that may be barely visible. The neck and shoulders are often tawny to rufous in color, while the upper back is dark. The bushy tail has a black tip. These animals live in a wide variety of habitats including broadleaf temperate southern beech forest, sclerophyllous matorral, rugged and mountain terrain, deep valleys, deserts, and high plateaus, like the Altiplano.")
        dogsArray = [arcticWolf, coyote, dhole, culpeo] // insert dogs into the array
    }

    // sets the values for each cat object properties
    func loadCats()
    {
        let tiger = Animal(img: UIImage(named: "tiger-pic.jpg")!, thumbnailimg: UIImage(named:"tigerTN.jpg")!, name: "Tiger", shortDesc: "Most recognisable for its dark stripes on orange fur.", longDesc: "Tigers are the largest living species of big cat. The largest subspecies are the Bengal and Siberian tigers. These cats can stand as tall as 4 ft. at the shoulder, and weigh over 800 lbs. in the wild – and even more in zoos!  They have thick fur that varies in color, but is generally a burnished orange with vertical black stripes. Their stomachs, chests, and parts of their faces are white with black stripes. The fur around the neck and chest grows thicker, but not quite as long as a lion’s mane.")
        let snowLeopard = Animal(img: UIImage(named: "snow_leopard.jpg")!, thumbnailimg:UIImage(named:"snowleopardTN.jpg")!, name: "Snow Leopard", shortDesc: "Native to the mountain ranges of Central and South Asia.", longDesc: "Snow leopards have white or grey fur with black spots and rosettes. The coloration on the head is white with small black spots, and the back and tail are covered in larger rosette patterns.  This cat has a thick coat, and a short, stocky body well adapted to living in cold environments. Its face has a short muzzle, and small, rounded ears. Snow leopards are also equipped with wide paws to better move through the snow.")
        let cheetah = Animal(img: UIImage(named: "cheetah_pic.jpg")!, thumbnailimg: UIImage(named: "cheetah_TN.jpg")!, name: "Cheetah", shortDesc: "Is a medium large cat which lives in Africa.", longDesc: "These cats are lean and lanky, allowing them to reach incredible speeds. They have tan-colored fur with solid black, round spots. They have very long legs, a long narrow tail for balance, and a deep chest that contains large lungs.  Cheetahs have round ears, and black markings running from the inside of the eye to the corner of the mouth, this pattern gives a “running makeup” look to the face.")
        let cougar = Animal(img: UIImage(named: "cougar_pic.jpg")!, thumbnailimg: UIImage(named: "cougar_tn.jpg")!, name: "Cougar", shortDesc: "Is the second largest cat in North America.", longDesc: "The cougar goes by many names: mountain lion, puma, deer tiger, red tiger, panther and, its taxonomic name, Puma concolor. The largest of the small cat species, these agile animals can jump up to 20 feet from the ground into a tree.  Cougars are large, rivaling the jaguar in size, and are typically tawny cats with buff-colored throats, chests and bellies.  Cougar mothers give birth to between one and six cubs who will stay with her until they're 12 to 18 months of age.")
        catsArray = [tiger, snowLeopard, cheetah, cougar] // insert cats into the array
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionNamesArray.count
    }

    // this function gets the number of rows in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        var myRowCount = 0
        
        if(section == SectionPositionsArray[SectionPositionsArrayCounter])
        {
            myRowCount = dogsArray.count
        }
        else
            if(section == SectionPositionsArray[SectionPositionsArrayCounter + 1])
            {
                myRowCount = catsArray.count
            }
            else
            {
                return 0
            }
        
        return myRowCount // this will be some variable ( no hard code values allowed)
    }

    
    // this function loops through a series of rows in the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath)

        // Configure the cell...
        if(indexPath.section == 0) // first section
        {
            cell.textLabel?.text = dogsArray[indexPath.row].animalName// change the big text
            cell.detailTextLabel?.numberOfLines = 2
            cell.detailTextLabel?.text = dogsArray[indexPath.row].animalShortDescription // change the little text
            cell.imageView?.image = dogsArray[indexPath.row].animalThumbnail
            
            
        }
        else
            if(indexPath.section == 1) // second section
            {

                cell.textLabel?.text = catsArray[indexPath.row].animalName// change the big text
                cell.detailTextLabel?.numberOfLines = 2
                cell.detailTextLabel?.text = catsArray[indexPath.row].animalShortDescription // change the little text
                cell.imageView?.image = catsArray[indexPath.row].animalThumbnail
            }
            
        return cell
    }
    
    
    // this function returns the title of the current section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionNamesArray[section]
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if(indexPath.section == 0)
        {
            self.clickedAnimal.animalName = dogsArray[indexPath.row].animalName
            self.clickedAnimal.animalLongDescription = dogsArray[indexPath.row].animalLongDescription
            self.clickedAnimal.animalImage = dogsArray[indexPath.row].animalImage
        }
        else
            if(indexPath.section == 1)
            {
                self.clickedAnimal.animalName = catsArray[indexPath.row].animalName
                self.clickedAnimal.animalLongDescription = catsArray[indexPath.row].animalLongDescription
                self.clickedAnimal.animalImage = catsArray[indexPath.row].animalImage
            }

    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let myBackItem = UIBarButtonItem() // create an object for the back button on the top bar
           myBackItem.title = "Go Back" // change the text of the back button!
           navigationItem.backBarButtonItem = myBackItem // set change here
        
        // Get the new view controller using segue.destination.
        
        // declare var called vc and use typecasting as!
        // create object of the destination view controller type.  then it will capture data from tableviewcontroller and pass to the viewcontroller.
        let vc = segue.destination as! AnimalDetailsViewController
        vc.currentAnimal = self.clickedAnimal
            
        // Pass the selected object to the new view controller.
    
    }
    

}
