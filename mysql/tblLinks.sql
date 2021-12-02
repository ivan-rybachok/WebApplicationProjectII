-- Host: localhost:3306
-- Generation Time: Sep 25, 2016 at 10:48 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `tblCategories` (
  `categoryID` int(10) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(100) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0 ;

-- truncate table
--
-- Dumping data for table `tblLinks
--
-- INSERT INTO `tblLinks` (`columnName`, `pinned`, `linkName`, `permalink`) VALUES

INSERT INTO `tblCategories` (`categoryID`,`categoryName`) VALUES
(1,'Technology'),
(2,'School'),
(3,'Play'),
(4,'Data');


CREATE TABLE IF NOT EXISTS `tblLinks` (
  `linkID` int(10) NOT NULL AUTO_INCREMENT,
  -- `columnName` varchar(100) NOT NULL,
  `categoryID` int (10) NOT NULL,
  `pinned` boolean NOT NULL,
  `linkName` varchar(100) NOT NULL,
  `permalink` varchar(100),
  PRIMARY KEY (`linkID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- truncate table
--
-- Dumping data for table `tblLinks
--
-- INSERT INTO `tblLinks` (`columnName`, `pinned`, `linkName`, `permalink`) VALUES

INSERT INTO `tblLinks` (`categoryID`, `pinned`, `linkName`, `permalink`) VALUES
(1, TRUE, 'AngularJS', 'https://angularjs.org/'),
(1, TRUE, 'Block Element Modifuier', 'http://getbem.com/'),
(1, TRUE, 'CreateJS | Home', 'https://www.createjs.com/'),
(1, FALSE, 'Flexbox Tutorial Reference', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/'),
(1, FALSE, 'Pluralslight', 'https://www.pluralsight.com/'),

(2, TRUE, 'MAMP Local Server', 'https://www.mamp.info/en/windows/'),
(2, FALSE, 'NSCC Brightspace Website', 'https://nscconline.desire2learn.com/d2l/home'),
(2, FALSE, 'Jira', 'https://www.atlassian.com/software/jira'),
(2, FALSE, 'Trello', 'https://trello.com/en'),
(2, FALSE, 'Acadia Robotics Portal', 'http://robots-old.acadiau.ca/registration/#/home'),

(3, FALSE, 'instagram', 'https://www.instagram.com/'),
(3, FALSE, 'Linkedin', 'https://www.linkedin.com/'),
(3, FALSE, 'Twitter', 'https://twitter.com/'),
(3, FALSE, 'Netflix', 'https://www.netflix.com/ca/'),
(3, FALSE, 'YouTube', 'https://www.youtube.com/'),

(4, TRUE, 'Gmail', 'https://mail.google.com/'),
(4, TRUE, 'Google Drive', 'https://saml.nspes.ca/'),
(4, TRUE, 'Ski Wentworth', 'https://skiwentworth.ca/'),
(4, FALSE, 'RBC Royal Bank', 'https://www.rbcroyalbank.com/personal.html'),
(4, FALSE, 'Google Maps', 'https://www.google.ca/maps');

-- (1, TRUE, 'AngularJS', 'https://angularjs.org/'),
-- (1, TRUE, 'Block Element Modifuier', 'http://getbem.com/'),
-- (1, TRUE, 'CreateJS | Home', 'https://www.createjs.com/'),
-- (1, TRUE, 'Flexbox Tutorial Reference', 'https://css-tricks.com/snippets/css/a-guide-to-flexbox/'),
-- (1, TRUE, 'Pluralslight', 'https://www.pluralsight.com/'),
-- (1, TRUE, 'Tutorialpoint : Angular tutorial', 'https://www.tutorialspoint.com/angular8/index.htm'),
-- (1, TRUE, 'W3 Schools', 'https://www.w3schools.com/'),
-- (1, FALSE, 'Android API', 'https://developer.android.com/reference'),
-- (1, FALSE, 'Android Apps on Google Play', 'https://play.google.com/store/apps?hl=en_CA&gl=US'),
-- (1, FALSE, 'Code School', 'https://www.pluralsight.com/codeschool'),
-- (1, FALSE, 'EaselJS Pixel Perfect Collision Detection', 'http://indiegamr.com/easeljs-pixel-perfect-collision-detection-for-bitmaps-with-alpha-threshold/'),
-- (1, FALSE, 'FlexBox Cheat Sheet', 'https://yoksel.github.io/flex-cheatsheet/'),
-- (1, FALSE, 'FlexBox Tutorial (flexboxZombies)', 'https://geddski.teachable.com/p/flexbox-zombies'),
-- (1, FALSE, 'Free online sprite editor', 'https://www.piskelapp.com/'),
-- (1, FALSE, 'GitHub', 'https://github.com/'),
-- (1, FALSE, 'Google Play Developer Console', 'https://play.google.com/console/about/'),
-- (1, FALSE, 'Java Platform SE 8 API', 'https://docs.oracle.com/javase/8/docs/api/'),
-- (1, FALSE, 'JavaScript Obfuscator', 'https://obfuscator.io/'),
-- (1, FALSE, 'javascript-obfuscator', 'https://github.com/javascript-obfuscator'),
-- (1, FALSE, 'jQuery', 'https://jquery.com/'),
-- (1, FALSE, 'Learn Python', 'https://www.learnpython.org/'),
-- (1, FALSE, 'Mozilla Developer Network', 'https://developer.mozilla.org/en-US/'),
-- (1, FALSE, 'Pluralslight Tutorials', 'https://www.pluralsight.com/guides/'),
-- (1, FALSE, 'Python Built-in-Functions', 'https://docs.python.org/3/library/functions.html'),
-- (1, FALSE, 'Regex Editor', 'http://www.pyregex.com/'),
-- (2, TRUE, 'MAMP Local Server', 'https://www.mamp.info/en/windows/'),
-- (2, TRUE, 'NSCC Brightspace Website', 'https://nscconline.desire2learn.com/d2l/home'),
-- (2, TRUE, 'Jira', 'https://www.atlassian.com/software/jira'),
-- (2, TRUE, 'Trello', 'https://trello.com/en'),
-- (2, TRUE, 'Acadia Robotics Portal', 'http://robots-old.acadiau.ca/registration/#/home'),
-- (2, TRUE, 'Amazon Web Services', 'https://aws.amazon.com/'),
-- (2, TRUE, 'Eventbrite', 'https://www.eventbrite.ca/'),
-- (2, FALSE, 'Microsoft Azure', 'https://azure.microsoft.com/en-ca/'),
-- (2, FALSE, 'NSCC Nova Scotia Community College', 'https://www.nscc.ca/'),
-- (2, FALSE, 'NSCC Microsft Office 365', 'https://www.office.com/?auth=2'),
-- (2, FALSE, 'NSCC Combine College and University', 'https://www.nscc.ca/admissions/articulation_agreements.asp'),
-- (2, FALSE, 'MyNSCC', 'https://peoplesoft.nscc.ca/'),
-- (2, FALSE, 'NSCC Microsoft Planner', 'https://tasks.office.com/nscc.onmicrosoft.com/en-US/Home/Planner/'),
-- (3, TRUE, 'instagram', 'https://www.instagram.com/'),
-- (3, TRUE,'Linkedin', 'https://www.linkedin.com/'),
-- (3, TRUE, 'Twitter', 'https://twitter.com/'),
-- (3, TRUE, 'Netflix', 'https://www.netflix.com/ca/'),
-- (3, TRUE, 'YouTube', 'https://www.youtube.com/'),
-- (3, TRUE, 'Amazon.ca', 'https://www.amazon.ca/'),
-- (3, TRUE, 'GymShark', 'https://ca.gymshark.com/'),
-- (3, TRUE, 'ShopSkis', 'https://www.evo.com/'),
-- (3, TRUE, 'VScode', 'https://vscode.dev/'),
-- (3, FALSE, 'Kijiji', 'https://www.kijiji.ca/'),
-- (3, FALSE, 'Facebook MarketPlace', 'https://www.facebook.com/marketplace/'),
-- (3, FALSE, 'Best Buy', 'https://www.bestbuy.ca/en-ca'),
-- (3, FALSE, 'H&M', 'https://www2.hm.com/en_ca/index.html'),
-- (3, FALSE, 'Google Fonts', 'https://fonts.google.com/'),
-- (3, FALSE, 'Weather Network', 'https://www.theweathernetwork.com/ca'),
-- (3, FALSE, 'Amazon Prime Video', 'https://www.primevideo.com/'),
-- (3, FALSE, 'NASA', 'https://www.nasa.gov/content/live-coverage-of-nasas-double-asteroid-redirection-test-dart-mission'),
-- (3, FALSE, 'SpaceX', 'https://www.spacex.com/'),
-- (3, FALSE, 'National Geographi', 'https://www.nationalgeographic.com/'),
-- (3, FALSE, '433', 'https://www.433football.com//'),
-- (3, FALSE, 'Chess.com', 'https://www.chess.com/'),
-- (4, TRUE, 'Gmail', 'https://mail.google.com/'),
-- (4, TRUE, 'Google Drive', 'https://saml.nspes.ca/'),
-- (4, TRUE, 'Ski Wentworth', 'https://skiwentworth.ca/'),
-- (4, TRUE, 'RBC Royal Bank', 'https://www.rbcroyalbank.com/personal.html'),
-- (4, TRUE, 'Google Maps', 'https://www.google.ca/maps'),
-- (4, TRUE, 'Drive and Listen', 'https://driveandlisten.herokuapp.com/'),
-- (4, TRUE, 'Wifi Speed Test', 'https://www.speedtest.net/'),
-- (4, TRUE, 'ESPN', 'https://www.espn.com/'),
-- (4, TRUE, 'Wikipedia', 'https://en.wikipedia.org/wiki/Main_Page'),
-- (4, TRUE, 'Twitch', 'https://www.twitch.tv/'),
-- (4, FALSE, 'Petro Canada Points', 'https://www.petro-canada.ca/en/personal/discover-petro-points'),
-- (4, FALSE, 'NY Times', 'https://www.nytimes.com/ca/'),
-- (4, FALSE, 'CNN', 'https://www.cnn.com/'),
-- (4, FALSE, 'Geeksforgeek', 'https://www.geeksforgeeks.org/'),
-- (4, FALSE, 'Better Programming', 'https://betterprogramming.pub/'),
-- (4, FALSE, 'Stocks', 'https://www.bloomberg.com/markets/stocks'),
-- (4, FALSE, 'Yahoo!', 'https://ca.yahoo.com/'),
-- (4, FALSE, 'TinyJpg', 'https://tinyjpg.com/'),
-- (4, FALSE, 'Subway', 'https://www.subway.com/en-CA'),
-- (4, FALSE, 'Costco', 'https://www.costco.ca/');

-- 

