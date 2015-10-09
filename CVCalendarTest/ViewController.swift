//
//  ViewController.swift
//  CVCalendarTest
//
//  Created by Jonathan Hooper on 10/8/15.
//  Copyright © 2015 Jonathan Hooper. All rights reserved.
//

import UIKit
import CVCalendar

class ViewController: UIViewController, CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    
    @IBOutlet var calendarView: CVCalendarView!
    @IBOutlet var calendarMenuView: CVCalendarMenuView!

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        calendarView.commitCalendarViewUpdate()
        calendarMenuView.commitMenuViewUpdate()
    }
    
    func presentationMode() -> CalendarMode {
        return CalendarMode.MonthView
    }
    
    func firstWeekday() -> Weekday {
        return Weekday.Sunday
    }
}

