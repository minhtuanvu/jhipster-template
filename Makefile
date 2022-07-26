jdl:
	jhipster import-jdl main.jdl --skip-install

helm:
	jhipster kubernetes-helm

clean:
	rm kubernetes -rf;
	rm *-helm -rf;
	rm myApp* -rf;
