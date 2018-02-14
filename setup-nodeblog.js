function printResult (result) {
    print(result);
}
db.createCollection('categories');
db.createCollection('posts');
db.posts.insert({title:'Blog Post One', category: 'Technology', author: "Brad", body: "this is a body", date: ISODate()}, printResult);
db.posts.insert({title:'Blog Post Two', category: 'Science', author: "Mark", body: "this is a body2", date: ISODate()}, printResult);
db.posts.find().pretty(printResult);
db.categories.insert({name:'Technology'});
db.categories.insert({name:'Science'});
db.categories.insert({name:'Business'});
