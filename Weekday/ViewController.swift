//
//  ViewController.swift
//  Weekday
//
//  Created by Дмитрий Пономарев on 13.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    print ("its NewBranch")
    print ("hi, its new branch with new commit")
    
    let label = UILabel()
    let day = UILabel()
    let week = UILabel()
    let year = UILabel()
    let dayText = UITextField()
    let weekText = UITextField()
    let yearText = UITextField (frame: CGRect(x: 16, y: 125, width: 32, height: 40))
    let resultLabel = UILabel()
    let button = UIButton()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        makeObjects()
        makeConstraints()
        
        func addView () {
                view.addSubview(label)
                view.addSubview(day)
                view.addSubview(week)
                view.addSubview(year)
                view.addSubview(dayText)
                view.addSubview(weekText)
                view.addSubview(yearText)
                view.addSubview(resultLabel)
                view.addSubview(button)
        }
        
        func makeObjects () {
            
            label.text = "Weekday"
            label.font = .systemFont(ofSize: 30)
            label.textColor = .black
            
            day.text = "day"
            day.font = .systemFont(ofSize: 20)
            day.textColor = .black
            
            week.text = "week"
            week.font = .systemFont(ofSize: 20)
            week.textColor = .black
            
            year.text = "year"
            year.font = .systemFont(ofSize: 20)
            year.textColor = .black
            
            dayText.backgroundColor = .lightGray
            dayText.layer.cornerRadius = 10
            
            weekText.backgroundColor = .lightGray
            weekText.layer.cornerRadius = 10
            
            yearText.backgroundColor = .lightGray
            yearText.layer.cornerRadius = 10
            
            resultLabel.text = "Day"
            resultLabel.font = .systemFont(ofSize: 40)
            resultLabel.textColor = .black
            
            button.backgroundColor = .lightGray
            button.setTitleColor(.black, for: .normal)
            button.setTitle("press", for: .normal)
            button.layer.cornerRadius = 10
            button.addTarget(self, action: #selector(fun), for: .touchDown)
    
        }
        func makeConstraints () {
            
            label.snp.makeConstraints {
                $0 .top.equalToSuperview().inset(200)
                $0 .centerX.equalToSuperview()
            }
            day.snp.makeConstraints {
                $0 .top.equalTo(label).inset(100)
                $0 .left.equalToSuperview().inset(30)
            }
            week.snp.makeConstraints {
                $0 .top.equalTo(day).inset(40)
                $0 .left.equalToSuperview().inset(30)
            }
            year.snp.makeConstraints {
                $0 .top.equalTo(week).inset(40)
                $0 .left.equalToSuperview().inset(30)
            }
            dayText.snp.makeConstraints {
                $0 .top.equalTo(label).inset(100)
                $0 .left.equalToSuperview().inset(100)
                $0 .width.equalToSuperview().inset(100)
            }
            weekText.snp.makeConstraints {
                $0 .top.equalTo(dayText).inset(40)
                $0 .left.equalToSuperview().inset(100)
                $0 .width.equalToSuperview().inset(100)
            }
            yearText.snp.makeConstraints {
                $0 .top.equalTo(weekText).inset(40)
                $0 .left.equalToSuperview().inset(100)
                $0 .width.equalToSuperview().inset(100)
            }
            resultLabel.snp.makeConstraints {
                $0 .top.equalTo(year).inset(70)
                $0 .centerX.equalToSuperview()
            }
            button.snp.makeConstraints{
                $0 .top.equalTo(resultLabel).inset(130)
                $0 .centerX.equalToSuperview()
                $0 .width.equalToSuperview().inset(70)
                $0 .height.equalToSuperview().inset(390)
            }
        }
        
        
        
        
        
        
    
        
    }
    @objc func fun () {
        let calendar = Calendar.current
        var datecomponent = DateComponents()
        datecomponent.year = Int (yearText.text!)
        datecomponent.month = Int (weekText.text!)
        datecomponent.day = Int (dayText.text!)
        datecomponent.hour = 12
        let day1 = calendar.date(from: datecomponent)
        let dayof = DateFormatter()
        dayof.dateFormat = "EEEE"
        let weekday = dayof.string(from: day1!)
        resultLabel.text = weekday
    }

}


