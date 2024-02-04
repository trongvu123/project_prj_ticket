create database SellTicket
drop table Days
drop table Showtimes
drop table Category
drop table Seats
drop table [User]
drop table Ticket
drop table Cinema
drop table Movie
drop table 
CREATE TABLE Movie (
    MovieID NVARCHAR(20) NOT NULL PRIMARY KEY,
    Title NVARCHAR(100),
	Actor NVARCHAR(100),
    Director NVARCHAR(100),
    Producer NVARCHAR(30),
    Country NVARCHAR(30),
	Duration INT,
    [Status] NVARCHAR(30),
    [Year] INT,
	CategoryID NVARCHAR(20) FOREIGN KEY REFERENCES Category(CategoryID),
    imgURL NVARCHAR(50),
	coverURL NVARCHAR(50),
	videoURL NVARCHAR(2000),
    Content NVARCHAR(2000)
);
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL, coverURL,videoURL, Content)
VALUES ('mov1', 'Aquaman and the Lost Kingdom','Ben Affleck, Jason Momoa', 'James Wan', 'Warner Bros', 'America', 124, 'show', 2023,'cat1', './img/show/aquaman.jpg','./img/cover/1.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/LtE4ACvFiv4?si=ptVVJmU1YTYnMP3n" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Now, Arthur Curry has become a father who takes care of his children every day and governs the vast Atlantis region. However, the old enemy will never leave the sea king in peace. Thanks to the help of technology, Black Manta rose again with more terrible power than before. Unable to fight alone, Arthur had to ask for help from another enemy - his half-brother Orm.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov2', 'Demon dog','Quang Tuan, NSND Kim Xuan, Nam Thu', 'Luu Thanh Luan', 'Updating', 'Viet Nam', 99, 'show', 2023,'cat2', './img/show/quycau.jpg','./img/cover/2.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/aKwLkndLZtw?si=jaFGYJwk34yPdzgo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Since the owner of a famous dog slaughterhouse mysteriously died, a series of ghostly events occurred during the week of his death. The butcher family is constantly stalked and attacked by something invisible and insidious. Gradually, they began to doubt themselves and turned to harm each other to fight for life.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov3', 'Soul eater','Sally Hawkins, Keegan-Michael Key, Hugh Grant', 'Tran Huu Tuan', 'ProductionQ - Creative House', 'Viet nam', 109, 'show', 2023,'cat3', './img/show/keanhon.jpg','./img/cover/3.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/wfvi4R0lb30?si=8WYK7oW3EwNjkldy" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'The Soul Eater tells about a series of mysterious deaths in Hell Village, a place with ancient magic: 5 lives for a bottle of Skull Wine. Thap Nuong - the girl in red is the one who holds the secret to making the strongest wine!

Movie adapted from the original novel of the same name by writer Thao Trang. In addition to the image of the mouse wedding, the audience can also see images imbued with Vietnamese culture such as water puppets, water pavilion, rhymes... Besides, details that are popular in Hell village such as Mrs. Van the ferryman. Carrying souls, sweating blood, and soul-catching fireflies will appear on the big screen one after another.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov4', 'Wonka','Timothée Chalamet, Olivia Colman, Rowan Atkinson' ,'Paul King', 'Warner Bros', 'America', 116, 'show', 2023,'cat4', './img/show/wonka.jpg','./img/cover/4.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/eNX92tBO7YQ?si=-SNaEdcdgR_LFZhL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Based on the character from the worldwide children bedside book "Charlie and the Chocolate Factory" and the 2005 movie version of the same name, WONKA tells the magical story of an inventor journey. , the world greatest magician and chocolate maker became the lovable Willy Wonka we know today.

From the director of the Paddington series and the producer of the hit Harry Potter adaptation series, Wonka promises to be a fun and colorful movie for audiences this Christmas.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov5', 'The Adventure of the Stork Parrot: The Mysterious Gem','Jay Myers, Kyra Jackson, Simona Berman', 'Benjamin Quabeck', 'Knudsen Pictures', 'Germany', 85, 'show', 2023,'cat5', './img/show/vetco.jpg','./img/cover/5.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/NN6dV0E3iQo?si=A36PWHhJDnr-335k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Richard - a parrot who grew up among a flock of storks, is always confident that he will be able to lead the flock back to the North. However, that position was given to another stork, making Richard angry and deciding to adventure alone. He meets a flock of sparrows imprisoned by the evil peacock Zamano and can only be freed if he finds a precious pearl. Richard and his friends will create a brave and united team to conquer the pearl.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov6', 'Tee Yod: Organ-Eating Demon','Nadech Kugimiya, Denise Jelilcha Kapaun', 'Taweewat Wantha', 'Updating', 'Thailand', 119, 'show', 2023,'cat6', './img/show/quyantang.jpg','./img/cover/6.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/4oJKI7fMpUk?si=XiaGxflAq13thB7W" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'In 1972, the most horrifying thing happened. A young girl in a remote village in Kanchanaburi province has mysteriously passed away. When hearing a hair-raising voice "Tee Yod... Tee Yod..." rang out in the night. After Yak (Nadech Kugimiya) was discharged from the army, he returned to help his family according to Hia Hang and Mrs. Bunyen. Yak mother has 5 younger siblings of the same age including Yos, Yod, Yad, Yam and Yi

From the moment Yam (Mim Rattanawadee Wongthong) got sick, mysteries began to appear. Yad (Denise Jelilcha) is a witness to events that seem like a premonition. But because she was young, she did think much. Until Yams condition gradually worsened, with strange and unexplainable symptoms. And it is believed that Yam was possessed by a "vampire", which ate away his internal organs. Making Yam body gradually weaken. Every night, we hear moans along with the word "Tee Yod". Leading to a mysterious and haunting story that, even though more than 50 years have passed, still terrifies listeners.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov7', 'Scorn','Jack Palance, Brigitte Bardot', 'jean-Luc Godard', 'Updating', 'France', 120, 'show', 2023,'cat7', './img/show/khinhmiet.jpg','./img/cover/7.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/rF0Ju0ONwGU?si=UTEw3nRRcUBF2vx3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Paul Javal (Michel Piccoli) is a young novelist and screenwriter. He was hired to "refresh" the script adapted from the epic Odyssey. The producer wanted the remake to be more popular and sensational, and Paul was torn between the film artistic and commercial qualities.

At the same time, his relationship with his beautiful wife Camille Javal (Brigitte Bardot) is also in a tense state. The conflict occurred when he left Camille alone in the car with the billionaire playboy and movie producer: Jeremy Prokosch (Jack Palance). From the ripe and sweet love at the beginning of the film, the relationship between the two quickly became bitter and irreparable.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov8', 'Far away','Chatchai Chinnasri, Sutida Buatik, Naruepol Yaiim', 'Thiti Srinuan', 'Thibaan Studio', 'Thailand', 107, 'show', 2023,'cat8', './img/show/tienvong.jpg','./img/cover/8.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/5mmUn7tStS4?si=iQuBcdmaHbc9ImO0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'After graduating from Law School, Joed suddenly received the bad news that his father was terminally ill, and at the same time, he faced the obsession of inheriting the family business - replacing his father and becoming an Exorcist, also known as The name is Burial Profession according to spiritual customs that an ordinary person cannot imagine. In addition to basic work such as handling corpses, which seems to be more than enough for a person with a great obsession with demons like Joed, a series of customs from calling souls to communicating with the deceased to to the "soul travel" ritual to summon souls to the underworld,... causing the young man trauma to go beyond its limits.

Joed first "practice" quickly began after the suicide of a young pregnant woman made waves in the whole village. By trying to find out the reason why the soul of the unfortunate young girl has not been able to escape, the plot of the movie Tien Vang causes shivers due to the performance of soul possession rituals and burial methods imbued with Thai culture under the sky. The magical, surreal perspective is embedded with many messages about the yin - yang boundary and conveys layers of deep Asian meaning about the concept of how the afterlife really exists?')

INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov9', 'Teenager And Heron','Kimura Takuya, Santoki Soma, Masaki Suda', 'Miyazaki Hayao', 'Studio Ghibli', 'Japan', 124, 'show', 2023,'cat9', './img/show/theboy.jpg','./img/cover/9.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/efrw3LuIKJ4?si=PQAvLaYJzc_v108r" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Coming from Studio Ghibli and directed by Miyazaki Hayao, the film is the story of the magical journey of teenager Mahito in a completely new world. Experiencing the pain of losing his mother and having unhappy relationships with his family and classmates, Mahito gradually isolated himself... until he met a strange talking heron. Mahito and the heron entered a mysterious tower, where a magical world opened, bringing him to meet the people he loved... in a completely different identity.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov10', 'Wish','Chris Pine, Alan Tudyk, Ariana DeBose', 'Chris Buck, Fawn Veerasunthorn', 'Walt Disney Pictures, Disney', 'America', 94, 'show', 2023,'cat10', './img/show/wish.jpg','./img/cover/10.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/EFRTuiWm3zA?si=m2djEq7k84z0Au0T" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Young Asha makes a wish so powerful that it answered by a cosmic force, a little ball of boundless energy called Star. With Star help, Asha must save her kingdom from King Magnifico and prove that when the will of one courageous human connects with the magic of the stars, wondrous things can happen.')

INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov11', '"Golden" Goal','Michael Fassbender, Oscar Kightley, David Fane', 'Taika Waititi', 'Fox Searchlight Pictures', 'America', 103, 'soon', 2024,'cat11', './img/soon/goal.jpg','./img/cover/11.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/7mVLasf2C6Y?si=7GiAuAoaopxx8eAF" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Directed by Academy Award-winning director Taika Waititi (Jojo Rabbit, Thor: Ragnarok), the film "GOLDEN" GOAL follows the American Samoa soccer team and their infamous 31-0 FIFA defeat. in 2001. When the World Cup qualifiers were near, the team hired an equally miserable coach, Thomas Rongen (Michael Fassbender), in the hope that he would reverse the tragic situation of the team full of weak people. This.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov12', 'On the Drinking Table Under the Conspiracy Table','Dieu Nhi, Kha Nhu, Kha Ngan', 'Tien M.Nguyen', 'Updating', 'Viet Nam', 116, 'soon', 2023,'cat12', './img/show/trenbannhau.jpg','./img/cover/12.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/mTAmvFi4A5w?si=FMW_RRrZI3fzTI0k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'On the Drinking Table Under the Conspiracy Table is a story about the interesting friendship of a group of close friends. In their journey to find their dreams and life plans, they were accidentally pulled into a dark, unwanted plot. The ignorance of Rice (Dieu Nhi), the clumsiness of Du Lai (Kha Nhu) and the hot temper of Trieu (Thuy Ngan), combined with the overbearing initiatives of Tri (Kieu Minh Tuan), have brought about A unique "revenge" for Truc (Tran Ngoc Vang) - a super cheater masquerading as a businessman and also the one who caused Gao many hardships...')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov13', 'Migratory Duck House','Kumail Nanjiani, Elizabeth Banks, Keegan-Michael Key', 'Benjamin Renner', 'Universal Pictures', 'America', 83, 'soon', 2024,'cat13', './img/soon/mig.jpg','./img/cover/13.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/SRdCWLCPOrc?si=SPXCcRo4XiEWFXjH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Directed by Academy Award-winning director Taika Waititi (Jojo Rabbit, Thor: Ragnarok), the film "GOLDEN" GOAL follows the American Samoa soccer team and their infamous 31-0 FIFA defeat. in 2001. When the World Cup qualifiers were near, the team hired an equally miserable coach, Thomas Rongen (Michael Fassbender), in the hope that he would reverse the tragic situation of the team full of weak people. This.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov14', 'Arkie And The Day The Sun Lost','Jillian Nguyen, Sam Neill, Rob Collins', 'Ricard Cusso', 'Highly Spirited', 'Australia', 93, 'soon', 2024,'cat14', './img/soon/scarygirl.jpg','./img/cover/14.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/ObMnmEnLxrY?si=AqJfhSMbELMT2cAB" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'On the journey to find a way to rescue his father, Arkie faces many challenges and discovers that everything is not as it seems. Her opponent is also extremely "tough". That Dr. Maybee - the dangerous mastermind behind the destruction of life on Arkie planet. Obviously, Dr. Maybee also has a bigger plot he wants to accomplish. And the key to his success is Blister - who can recreate life for creatures thanks to his magical tentacles. What happened on Arkie journey to rescue his father? Can father and son stop Dr. Maybee devastated his homeland?')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov15', 'Demon Covenant','Taskya Namya, T. Rifnu Wikana, Wafda Saifan Lubis', 'Azhar Kinoi Lubis', 'MVP Pictures', 'Indonesia', 103, 'soon', 2024,'cat15', './img/soon/verge.jpg','./img/cover/15.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/CYcfpPrgXa8?si=26piykzsdzHxvS-r" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Nadia family life became upside down when her mother committed suicide on New Year Eve 2002. The two Nadia brothers also discovered that their successful, wealthy father often went in and out of a secret room in the house with a black goat. When the terrifying rituals in the room were discovered, Nadia brother passed away and continued to die on New Year Eve 10 years later, 2012. A terrifying curse was established from a contract with a powerful force. Evil descended on Nadias family, forcing her to fight with her father for life against the devil.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov16', 'Dead Hoe','Hayami Kyoko, Hosoda Yoshihiko, Hirano Koshu', 'Masafumi Yamada', 'New Select K.K.', 'Japan', 120, 'soon', 2024,'cat16', './img/soon/hitch.jpg','./img/cover/16.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/QlmmXdkNwuA?si=-dorYWMMSYm5lXcW" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Two female college students Ryoko and Akane were on their way back from a hiking trip when they got lost in the mountains. The two decided that if they wanted to go back, they would have to hitchhike. At first, it seemed hopeless to find someone to let them go this deep into the mountain, but luckily, an RV stopped for them. But something seems strange… Meanwhile, Ken, a boy fed up with his overprotective parents, is also hitchhiking through the same mountain as his friend Kazunari… Journey How will these teenagers obsessive hitchhiking end?')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov17', 'Night Swimming','Updating', 'Bryce McGuire', 'Universal Pictures', 'America', 120, 'soon', 2024,'cat17', './img/soon/swim.jpg','./img/cover/17.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/LZ6AgX6Hg68?si=npk8YoEqC3mAiUmZ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Set in the context of a small family of four cleaning and renovating a newly purchased house in the suburbs. Behind the yard of the house is a swimming pool that they always wanted. And this is also where it all begins. The whole family used to happily play in the pool without feeling anything strange. But one day, when the eldest daughter in the house and her friend were also playing in the swimming pool, a strange phenomenon began to happen.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov18', 'Alienoid: Multidimensional Chaos War','Ryu Jun Yeol, Kim Woo Bin, Kim Tae Ri', 'Choi Dong Hoon', 'Caper Film', 'Korea', 120, 'soon', 2024,'cat18', './img/soon/ali2.jpg','./img/cover/18.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/Q8G_CxCF57U?si=PzaaBF8AyEojIueQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'With only 48 minutes left before all the haava air bubbles are set to explode, the door to time is finally opened and Muruk, Thunder, along with Lam Tu and Hac Nuong are pulled back to the present along with Ean. Shocking secrets are gradually revealed. What must they do to fight the alien creatures, prevent the explosion of haava gas and save humanity?')

INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov19', 'Super Spy Argylle','Henry Cavill, John Cena, Sofia Boutella', 'Matthew Vaughn', 'Apple Studios', 'America', 120, 'soon', 2024,'cat19', './img/soon/agrylle.jpg','./img/cover/19.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/SmjV2aHlxhk?si=AXFKnrDi1y4eOMRV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Elly, a famous novelist, becomes a reluctant spy when she is drawn into the activities of a sinister underground corporation.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov20', 'See you again','Anh Tu, Dieu Nhi, Kieu Minh Tuan', 'Nhat Trung', 'Updating', 'Viet Nam', 120, 'soon', 2022,'cat20', './img/soon/gaplaichibau.jpg','./img/cover/20.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/Xh8BHTyLgHc?si=gudj4gXIBkS0O7Xg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Mai revolves around the story of the life of a woman of the same name as the film. On the First-look Poster, Phuong Anh Dao makes a strong impression with her quiet, penetrating look, especially, on the actress lips is the image of her lying on her side on the water. Covered in a mist, Mai artistic poster arouses curiosity with the caption: "The past is not yet asleep, will tomorrow come?".')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov21', 'Mai','Tuan Tran, Phuong Anh Dao, Tran Thanh', 'Tran thanh', 'CJ HK Entertainment', 'Viet Nam', 120, 'soon', 2024,'cat21', './img/soon/mai.jpg','./img/cover/21.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/SlfI5Esb3oI?si=8okQC3jvt0FdHdm-" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Mai revolves around the story of the life of a woman of the same name as the film. On the First-look Poster, Phuong Anh Dao makes a strong impression with her quiet, penetrating look, especially, on the actress lips is the image of her lying on her side on the water. Covered in a mist, Mai artistic poster arouses curiosity with the caption: "The past is not yet asleep, will tomorrow come?".')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov22', 'Madame Web','Dakota Johnson, Sydney Sweeney, Isabela Merced', 'S.J clarkson', 'Columbia Pictures', 'America', 120, 'soon', 2024,'cat22', './img/soon/madame.jpg','./img/cover/22.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/_D12RvkYphg?si=Gk5DxUteiC7a0j0Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Madame Web revolves around a female lifeguard named Cassandra Webb (Dakota Johnson). After an accident, she suddenly possessed the ability to see the future. From here, Cassandra fate suddenly became mysteriously linked with three other girls, Anya Corazon (Isabela Merced), Mattie Franklin (Celeste OConnor) and Julia Carpenter (Sydney Sweeney). For some reason, they are being chased by Ezekiel Sims (Tahar Rahim). Cassandra is forced to use her new powers to protect her new friends, and at the same time discover the secret surrounding the connection between each other and spiders.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov23', 'Kung Fu Panda 4','Jack Black, Dustin Hoffman, Awkwafina', 'Mike MitChell', 'DreamWorks Animation', 'China', 120, 'soon', 2024,'cat23', './img/soon/panda.jpg','./img/cover/23.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/8MhTBKv-mSg?si=n2fq29YfGg1kJ_-v" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'After Po is chosen to become the Spiritual Leader of the Valley of Peace, Po needs to find and train a new Dragon Warrior, while an evil witch plans to summon all the villains back. which Po defeated back to the spirit realm.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov24', 'Dune: Sand Planet - Part Two','Timothée Chalamet, Zendaya, Rebecca Ferguson', 'Denis Villeneuve, Timothee Chalamet', 'Warner Bros,Legendary Pictures', 'America', 120, 'soon', 2023,'cat24', './img/soon/dune.jpg','./img/cover/24.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/P-Ivb5_QhqU?si=mhYXpgqp5PuuyPIf" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Dune: Part Two (Vietnamese title: Dune: The Sand Planet - Part Two) will continue to explore the mythical journey of Paul Atreides (played by Timothée Chalamet) as he accompanies Chani (played by Zendaya) and his friends. The Fremen are on a journey to take revenge on those who destroyed their family. Faced with choices between the love of his life and the fate of the universe, Paul must prevent the dire future only he sees.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov25', 'Godzilla x Kong: New Empire','Rebecca Hall, Dan Stevens, Rachel House', 'Adam Wingard', 'Legendary Pictures', 'America', 120, 'soon', 2024,'cat25', './img/soon/kong.jpg','./img/cover/25.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/EN5Nbnh8Z7U?si=XrhltnI_5zcqLz4J" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'The film will follow the explosive confrontations of "Godzilla vs. Kong," an all-new adventure that pits Kong and Godzilla together against a colossal, yet-to-be-discovered threat, hidden deep within the universe. Earth. The film will delve deeper into the history of the Titans, their origins and mysteries on Skull Island, and explore the mythical battle that created these extraordinary creatures and their bond with humanity. People.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov26', 'The Challengers','Zendaya, Josh Connor, Mike Faist', 'Luca Guadagnino', 'Warner Bros', 'America', 120, 'soon', 2024,'cat26', './img/soon/challens.jpg','./img/cover/26.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/eZtOHAkFxgI?si=XnQXEo8ij5BlYl2i" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Follow three tennis players who knew each other as teenagers as they compete in a tennis tournament to become world-famous Grand Slam winners, while rekindling old rivalries in and off the field.')
INSERT INTO Movie (MovieID, Title,Actor, Director, Producer, Country, Duration, [Status], [Year],CategoryID, imgURL,coverURL,videoURL, Content)
VALUES ('mov27', 'Furiosa: A Mad Max Saga','Anya Taylor-Joy, Chris Hemsworth, Tom Burke', 'George Miller', 'Warner Bros', 'Australia', 120, 'soon', 2024,'cat27', './img/soon/furiosa.jpg','./img/cover/27.jpg','<iframe width="1200" height="500" src="https://www.youtube.com/embed/XJMuhwVlca4?si=YHyv-M97afo_mxNU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Furiosa: A Mad Max Saga tells the story of Furiosa being kidnapped from the Green Zone of the Mothers and struggling to survive through vast deserts - a place starved for fuel.')


