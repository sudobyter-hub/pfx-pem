#Author: sudobyter
require 'openssl'


# Prompt for the PFX file password
print "Enter the password for the PFX file: "
pfx_password = gets.chomp

pfx = OpenSSL::PKCS12.new(File.read('PFX FILE HERE'), 'PASSWORD HERE')
certificate = pfx.certificate
private_key = pfx.key

puts certificate.to_pem
puts private_key.to_pem
