let $book := /booklist/book[@isbn='222222']
return
  <book>
    <title lang="{ $book/title/@lang }">{ $book/title/text() }</title>
    <price unit="{ $book/price/@unit }">{ $book/price/text() }</price>
  </book>