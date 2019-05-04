.PHONY: git
commit:
	git add .
	git commit -m "$m"
	git push

.PHONY : test
test :
	@echo "检查代码"
	@go vet ./...
	@echo "测试"
	@go test -race -coverprofile=coverage.txt -covermode=atomic ./...