//
//  QAViewController.swift
//  QA
//
//  Created by 施馨檸 on 2017/8/28.
//  Copyright © 2017年 施馨檸. All rights reserved.
//

import UIKit

class QAViewController: UIViewController {
    
    
    
    
    struct qna {
        var answer: String
        var nbaStar: UIImage!
    }
    
    
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionNum: UILabel!
    
    
    var count = 0
    //    題目及問題圖片array
    var qnaArray = [qna(answer: "Stephen Curry", nbaStar: #imageLiteral(resourceName: "stephenCurry")),
                    qna(answer: "Tim Duncan", nbaStar: #imageLiteral(resourceName: "timDuncan")),
                    qna(answer: "James Harden", nbaStar: #imageLiteral(resourceName: "jamesHarden")),
                    qna(answer: "Kawhi Leonard", nbaStar: #imageLiteral(resourceName: "kawhiLeonard")),
                    qna(answer: "Kevin Durant", nbaStar: #imageLiteral(resourceName: "kevinDurant")),
                    qna(answer: "Klay Thompson", nbaStar: #imageLiteral(resourceName: "stephenCurry")),
                    qna(answer: "Kobe Bryant", nbaStar: #imageLiteral(resourceName: "kobeBryant")),
                    qna(answer: "Kyrie Irving", nbaStar: #imageLiteral(resourceName: "kyrieIrving")),
                    qna(answer: "Draymond Green", nbaStar: #imageLiteral(resourceName: "draymondGreen")),
                    qna(answer: "LeBorn James", nbaStar: #imageLiteral(resourceName: "lebornJames"))]
    
//    下一題按鈕，讓qna[count+1]
    @IBAction func nextButton(_ sender: Any) {
        count += 1
        if count == 10 {
            count = 0
        }
        next()
    }
    
//    show答案
    @IBAction func answerButton(_ sender: Any) {
       answerLabel.isHidden = false
    }
    
//    取得array資料，隱藏答案
    func next () {
        questionNum.text = "\(count+1)"
        answerLabel.text = qnaArray[count].answer
        questionImageView.image = qnaArray[count].nbaStar
        answerLabel.isHidden = true
    }

    
   
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        在初始頁面就顯示第一題
        next()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
