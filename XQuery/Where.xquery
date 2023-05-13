for $x in doc("books.xml")/books/book
where $x/price>30 and $x/price<100
return $x/title