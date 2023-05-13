for $x in doc("books.xml")/books/book
order by $x/@category, $x/title
return $x/title