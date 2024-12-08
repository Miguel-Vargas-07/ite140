Original 

| Sale ID | Customer Name  | Contact Info         | Sale Date    | Comic Books Purchased                 | Accessories            |
| ------- | -------------- | -------------------- | ------------ | ------------------------------------- | ---------------------- |
| S5001   | Jake Peralta   | jake.p@nyc.gov       | 2024-06-01   | "Spider-Man #1", "Batman #50"         | T-Shirt, Action Figure |
| S5002   | Amy Santiago   | amy.s@nyc.gov        | 06/02/2024   | "Supergirl #5"                        |                        |
| S5003   | Charles Boyle  | charles.b@nyc.gov    | June 3, 2024 | "X-Men #20", "Iron Man #3", "Hulk #7" | Poster                 |
| S5004   | Gina Linetti   | gina.linetti@fun.com | 2024/06/04   | "Wonder Woman #12"                    | Sticker Pack, Keychain |
| S5005   | Jake Peralta   | jake.p@nyc.gov       | 06-05-2024   | "Batman #50"                          | T-Shirt                |
| S5006   | Terry Jeffords | terry.j@nyc.gov      | 2024-06-06   | "Captain America #10"                 | Action Figure          |


Sub table

| Sale ID (PK) | Accessorie num (PK) | Accessorie    |
| ------------ | ------------------- | ------------- |
| S5001        | 1                   | T-Shirt       |
| S5001        | 2                   | Action Figure |
| S5002        | null                | null          |
| S5003        | 1                   | Poster        |
| S5004        | 1                   | Sticker Pack  |
| S5004        | 2                   | Keychain      |
| S5005        | 1                   | T-Shirt       |
| S5006        | 1                   | Action Figure |

Sub table

| Customer Name (PK) | Contact Info         |
| ------------------ | -------------------- |
| Amy Santiago       | amy.s@nyc.gov        |
| Charles Boyle      | charles.b@nyc.gov    |
| Gina Linetti       | gina.linetti@fun.com |
| Jake Peralta       | jake.p@nyc.gov       |
| Terry Jeffords     | terry.j@nyc.gov      |

Final Table

     Int              String         Date          String           String
| Sale ID (PK) | Customer Name  | Sale Date  | Comic Book (PK) | Comic Book Name       |
| ------------ | -------------- | ---------- | --------------- | --------------------- |
| S5001        | Jake Peralta   | 2024-06-01 | 1               | "Spider-Man #1"       |
| 55001        | Jake Peralta   | 2024-06-01 | 2               | "Batman #50"          |
| S5002        | Amy Santiago   | 2024-06-02 | 1               | "Supergirl #5"        |
| S5003        | Charles Boyle  | 2024-06-03 | 1               | "X-men #20"           |
| S5003        | Charles Boyle  | 2024-06-03 | 2               | "Iron Man #3"         |
| S5003        | Charles Boyle  | 2024-06-03 | 3               | "Hulk #7"             |
| S5004        | Gina Linetti   | 2024-06-04 | 1               | "Wonder Woman #12"    |
| S5005        | Jake Peralta   | 2024-06-05 | 1               | "Batman #50"          |
| S5006        | Terry Jeffords | 2024-06-06 | 1               | "Captain America #10" |
    