CREATE TABLE Category (
    CategoryID NVARCHAR(20) NOT NULL PRIMARY KEY,
    CategoryName NVARCHAR(100)
);

INSERT INTO Category (CategoryID, CategoryName)
VALUES 
('cat1', 'Fantasy, action, adventure'),
('Cat2', 'Horror'),
('cat3', 'Horror'),
('cat4', 'Fiction, Comedy'),
('cat5', 'Animation, adventure, family'),
('cat6', 'Horror'),
('cat7', 'Emotions, psychology'),
('cat8', 'Horror'),
('cat9', 'Animation, adventure, family'),
('cat10', 'Animation, adventure, comedy'),
('cat11', 'Comedy'),
('cat12', 'Comedy'),
('cat13', 'Animation, adventure, comedy'),
('cat14', 'Animation, adventure'),
('cat15', 'Horror, thriller'),
('cat16', 'Horror'),
('cat17', 'Horror, thriller'),
('cat18', 'Action, adventure'),
('cat19', 'Action, comedy'),
('cat20', 'Emotional'),
('cat21', 'Emotions, psychology'),
('cat22', 'Action, adventure, fiction'),
('cat23', 'Animation, adventure, action'),
('cat24', 'Fiction, action'),
('cat25', 'Action, adventure, fiction'),
('cat26', 'Psychology, romance, sports'),
('cat27', 'Action, adventure, fiction');

