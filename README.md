# google-protobuf-issue-repro

0. brew install protobuf
1. cd v3 && protoc --ruby_out=. addressbook.proto 
2. cd v4 && protoc --ruby_out=. addressbook.proto 
3. cd v3 && bundle install && bundle exec ruby main.rb
4. cd v4 && bundle install && bundle exec ruby main.rb
