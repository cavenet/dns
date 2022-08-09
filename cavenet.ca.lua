-- File: cavenet.ca.lua
-- Zone: cavenet.ca
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = "cavenet.ca"

-- A records
a("home", "23.16.123.230")

-- CNAME records
cname("bastion", concat("home", _a))
cname("mm01", concat("home", _a))
cname("*.app", concat("home", _a))

-- MS Main settings
mx(concat("ms", _a), "376c03b6e37043a468cd9a2c90fb8c.pamx1.hotmail.com", 10)
txt(concat("ms", _a), "v=msv1 t=ebd73c39afd540ae89855c49645b7e")
cname("cal.ms", "go.domains.live.com.")
cname("mail.ms", "go.domains.live.com.")

-- CAA configuration
caa("", "letsencrypt.org", "issuewild")

-- Templates (see templates.lua)
txt(_a, "google-site-verification=xuaVmLSLRGSxBE6lcF815vZCUs95LfL9bPIiRiW8kSg")
google_app(_a)