CREATE TABLE Days (
    DayId NVARCHAR(20) NOT NULL PRIMARY KEY,
    Day_name NVARCHAR(20),
    MovieID NVARCHAR(20) FOREIGN KEY REFERENCES Movie(MovieID)
);
INSERT INTO Days (DayId,Day_name,MovieID)
VALUES 
('d1', 'Monday 27/12', 'mov1'),
('d2', 'Tuesday 28/12', 'mov1'),
('d3', 'Wednesday 29/12', 'mov1'),
('d4', 'Thursday 30/12', 'mov1'),
('d5', 'Friday 31/12', 'mov1'),
('d6', 'Saturday 01/12', 'mov1'),
('d7', 'Sunday 02/12', 'mov1'),
('d8', 'Monday 27/12', 'mov2'),
('d9', 'Tuesday 28/12', 'mov2'),
('d10', 'Wednesday 29/12', 'mov2'),
('d11', 'Thursday 30/12', 'mov2'),
('d12', 'Friday 31/12', 'mov2'),
('d13', 'Monday 27/12', 'mov3'),
('d14', 'Tuesday 28/12', 'mov3'),
('d15', 'Wednesday 29/12', 'mov3'),
('d16', 'Thursday 30/12', 'mov3'),
('d17', 'Thursday 30/12', 'mov4'),
('d18', 'Friday 31/12', 'mov4'),
('d19', 'Saturday 01/12', 'mov4'),
('d20', 'Friday 31/12', 'mov5'),
('d21', 'Saturday 01/12', 'mov5'),
('d22', 'Sunday 02/12', 'mov5'),
('d23', 'Wednesday 29/12', 'mov6'),
('d24', 'Thursday 30/12', 'mov6'),
('d25', 'Friday 31/12', 'mov6'),
('d26', 'Saturday 01/12', 'mov6'),
('d27', 'Sunday 31/12', 'mov6'),
('d28', 'Monday 27/12', 'mov6'),
('d29', 'Tuesday 28/12', 'mov6'),
('d30', 'Friday 31/12', 'mov7'),
('d31', 'Saturday 01/12', 'mov7'),
('d32', 'Sunday 02/12', 'mov7'),
('d33', 'Tuesday 28/12', 'mov8'),
('d34', 'Wednesday 29/12', 'mov8'),
('d35', 'Thursday 30/12', 'mov8'),
('d36', 'Friday 31/12', 'mov8'),
('d37', 'Monday 27/12', 'mov9'),
('d38', 'Tuesday 28/12', 'mov9'),
('d39', 'Wednesday 29/12', 'mov9'),
('d40', 'Thursday 30/12', 'mov9'),
('d41', 'Friday 31/12', 'mov10'),
('d42', 'Saturday 01/12', 'mov10'),
('d43', 'Thursday 30/12', 'mov11'),
('d44', 'Friday 31/12', 'mov12'),
('d45', 'Wednesday 29/12', 'mov13'),
('d46', 'Thursday 30/12', 'mov13'),
('d47', 'Tuesday 28/12', 'mov14'),
('d48', 'Wednesday 29/12', 'mov14'),
('d49', 'Thursday 30/12', 'mov14'),
('d50', 'Wednesday 29/12', 'mov15'),
('d51', 'Thursday 30/12', 'mov15');
CREATE TABLE Showtimes (
    ShowtimeID NVARCHAR(20) NOT NULL PRIMARY KEY,
    ShowtimeStart NVARCHAR(20),    
    DayId NVARCHAR(20) FOREIGN KEY REFERENCES Days(DayId)
);
INSERT INTO Showtimes (ShowtimeID,ShowtimeStart,DayId)
VALUES 
('s1','09:15','d1'),
('s2','10:00','d1'),
('s3','10:45','d1'),
('s4','11:30','d1'),
('s5','12:15','d1'),
('s6','13:00','d1'),
('s7','13:45','d1'),
('s8','09:15','d2'),
('s9','16:45','d2'),
('s10','15:15','d2'),
('s11','16:00','d2'),
('s12','18:15','d2'),
('s13','19:00','d2'),
('s14','20:30','d2'),
('s15','12:15','d3'),
('s16','13:00','d3'),
('s17','13:45','d3'),
('s18','09:15','d3'),
('s19','16:45','d3'),
('s20','15:15','d3'),
('s21','15:15','d4'),
('s22','16:00','d4'),
('s23','18:15','d4'),
('s24','19:00','d4'),
('s25','20:30','d4'),
('s26','12:15','d4'),
('s27','10:00','d5'),
('s28','10:45','d5'),
('s29','11:30','d5'),
('s30','12:15','d5'),
('s31','13:00','d5'),
('s32','13:45','d5'),
('s33','19:00','d6'),
('s34','20:30','d6'),
('s35','12:15','d6'),
('s36','10:00','d6'),
('s37','10:45','d6'),
('s38','19:00','d7'),
('s39','20:30','d7'),
('s40','12:15','d7'),
('s41','10:00','d7'),
('s42','10:45','d7'),
('s43','11:30','d7'),
('s44','12:15','d7'),
('s45','20:30','d8'),
('s46','12:15','d8'),
('s47','10:00','d8'),
('s48','10:45','d8'),
('s49','19:00','d8'),
('s50','20:30','d8'),
('s51','12:15','d8'),
('s52','10:00','d9'),
('s53','10:45','d9'),
('s54','11:30','d9'),
('s55','12:15','d9'),
('s56','13:00','d9'),
('s57','13:45','d9'),
('s58','09:15','d10'),
('s59','16:45','d10'),
('s60','15:15','d10'),
('s61','16:00','d10'),
('s62','18:15','d10'),
('s63','19:00','d10'),
('s64','20:30','d10'),
('s65','20:30','d11'),
('s66','12:15','d11'),
('s67','10:00','d11'),
('s68','10:45','d11'),
('s69','19:00','d11'),
('s70', '20:30', 'd11'),
('s71', '12:15', 'd11'),
('s72', '10:00', 'd12'),
('s73', '10:45', 'd12'),
('s74', '11:30', 'd12'),
('s75', '12:15', 'd12'),
('s76', '13:00', 'd12'),
('s77', '13:45', 'd12'),
('s78', '09:15', 'd13'),
('s79', '16:45', 'd13'),
('s80', '15:15', 'd13'),
('s81', '16:00', 'd13'),
('s82', '18:15', 'd13'),
('s83', '19:00', 'd13'),
('s84', '20:30', 'd13'),
('s85', '12:15', 'd14'),
('s86', '13:00', 'd14'),
('s87', '13:45', 'd14'),
('s88', '09:15', 'd14'),
('s89', '16:45', 'd14'),
('s90', '15:15', 'd14'),
('s91', '16:00', 'd14'),
('s92', '18:15', 'd14'),
('s93', '19:00', 'd14'),
('s94', '20:30', 'd14'),
('s95', '12:15', 'd15'),
('s96', '13:00', 'd15'),
('s97', '13:45', 'd15'),
('s98', '09:15', 'd15'),
('s99', '16:45', 'd15'),
('s100', '15:15', 'd15'),
('s101', '15:15', 'd16'),
('s102', '16:00', 'd16'),
('s103', '18:15', 'd16'),
('s104', '19:00', 'd16'),
('s105', '20:30', 'd16'),
('s106', '12:15', 'd16'),
('s107', '10:00', 'd17'),
('s108', '10:45', 'd17'),
('s109', '11:30', 'd17'),
('s110', '12:15', 'd17'),
('s111', '13:00', 'd17'),
('s112', '13:45', 'd17'),
('s113', '19:00', 'd18'),
('s114', '20:30', 'd18'),
('s115', '12:15', 'd18'),
('s116', '10:00', 'd18'),
('s117', '10:45', 'd18'),
('s118', '19:00', 'd19'),
('s119', '20:30', 'd19'),
('s120', '12:15', 'd19'),
('s121', '10:00', 'd19'),
('s122', '10:45', 'd19'),
('s123', '11:30', 'd19'),
('s124', '12:15', 'd19'),
('s125', '20:30', 'd20'),
('s126', '12:15', 'd20'),
('s127', '10:00', 'd20'),
('s128', '10:45', 'd20'),
('s129', '19:00', 'd20'),
('s130', '20:30', 'd20'),
('s131', '12:15', 'd20'),
('s132', '10:00', 'd21'),
('s133', '10:45', 'd21'),
('s134', '11:30', 'd21'),
('s135', '12:15', 'd21'),
('s136', '13:00', 'd21'),
('s137', '13:45', 'd21'),
('s138', '09:15', 'd22'),
('s139', '16:45', 'd22'),
('s140', '15:15', 'd22'),
('s141', '16:00', 'd22'),
('s142', '18:15', 'd23'),
('s143', '19:00', 'd23'),
('s144', '20:30', 'd23'),
('s145', '12:15', 'd24'),
('s146', '13:00', 'd24'),
('s147', '13:45', 'd24'),
('s148', '09:15', 'd25'),
('s149', '16:45', 'd25'),
('s150', '15:15', 'd25'),
('s151', '16:00', 'd25'),
('s152', '18:15', 'd25'),
('s153', '19:00', 'd25'),
('s154', '20:30', 'd25'),
('s155', '12:15', 'd26'),
('s156', '13:00', 'd26'),
('s157', '13:45', 'd26'),
('s158', '09:15', 'd26'),
('s159', '16:45', 'd26'),
('s160', '15:15', 'd26'),
('s161', '16:00', 'd26'),
('s162', '18:15', 'd26'),
('s163', '19:00', 'd26'),
('s164', '20:30', 'd26'),
('s165', '20:30', 'd27'),
('s166', '12:15', 'd27'),
('s167', '10:00', 'd27'),
('s168', '10:45', 'd27'),
('s169', '19:00', 'd27'),
('s170', '20:30', 'd27'),
('s171', '12:15', 'd27'),
('s172', '10:00', 'd28'),
('s173', '10:45', 'd28'),
('s174', '11:30', 'd28'),
('s175', '12:15', 'd28'),
('s176', '13:00', 'd28'),
('s177', '13:45', 'd28'),
('s178', '09:15', 'd29'),
('s179', '16:45', 'd29'),
('s180', '15:15', 'd29'),
('s181', '16:00', 'd29'),
('s182', '18:15', 'd29'),
('s183', '19:00', 'd29'),
('s184', '20:30', 'd29'),
('s185', '12:15', 'd30'),
('s186', '13:00', 'd30'),
('s187', '13:45', 'd30'),
('s188', '09:15', 'd31'),
('s189', '16:45', 'd31'),
('s190', '15:15', 'd31'),
('s191', '16:00', 'd31'),
('s192', '18:15', 'd31'),
('s193', '19:00', 'd31'),
('s194', '20:30', 'd31'),
('s195', '12:15', 'd31'),
('s196', '10:00', 'd32'),
('s197', '10:45', 'd32'),
('s198', '11:30', 'd32'),
('s199', '12:15', 'd32'),
('s200', '13:00', 'd32'),
('s201', '13:45', 'd32'),
('s202', '09:15', 'd33'),
('s203', '16:45', 'd33'),
('s204', '15:15', 'd33'),
('s205', '16:00', 'd33'),
('s206', '18:15', 'd33'),
('s207', '19:00', 'd33'),
('s208', '20:30', 'd33'),
('s209', '20:30', 'd34'),
('s210', '12:15', 'd34'),
('s211', '10:00', 'd34'),
('s212', '10:45', 'd34'),
('s213', '11:30', 'd34'),
('s214', '12:15', 'd34'),
('s215', '13:00', 'd34'),
('s216', '13:45', 'd34'),
('s217', '19:00', 'd35'),
('s218', '20:30', 'd35'),
('s219', '12:15', 'd35'),
('s220', '10:00', 'd36'),
('s221', '10:45', 'd36'),
('s222', '19:00', 'd37'),
('s223', '20:30', 'd37'),
('s224', '12:15', 'd37'),
('s225', '10:00', 'd38'),
('s226', '10:45', 'd38'),
('s227', '11:30', 'd38'),
('s228', '12:15', 'd38'),
('s229', '13:00', 'd38'),
('s230', '13:45', 'd38'),
('s231', '19:00', 'd39'),
('s232', '20:30', 'd39'),
('s233', '12:15', 'd39'),
('s234', '10:00', 'd40'),
('s235', '10:45', 'd40'),
('s236', '11:30', 'd40'),
('s237', '12:15', 'd40'),
('s238', '13:00', 'd40'),
('s239', '13:45', 'd40'),
('s240', '09:15', 'd41'),
('s241', '16:45', 'd41'),
('s242', '15:15', 'd41'),
('s243', '16:00', 'd41'),
('s244', '18:15', 'd41'),
('s245', '19:00', 'd41'),
('s246', '20:30', 'd41'),
('s247', '20:30', 'd42'),
('s248', '12:15', 'd42'),
('s249', '10:00', 'd43'),
('s250', '10:45', 'd43'),
('s251', '19:00', 'd44'),
('s252', '20:30', 'd44'),
('s253', '12:15', 'd44'),
('s254', '10:00', 'd45'),
('s255', '10:45', 'd45'),
('s256', '19:00', 'd46'),
('s257', '20:30', 'd46'),
('s258', '12:15', 'd46'),
('s259', '10:00', 'd47'),
('s260', '10:45', 'd47'),
('s261', '11:30', 'd47'),
('s262', '12:15', 'd47'),
('s263', '13:00', 'd47'),
('s264', '13:45', 'd47'),
('s265', '19:00', 'd48'),
('s266', '20:30', 'd48'),
('s267', '12:15', 'd48'),
('s268', '10:00', 'd49'),
('s269', '10:45', 'd49'),
('s270', '11:30', 'd49'),
('s271', '12:15', 'd49'),
('s272', '13:00', 'd49'),
('s273', '13:45', 'd49'),
('s274', '09:15', 'd50'),
('s275', '16:45', 'd50'),
('s276', '15:15', 'd50'),
('s277', '16:00', 'd50'),
('s278', '18:15', 'd50'),
('s279', '19:00', 'd50'),
('s280', '20:30', 'd50'),
('s281', '12:15', 'd51'),
('s282', '13:00', 'd51'),
('s283', '13:45', 'd51');

