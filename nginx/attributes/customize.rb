# NGinx TLS settings
default[:nginx][:ssl_ciphers] = "ECDHE-ECDSA-AES128-GCM-SHA256 ECDHE-ECDSA-AES256-GCM-SHA384 ECDHE-ECDSA-AES128-SHA ECDHE-ECDSA-AES256-SHA ECDHE-ECDSA-AES128-SHA256 ECDHE-ECDSA-AES256-SHA384 ECDHE-RSA-AES128-GCM-SHA256 ECDHE-RSA-AES256-GCM-SHA384 ECDHE-RSA-AES128-SHA ECDHE-RSA-AES256-SHA ECDHE-RSA-AES128-SHA256 ECDHE-RSA-AES256-SHA384 DHE-RSA-AES128-GCM-SHA256 DHE-RSA-AES256-GCM-SHA384 DHE-RSA-AES128-SHA DHE-RSA-AES256-SHA DHE-RSA-AES128-SHA256 DHE-RSA-AES256-SHA256 EDH-RSA-DES-CBC3-SHA"
default[:nginx][:ssl_protocols] = "TLSv1 TLSv1.1 TLSv1.2"
default[:nginx][:ssl_session_cache] = "shared:SSL:10m"
default[:nginx][:ssl_stapling] = "on"
default[:nginx][:ssl_stapling_verify] = "on"
default[:nginx][:resolver] = "8.8.4.4 8.8.8.8 valid=300s"
default[:nginx][:resolver_timeout] = "10s"
default[:nginx][:ssl_prefer_server_ciphers] = "on"
default[:nginx][:ssl_dhparam_bits] = 2048
