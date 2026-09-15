import os,socket,dns.resolver

def ping(ips):
	alives = []
	for ip in ips:
		success = os.system('ping -c 1 -W 1 1>/dev/null ' + ip)
		if success == 0:
			alives.append(ip)
			print(ip + " is up")
		next
	return alives

def tscan(ips, ports):
	for ip in ips:
		for port in ports:
			try:
				s = socket.socket()
				s.settimeout(1)
				s.connect((ip, port))
				s.close()
				print("tcp port " + str(port) + " open on " + ip)
			except Exception:
				pass
		next
	next

def uscan(ips, ports):
	for ip in ips:
		for port in ports:
			try:
				if port == 53:
					resolver = dns.resolver.Resolver()
					resolver.nameservers = [ip]
					resolver.timeout = resolver.lifetime = 1
					answer = resolver.query('google.com', 'A')
					if len(answer) > 0:
						print ("udp port " + str(port) + " open on " + ip)
				else:
					s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
					s.settimeout(1)
					s.sendto("test", (ip, port))
					data, address = s.recvfrom(1500)
					print ("udp port " + str(port) + " open on " + ip)
			except Exception:
				pass
		next
	next
	
# generate list of ips
ips = []
for octet in range(1,254):
	ips.append("192.168.13." + str(octet))
	
# get list of alives
alives = ping(ips)

# tcp scan example
tscan(alives, [443, 1434])

# udp scan example
uscan(alives, [53, 88])