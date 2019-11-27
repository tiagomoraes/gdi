// 1 2 3 4 5 6 7 8 10 14 16 19

use packages;

db.packages.insertMany([
  { country: "Peru", price: 3210, cities: ["Lima", "Cusco", "Machu Picchu"], daysStaying: 10 },
  { country: "Egypt", price: 5430, cities: ["Cairo", "Alexandria", "Luxor"], daysStaying: 10 },
  { country: "China", price: 5021, cities: ["Beijing", "Shanghai"], daysStaying: 10 },
  { country: "Canada", price: 6031, cities: ["Toronto", "Montreal", "Vancouver"], daysStaying: 10 },
  { country: "Canada", price: 6532, cities: ["Calgary", "Quebec"], daysStaying: 10 }
]);

db.packages.find().pretty().sort({ price: -1 });

db.packages.find().count();

db.packages.find({ cities: { $size: 2 } });

db.packages.findOne({
  $where: function () {
    return (this.country == 'Peru');
  }
});


db.packages.aggregate([
  { $match: { price: { $gte: 6000 } } },
  {
    $group: {
      _id: "$cities",
      count: { $sum: 1 } /////////////////////////////////////////////////////////////////////////////
    }
  }
]);

db.packages.aggregate([
  { $project: { _id: 0, country: 1, price: 1, daysStaying: 1 } }
]);
