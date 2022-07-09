# we can use this command to test an application's endpoint or connectivity to an upstream service endpoint. 
# useful for determining if your application can reach another service, such as a database if your service is healthy.

# As an example, imagine your application throws an HTTP 500 error indicating it can't reach a MongoDB database:

curl -I -s myapplication:5000
# output: HTTP/1.0 500 INTERNAL SERVER ERROR
# The -I option shows the header information, the -s option silences the response body. 

# Checking the endpoint of your database from local desktop:
curl -I -s database:27017
# output: HTTP/1.0 200 OK
# Checking if application can get to other places besides the database from the application host:

curl -I -s https://opensource.com
# output: HTTP/1.1 200 OK
# attempt to reach the database from the application host. Your application is using the database's hostname, 
# so trying that first:

curl database:27017
# output: curl: (6) Couldn't resolve host 'database'
# This indicates that  application cannot resolve the database because the URL of the database is unavailable 
# or the host (container or VM) does not have a nameserver it can use to resolve the hostname.
