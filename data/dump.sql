CREATE TABLE IF NOT EXISTS CATALOGUES (
	ID varchar(40) NOT NULL,
	NAME varchar(20),
	DESCRIPTION varchar(200),
	PRICE float,
	STOCK int
);

CREATE TABLE IF NOT EXISTS IMAGES (
  ID MEDIUMINT NOT NULL AUTO_INCREMENT,
	URL varchar(40),
	CATALOGUE_ID varchar(40) NOT NULL,
	PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS TAGS (
	ID MEDIUMINT NOT NULL AUTO_INCREMENT,
	NAME varchar(20),
	DISPLAY varchar(40),
	PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS CATALOGUE_TAG (
	ID MEDIUMINT NOT NULL AUTO_INCREMENT,
	CATALOGUE_ID varchar(40),
	TAG_ID MEDIUMINT NOT NULL,
  PRIMARY KEY(ID)
);

INSERT INTO CATALOGUES VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "Nerd leg", "For all those leg lovers out there. A perfect example of a swivel chair trained calf. Meticulously trained on a diet of sitting and Pina Coladas. Phwarr...", 7.99, 115);
INSERT INTO CATALOGUES VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "Crossed", "A mature sock, crossed, with an air of nonchalance.",  17.32, 738);
INSERT INTO CATALOGUES VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "SuperSport XL", "Ready for action. Engineers: be ready to smash that next bug! Be ready, with these super-action-sport-masterpieces. This particular engineer was chased away from the office with a stick.",  15.00, 820);
INSERT INTO CATALOGUES VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "Holy", "Socks fit for a Messiah. You too can experience walking in water with these special edition beauties. Each hole is lovingly proggled to leave smooth edges. The only sock approved by a higher power.",  99.99, 1);
INSERT INTO CATALOGUES VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "YouTube.sock", "We were not paid to sell this sock. It's just a bit geeky.",  10.99, 801);
INSERT INTO CATALOGUES VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "Figueroa", "enim officia aliqua excepteur esse deserunt quis aliquip nostrud anim",  14, 808);
INSERT INTO CATALOGUES VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "Classic", "Keep it simple.",  12, 127);
INSERT INTO CATALOGUES VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "Colourful", "proident occaecat irure et excepteur labore minim nisi amet irure",  18, 438);
INSERT INTO CATALOGUES VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "Cat socks", "consequat amet cupidatat minim laborum tempor elit ex consequat in",  15, 175);

INSERT INTO TAGS (name) VALUES ("brown");
INSERT INTO TAGS (name) VALUES ("geek");
INSERT INTO TAGS (name) VALUES ("formal");
INSERT INTO TAGS (name) VALUES ("blue");
INSERT INTO TAGS (name) VALUES ("skin");
INSERT INTO TAGS (name) VALUES ("red");
INSERT INTO TAGS (name) VALUES ("action");
INSERT INTO TAGS (name) VALUES ("sport");
INSERT INTO TAGS (name) VALUES ("black");
INSERT INTO TAGS (name) VALUES ("magic");
INSERT INTO TAGS (name) VALUES ("green");

INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "4");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "5");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "4");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "6");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "7");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "3");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "8");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "9");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "3");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "10");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "7");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "2");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "3");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "3");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "11");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "4");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "1");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "11");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "1");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "4");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "1");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "11");
INSERT INTO CATALOGUE_TAG(CATALOGUE_ID, TAG_ID) VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "3");

INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("a0a4f044-b040-410d-8ead-4de0446aec7e", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("808a2de1-1aaa-4c25-a9b9-6612e8f29a38", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("510a0d7e-8e83-4193-b483-e27e09ddc34d", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("03fef6ac-1896-4ce8-bd69-b798f85c6e0b", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("d3588630-ad8e-49df-bbd7-3167f7efb246", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("819e1fbf-8b7e-4f6d-811f-693534916a8b", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("zzz4f044-b040-410d-8ead-4de0446aec7e", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("3395a43e-2d88-40de-b95f-e00e1502085b", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "/catalogue/images/youtube_2.jpeg");
INSERT INTO IMAGES(CATALOGUE_ID, URL) VALUES ("837ab141-399e-4c1f-9abc-bace40296bac", "/catalogue/images/youtube_2.jpeg");
