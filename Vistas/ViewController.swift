
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saludo: UILabel!
    @IBOutlet weak var nombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func aceptarClic(_ sender: UIButton) {
        print("clic en botón cambiar")
        let texto = nombre.text ?? "persona"
        saludo.text = "Hola \(texto)"
    }

}

