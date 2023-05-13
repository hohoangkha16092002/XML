(:for $x in (1 to 5)
return <test>{$x}</test>:)

for $x at $i in doc("books.xml")/books/book/title
return <book>{$i}. {data($x)}</book>
