//
//  EventCell.swift
//  MoreThanToday
//
//  Created by Gelber, Assaf on 6/2/15.
//  Copyright (c) 2015 Gelber, Assaf. All rights reserved.
//

import UIKit
import Foundation
import EventKit

class EventCell: UITableViewCell {

  var event: EKEvent? {
    didSet {
      if let event = self.event {
        eventPresenter = EventPresenter(forEvent: event)
        updateUI()
      }
    }
  }

  private var eventPresenter: EventPresenter!

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var locationLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var fromLabel: UILabel!
  @IBOutlet weak var toLabel: UILabel!

  private func updateUI() {
    titleLabel.text = eventPresenter.title
    locationLabel.text = eventPresenter.location
    dateLabel.text = eventPresenter.date
    fromLabel.text = eventPresenter.startTime
    toLabel.text = eventPresenter.endTime
  }
}
