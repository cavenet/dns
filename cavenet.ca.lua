-- File: cavenet.ca.lua
-- Zone: cavenet.ca
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = "cavenet.ca"

-- A records
a(_a, "64.180.188.84")
a("home", "64.180.188.84")

-- CNAME records
cname("www", _a)
cname("bastion", "home")
cname("mm01", "home")

-- CAA records
-- caa("", "letsencrypt.org", "issue")
-- caa("", "mailto:joe@example.com", "iodef")

-- Templates (see templates.lua)
google_app(_a)
