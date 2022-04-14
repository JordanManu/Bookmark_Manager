require 'pg'

def add_bookmarks
  Bookmark.create('http://www.makersacademy.com', 'Makers')
  Bookmark.create('http://www.destroyallsoftware.com', 'Destroy')
  Bookmark.create('http://www.google.com', 'Google')
end

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end