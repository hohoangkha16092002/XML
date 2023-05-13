(: read the entire xml document :)
let $books := doc("books.xml")
for $x in $books/books/book
where $x/price > 30
return $x/title