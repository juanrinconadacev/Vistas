
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saludo: UILabel!

    @IBAction func nameChanged(_ sender: UITextField) {
        let texto = sender.text ?? "persona"
        saludo.text = "Hola \(texto)!"
    }
}

