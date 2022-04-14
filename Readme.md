Bookmark Manager
=====

User Stories
-----
`As a user
So I can see my saved bookmarks
I would like to be able to view all bookmarks`

|  Objects        |  Messages      |
| ----------      | -------------  | 
| User |                        |
| Bookmarks |      view_all    |

```mermaid
graph TD
    A[User] -->B[Bookmarks]
    B[Bookmarks] -->C[view_all]
```

`As a user
So I can save a new bookmark
I would like to add the bookmark to the bookmark manager`

|  Objects        |  Messages      |
| ----------      | -------------  | 
| User |                        |
| Bookmark |      create    |

```mermaid
graph TD
    A[User] -->B[Bookmark]
    B[Bookmark] -->C[create]
```

`As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark

|  Objects        |  Messages      |
| ----------      | -------------  | 
| User |                        |
| Bookmarks |      delete   |

```mermaid
graph TD
    A[User] -->B[Bookmark]
    B[Bookmark] -->C[delete]
    A[User] -->B[Bookmark]
```

Database Setup
-----

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file from the root directory by running `\i ./db/migrations/01_create_bookmarks_table.sql`
