.PHONY: install

install:
	curl -L https://github.com/coreos/etcd/releases/download/v0.4.5/etcd-v0.4.5-linux-amd64.tar.gz -o /tmp/etcd-v0.4.5-linux-amd64.tar.gz
	cd /tmp && gzip -dc etcd-v0.4.5-linux-amd64.tar.gz | tar -xof -
	cp -f /tmp/etcd-v0.4.5-linux-amd64/etcdctl /usr/local/bin
	rm -rf /tmp/etcd-v0.4.5-linux-amd64.tar.gz