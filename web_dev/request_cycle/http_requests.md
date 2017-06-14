**2.**  *Some Common HTTP Status Codes*
* 200 - OK: This means the request has succeeded. 
* 202 - Accepted: The request has been accepted for processing, but the processing has not been completed.
* 204 - No Content: The server has fulfilled the request but does not need to return an entity-body.
* 301 - Moved Permanently: The requested resource has been assigned a new permanent URI (Uniform Resource Identifier) and any future references to this resource should use one of the returned URIs.
* 401 - Unauthorized: Request requires user authentication.
* 403 - Forbidden: Access to the resource is forbidden. 
* 404 - Not Found: Most common error code. It means that the requested resource is no longer available, or was not found.
* 500 - Internal Server Error: catch-all for server side error codes. For when none of the other 500 error codes are applicable.

**3.** *What is the difference between a GET request and a POST request? When might each be used?*<br>
GET and POST are two commonly used HTTP request methods. GET is used to request data from a specified resource, while POST is used to submit data to a specified resource. A GET method would be used to request data from the server to display content on a page. A POST method could be used to send form data to a web server.

**4.** *What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?*<br>
A cookie is a small piece of data that the server sends to the user's browser. This data can be stored and sent back to the server with future requests. The three main uses for cookies are session management (logins, shopping carts, game scores, or anything else the server should remember), personalization (user preferences, themes, and other settings), and tracking (
recording and analyzing user behavior).