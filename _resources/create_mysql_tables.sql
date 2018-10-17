CREATE TABLE `active` (
  `date` date NOT NULL,
  `active` varchar(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `typestarttime` datetime DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

CREATE TABLE `menu` (
  `restaurantid` int(11) NOT NULL,
  `item` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `itemid` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastchange` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=latin1;

CREATE TABLE `orders` (
  `userid` varchar(15) NOT NULL,
  `restaurantid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `voteid` int(11) NOT NULL,
  `itemname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `housenumber` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `menulocation` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ordering` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `realname` varchar(45) DEFAULT NULL,
  `employeeid` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

CREATE TABLE `votes` (
  `date` date NOT NULL,
  `datetime` datetime NOT NULL,
  `user` varchar(45) NOT NULL,
  `vote` int(11) NOT NULL,
  `voteid` int(11) DEFAULT NULL,
  `userid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

