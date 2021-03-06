##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Lotus-Notes-Traveler" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-07-22
version "0.1"
description "IBM Lotus Notes Traveler is a push email solution providing quick access to email, calendar, address book, journal, and to-do list for Lotus Notes mobile users. - Homepage: https://www-01.ibm.com/software/lotus/products/notes/traveler.html"

# ShodanHQ results as at 2012-07-22 #
# 107 for Lotus Notes Traveler

# Examples #
examples %w|
79.135.49.252
218.84.134.149
93.95.239.94
87.138.69.215
212.7.226.188
212.74.181.165
66.6.224.66
80.97.20.8
|

# Matches #
matches [

# WWW-Authenticate # Lotus Notes Traveler
{ :search=>"headers[www-authenticate]", :string=>/^Basic realm="Lotus Notes Traveler \(([^\)]+)\)"$/ },

# 401 # Unauthorized
{ :status=>401, :text=>'<HTML><HEAD><TITLE>Unable to Process Request</TITLE></HEAD><BODY><P>Servlet Status Code: 401</P><P>Servlet Status Message: Unauthorized</P></BODY></HTML>' },

]

end

