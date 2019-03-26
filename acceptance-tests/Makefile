default: test

test: api-test-cleanup api-test-setup api-test-features

api-test-cleanup:
	rm -rf reports

api-test-setup:
	mkdir -p reports

api-test-features:
	bundle exec cucumber features/ -r ./main -r ./featuresteps --tags @apitest