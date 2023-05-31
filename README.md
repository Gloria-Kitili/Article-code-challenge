
# Article-code-challenge

The Author and Magazine classes have been updated to reflect the many-to-many relationship between them. This is done by using an Article class as a join model that belongs to both Author and Magazine.

The Article class now initializes with an author and magazine object rather than their names, since we need to create associations with them.

The Author class now has an add_article method that creates a new Article object and associates it with the author and the specified magazine. This method also calls add_article on the magazine object to create a reverse association.

The Magazine class now has a contributors method that returns an array of unique Author objects who have written for that magazine.

The Magazine class also has a contributing_authors method that returns an array of Author objects who have written more than 2 articles for the magazine.

The Magazine class also has a find_by_name method that takes a string of a magazine's name and returns the first magazine object that matches. This is useful when we want to look up a magazine by its name.