drop table Seats
CREATE TABLE Seats (
    SeatID INT IDENTITY(1,1) PRIMARY KEY,
	TransactionType nvarchar(10),
    SeatName NVARCHAR(100),   
    ShowtimeID NVARCHAR(20) FOREIGN KEY REFERENCES Showtimes(ShowtimeID)
);
INSERT INTO Seats(TransactionType,SeatName,ShowtimeID)
VALUES ('bill','L-1,C-3','s1');

CREATE TABLE [User] (
    Phone NVARCHAR(20) NOT NULL PRIMARY KEY,
    FullName NVARCHAR(30),
    Email NVARCHAR(30),
    DOB NVARCHAR(30),
    Password NVARCHAR(20),
    Gender NVARCHAR(10),
    role INT
);
INSERT INTO [User] (Phone, FullName, Email, DOB, Password, Gender, role)
VALUES ('0123456789', 'Nguyen Van A', 'nva@example.com', '1990-01-01', 'password123', 'Nam', 1);



CREATE table Cinema(
	CinemaID nvarchar(20) PRIMARY KEY,
	CinemaName NVARCHAR(50)
);
INSERT INTO Cinema(CinemaID,CinemaName)
VALUES
('ci1','CINEMA-A Ha Noi'),
('ci2','CINEMA-B Ha Noi'),
('ci3','CINEMA-C Ha Noi'),
('ci4','CINEMA-D Ha Noi');
drop table TicketCart
drop table Ticket
CREATE TABLE Ticket (
    TicketID INT IDENTITY(1,1) PRIMARY KEY,
	TransactionType nvarchar(10),
    MovieID NVARCHAR(20),
    Phone NVARCHAR(20),
    DayId NVARCHAR(20),
    ShowtimeID NVARCHAR(20),
    SeatID INT,
    CinemaID NVARCHAR(20),
    Price FLOAT,   
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (Phone) REFERENCES [User](Phone),
    FOREIGN KEY (DayId) REFERENCES Days(DayId),
    FOREIGN KEY (ShowtimeID) REFERENCES Showtimes(ShowtimeID),
    FOREIGN KEY (SeatID) REFERENCES Seats(SeatID),  
    FOREIGN KEY (CinemaID) REFERENCES Cinema(CinemaID)
);
INSERT INTO Ticket ( TransactionType,MovieID, Phone, DayId, ShowtimeID, SeatID, CinemaID, Price)
VALUES ( 'cart','mov1', '0123456789', 'd1', 's1', 1, 'Ci1', 150000);

select top 8 Movie.*
from Movie
where Movie.Status='soon'
ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);

select  Movie.*
from Movie
where Movie.MovieID='mov1'
ORDER BY CAST(SUBSTRING(MovieID, 4, LEN(MovieID)) AS INT);

select d.*
from Showtimes d
where d.ShowtimeID='s1'

select u.*
from [User] u
where u.Phone='0123456789' and u.Password='password123'

select s.*
from Seats s
where s.ShowtimeID='s1' and s.TransactionType='bill'
select t.*
from Ticket t
where t.Phone='0377580457' and t.TransactionType='cart'

select *
from Seats

select top 1 s.SeatID
from Seats s
order by s.SeatID desc