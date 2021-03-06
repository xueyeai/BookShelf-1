<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf8"%>
<html>
    <head>
        <title>All the books</title>
            <link href="../dest/css/bookshelf.css" rel="stylesheet">
    </head>
<body>
<div class="container">
  <div class="header">
      <h3>BookShelf</h3>
    </div>
    <nav class="navbar navbar-default" role="navigation">
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">All the books</a></li>
        </ul>
        <form class="navbar-form navbar-right" role="search">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
      </div>
    </nav>
    <table class="table table-hover">
        <tr>
          <th>ISBN</th>
          <th>Name</th>
          <th>Price</th>
          <th>Author</th>
        </tr>
    <c:forEach var="book" items="${books}" varStatus="status">
        <tr>
          <td>${book.isbn}</td>
          <td>${book.name}</td>
          <td>${book.price}</td>
          <td>${book.author}</td>
        </tr>
    </c:forEach>
    </table>
        <div class="footer">
          <p>From Song Yang 2014-4-24</p>
        </div>
</div>

</body>
</html>