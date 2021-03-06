import UIKit

class ViewController: UIViewController {

    private let ARRAY_IMAGES = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    private var randomDiceNumber: Int = 0;

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        newBallImage()
    }

    private func newBallImage() {
        let index = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ARRAY_IMAGES[index])
    }
}
