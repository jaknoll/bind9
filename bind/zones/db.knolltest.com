$ORIGIN .
$TTL 7200	; 2 hours
knolltest.com		IN SOA	knolltest.com.knolltest.com. root.knolltest.com. (
				20140398   ; serial
				172800     ; refresh (2 days)
				14400      ; retry (4 hours)
				3628800    ; expire (6 weeks)
				604800     ; minimum (1 week)
				)
			NS	bind.knolltest.com.
$ORIGIN knolltest.com.
bind			A	10.240.9.2
$TTL 60	; 1 minute
fiber			A	192.168.1.254
harmony			A	10.240.8.180
knas1-IPMI		A	10.240.8.176
knas2-IPMI		A	10.240.8.144
organizr		A	10.240.8.14
pi			A	10.240.9.2
roku			A	10.240.8.139
router			A	10.240.8.1
unifi-ap		A	10.240.8.154
