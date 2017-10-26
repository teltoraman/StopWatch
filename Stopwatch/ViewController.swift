

import UIKit

class ViewController: UIViewController {
    
    var countNum = 0
    //カウントする初期数値
    var timerRunning = false
    //最初はカウントをしないようにする
    var timer = Timer()
    //
    
    func update() {
        countNum += 1
        label.text = "\(countNum)"
    }
    
    
    @IBOutlet weak var label: UILabel!
    
   
    @IBAction func start(_ sender: Any) {
        if !timerRunning {
            
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        
    }
    
    @IBAction func reset(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

