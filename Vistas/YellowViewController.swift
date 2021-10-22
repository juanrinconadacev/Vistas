

import UIKit

class YellowViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak var saludo: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        saludo.text = "Hola \(name ?? "usuario")!"
    }

}
