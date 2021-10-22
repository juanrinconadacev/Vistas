
import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func goToYellowButton(_ sender: Any) {
        if !nameTextField.text!.isEmpty {
            goToYellow()
        }
    }
    
    func goToYellow() {
        performSegue(withIdentifier: "goToYellow", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! YellowViewController
        destination.name = nameTextField.text
    }
}
