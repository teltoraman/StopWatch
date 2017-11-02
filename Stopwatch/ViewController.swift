

import UIKit

class ViewController: UIViewController {
    //カウントする初期数値を表す変数
    var countNum = 0
    
    //タイマーが動いているかどうかを保持する変数
    var timerRunning = false
    
    //タイマーを管理する変数
    var timer = Timer()
    
    @objc
    func update(sender: Timer) {
        //１ずつカウントしていく
        countNum += 1
        //1づつカウントしていく数値をlabelに表示させる
        label.text = "\(countNum)"
    }
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func start(_ sender: Any) {
        //もしタイマーが動いてない時
        if !timerRunning {
            // １秒間隔で繰り返し、ViewController.update(sender:)を呼び出すタイマーを定義
            timer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(ViewController.update(sender:)),
                                         userInfo: nil,
                                         repeats: true)
            timerRunning = true
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        //もしタイマーが動いている時
        if timerRunning {
            //タイマーを無効にする
            timer.invalidate()
            //タイマーは止まってます
            timerRunning = false
        }
    }
    @IBAction func reset(_ sender: Any) {
        //カウントする初期値を表示する
        countNum = 0
        //countNumをlabelの文字列へ代入する
        label.text = "\(countNum)"
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

