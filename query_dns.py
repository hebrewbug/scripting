# sudo easy_install dnspython

# import dns.resolver

# ip = dns.resolver.query("oreilly.com","A")

# mail = dns.resolver.query("oreilly.com","MX")

# for i,p in ip,mail:
#         print i,p
        
        
import dns.resolver


hosts = ["oreilly.com", "yahoo.com", "google.com", "microsoft.com", "cnn.com"]
   def query(host_list=hosts):
       collection = []
       for host in host_list:
           ip = dns.resolver.query(host,"A")
           for i in ip:
               collection.append(str(i))
       return collection
   if name == "__main__":
       for arec in query():
print arec


# python query_dns.py
