module.exports = function(robot) {
  robot.hear(/beep$/i, function(msg) {
    return msg.send("boop");
  });
  return robot.hear(/(fooditem)/i, function(msg) {
    var images;
    images = ["http://blog.caplinked.com/wp-content/uploads/2014/02/Grilled-Pepper-Steak.jpg", "http://www.applebees.com/~/media/2012_menu_images/Menu%20C/579x441/Entrees/Steaks/Steaks_bourbon_steak.jpg", "http://www.scotchnsirloinrestaurant.net/wp-content/uploads/2011/02/steak-teriyaki.jpg"];
    return msg.send(msg.random(images));
  });
};

