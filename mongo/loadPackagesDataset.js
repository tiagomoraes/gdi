// 1 
use packages;

db.packages.insertMany([
  { country: "Peru", price: 3210, cities: ["Lima", "Cusco", "Machu Picchu"], daysStaying: 10,  },
  { country: "Egypt", price: 5430, cities: ["Cairo", "Alexandria", "Luxor"], daysStaying: 10 },
  { country: "China", price: 5021, cities: ["Beijing", "Shanghai"], daysStaying: 10 },
  { country: "Canada", price: 6031, cities: ["Toronto", "Montreal", "Vancouver"], daysStaying: 10 },
  { country: "Canada", price: 6532, cities: ["Calgary", "Quebec"], daysStaying: 10, discount: "Y" },
  { country: "Canada", price: 7420, cities: ["Quebec", "Toronto", "Vancouver"], daysStaying: 14},
  { country: "Canada", price: 6956, cities: ["Ottawa",  "Montreal", "Quebec"], daysStaying: 9},
  { country: "Russia", price: 7200, cities: ["Moscow", "Saint Petersburg", "Kazan", "Kaliningrad", "Vladivostok"], daysStaying: 14, discount: "Y" },
  { country: "United Kingdom", price: 6200, cities: ["London", "Manchester", "Glasgow", "Liverpool"], daysStaying: 7},
  { country: "United Kingdom", price: 5550, cities: ["London", "Birmingham", "Sheffield"], daysStaying: 5, discount: "Y" },
  { country: "France", price: 8321, cities: ["Paris", "Marseille", "Lyon", "Nice"], daysStaying: 10 },
  { country: "France", price: 6794, cities: ["Marseille", "Lyon", "Nice", "Nantes", "Toulon"], daysStaying: 7, discount: "Y" },
  { country: "Portuagal", price: 6400, cities: ["Lisboa", "Porto", "Coimbra", "Évora"], daysStaying: 6, discount: "Y" },
  { country: "Denmark", price: 7469, cities: ["Copenhagen", "Odense", "Kolding"], daysStaying: 8},
  { country: "Bolivia", price: 3839, cities: ["Santa Cruz", "La Paz", "Potosí"], daysStaying: 7, discount: "Y" },
  { country: "Argentina", price: 2932, cities: ["Rosario", "Córdoba", "La Plata", "Tucumán"], daysStaying: 6, discount: "Y" },
  { country: "Mexico", price: 4121, cities: ["Mexico City", "Guadalajara", "Juárez"], daysStaying: 5, discount: "Y" },
  { country: "Mexico", price: 6532, cities: ["Mexico City", "Guadalajara", "Cancún"], daysStaying: 14},
  { country: "United States", price: 7132, cities: ["Los Angeles", "San Diego", "San Jose", "San Francisco"], daysStaying: 10},
  { country: "United States", price: 8123, cities: ["Las Vegas", "New York", "Chicago"], daysStaying: 13},
  { country: "Ejasland", price: 999999, cities: ["Disney", "Rip rbu", "Monster Energy", "Edmilson Town"], daysStaying: 666}
]);

// 26
db.packages.save( { country: "Pernambuco", price: 1234, cities: ["Recife", "Arcoverde", "Caruaru"], daysStaying: 10  } ); // meu país pernambuco

// 21 25
db.packages.update(
  { country: "Peru"},
  {
    $set: {
      daysStaying: 12
    }
  }
);

// 11
db.packages.update(
  { country: "China"},
  {
    $max: {
      price: 5248
    }
  }
);

// 12
db.packages.aggregate([{
  $group: {
    _id: "$country",
    price_avg: {$avg: "$price"}
  }
}]);

// 2 14 19
db.packages.find().pretty().sort({ price: -1 });

// 10
db.packages.find().count();

// 3
db.packages.find({ cities: { $size: 2 } });

// 29 16
db.packages.findOne({
  $where: function () {
    return (this.country == 'Peru');
  }
});

// 4 5 7 8 9
db.packages.aggregate([
  { $match: { price: { $gte: 6000 } } },
  {
    $group: {
      _id: "$cities",
      count: { $sum: 1 }
    }
  }
]);

// 6
db.packages.aggregate([
  { $project: { _id: 0, country: 1, price: 1, daysStaying: 1 } }
]);

// 13
db.packages.find( { discount: { $exists: true} } );

// 22 23
db.packages.createIndex( { cities: "text" } );

db.packages.find( { $text: { $search: "Cairo"} } );

// 20
db.packages.find( { cities: { $all: ["Calgary", "Quebec"] } } );

// 30
db.packages.update(
  {country: "China"},
  { $addToSet: { cities: "Wuxi"} }
);

// 28
db.packages.aggregate(
  [
    {
      $project:
      {
        country: 1,
        barato:
        {
          $cond: { if: { $gte: ["$price", 3500] }, then: "N", else: "Y" }
        }
      }
    }
  ]
);

// 24
db.packages.aggregate([
  {
     $project: {
        price: {
           $filter: {
              input: "$cities",
              as: "price",
              cond: { $gte: [ "$price", 5000 ] }
           }
        }
     }
  }
]);

// 15
db.packages.aggregate(
  {
    $limit: 3
  }
);

// 17 18
let mapFunction = function() {
  emit(this.country, 1);
};

let reduceFunction = function(country, values) {
  return Array.sum(values);
};

db.packages.mapReduce(
  mapFunction,
  reduceFunction,
  {out: "package_frequency_country"}
);

db.package_frequency_country.find();

// 27
db.packages.renameCollection("pacotes");