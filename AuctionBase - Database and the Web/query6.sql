select count(DISTINCT b.UserID) from Bid b, Items i where b.UserID = i.UserID;