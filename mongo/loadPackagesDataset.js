// 1 
use packages;

db.packages.insertMany([
  { country: "Peru", price: 3210, cities: ["Lima", "Cusco", "Machu Picchu"], daysStaying: 10 },
  { country: "Egypt", price: 5430, cities: ["Cairo", "Alexandria", "Luxor"], daysStaying: 10 },
  { country: "China", price: 5021, cities: ["Beijing", "Shanghai"], daysStaying: 10 },
  { country: "Canada", price: 6031, cities: ["Toronto", "Montreal", "Vancouver"], daysStaying: 10 },
  { country: "Canada", price: 6532, cities: ["Calgary", "Quebec"], daysStaying: 10, discount: "Y" }
]);

// 26
db.packages.save( { country: "Pernambuco", price: 1234, cities: ["Recife", "Arcoverde", "Caruaru"], daysStaying: 10  } ) // meu país pernambuco

// 21 25
db.packages.update(
  { country: "Peru"},
  {
    $set: {
      daysStaying: 12
    }
  }
)

// 11
db.packages.update(
  { country: "China"},
  {
    $max: {
      price: 5248
    }
  }
)

// 12
db.packages.aggregate([{
  $group: {
    _id: "$country",
    price_avg: {$avg: "$price"}
  }
}])

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
      count: { $sum: 1 } /////////////////////////////////////////////////////////////////////////////
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
          $cond: { if: { $gte: ["price", 3500] }, then: "N", else: "Y" }
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
              input: "$price",
              as: "price",
              cond: { $gte: [ "$$price", 5000 ] }
           }
        }
     }
  }
])


// 18                   é só isso??? tem que ser algo útil ou pode ser só assim?
exports = function(nome) {
  return "Bem vindo, " + nome + ", qual pacote deseja?"
}

// 15
db.packages.aggregate(
  {
    $limit: 3
  }
)




// 27
db.packages.renameCollection("pacotes");