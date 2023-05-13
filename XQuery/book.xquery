(:  1
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    order by $x/price
    return <li>{data($x/title)}</li>
}</ul>
:)

(:  2
<ul>{ 
    for $x in doc("book.xml")//book[last()]
    return $x/title/text()
}</ul>
:)

(:  3
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    order by $x/price
    return <li>{data($x/title)}</li>
}</ul>
:)

(:  4
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    return <li>{data($x/title)} - {data($x/price)}</li>
}</ul>
:)

(:  5
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/price>35
    return <li>{data($x/title)} - {data($x/price)}</li>
}</ul>
:)

(:  6
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/@category="web"
    order by $x/year
    return <li>{data($x/title)}</li>
}</ul>
:)

(:  7
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/title="Learning XML"
    return <li>{data($x)}</li>
}</ul>
:)

(:  8
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/title/@lang="en"
    return <li>{data($x/title)} - {data($x/author)}</li>
}</ul>
:)

(:  9
<ul>{ 
    for $x in doc("book.xml")/bookstore/book[contains(title, "Learn")]
    return <li>{data($x/title)}</li>
}</ul>
:)

(:  10
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/author="Robert"
    return <li>{data($x/title)}</li>
}</ul>
:)

(:  11
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/title="Learn XPath in 24 hours"
    return <li>{data($x/author)}</li>
}</ul>
:)

(:  12
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/title="Learning XML"
    return <li>{data($x/year)}</li>
}</ul>
:)

(:  13
<ul>{ 
    for $x in doc("book.xml")/bookstore/book[count(author)=1]
    return <li>{data($x/title)}</li>
}</ul>
:)

(:  14
<ul>{ 
    for $x in doc("book.xml")/bookstore/book[count(author)>=2]
    return <li>{data($x/title)}</li>
}</ul>
:)

(:  15
let $soSach := doc("book.xml")
return count($soSach/bookstore/book)
:)

(:  16
let $x := doc("book.xml")/bookstore/book[count(author)>=2]
return count($x)
:)

(:  17
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/author="Robert"
    return <li>{data($x/title)} - {data($x/price)} - {data($x/year)}</li>
}</ul>
:)

(:  18
<ul>{ 
    let $TrungBinh := avg(doc("book.xml")/bookstore/book/price)
    return $TrungBinh
}</ul>
:)

(:  19
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/price>30 and $x/price<50
    return <li>{data($x/title)} - {data($x/price)}</li>
}</ul>
:)

(:  20
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x/year>2005 
    order by $x/year ascending, $x/title descending
    return <li>{data($x/title)} - {data($x/year)}</li>
}</ul>
:)

(:  21
<ul>{ 
    for $x in doc("book.xml")/bookstore/book
    where $x[not(@category="en")]
    return <li>{data($x/title)} - {data($x/author)}</li>
}</ul>
:)



