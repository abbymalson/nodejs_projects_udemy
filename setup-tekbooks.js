db.createCollection('books');
db.createCollection('categories');
db.books.insert({title:"Professional Node.js",description:"sample text One", category: "Node.js", author: "John Doe One", publisher: "publisher One", price: "19.99", cover: "node1.jpg"});
db.books.find();
db.books.insert({title:"Node.js Blueprint",description:"sample text Two", category: "Node.js", author: "John Doe Two", publisher: "publisher Two", price: "19.99", cover: "node2.jpg"});

db.categories.insert({name:'node.js'});
db.categories.insert({name:'mongodb'});
db.categories.insert({name:'php'});
