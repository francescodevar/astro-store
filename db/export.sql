PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "User" ("id" text PRIMARY KEY, "name" text NOT NULL, "email" text NOT NULL UNIQUE, "password" text NOT NULL, "createdAt" text NOT NULL DEFAULT '2024-11-07T23:03:56.491Z', "role" text NOT NULL REFERENCES "Role" ("id"));
INSERT INTO User VALUES('ABC-123-JOHN','John Doe','john.doe@google.com','$2a$10$slowqS6rwtLhOvc5A2RNT.EjOvBs6L5gVcdN91ZVjWoM60YL6KI.y','2024-11-07T23:03:56.491Z','admin');
INSERT INTO User VALUES('ABC-123-JANE','Jane Doe','jane.doe@google.com','$2a$10$SQEiL1QW4aqEIgOEEKQ.ae1C0MUPbHY3dKypPQFSCPxAqIsUd082.','2024-11-07T23:03:56.491Z','user');
CREATE TABLE IF NOT EXISTS "Role" ("id" text PRIMARY KEY, "name" text NOT NULL);
INSERT INTO Role VALUES('admin','Administrador');
INSERT INTO Role VALUES('user','Usuario de sistema');
CREATE TABLE IF NOT EXISTS "Product" ("id" text PRIMARY KEY, "description" text NOT NULL, "gender" text NOT NULL, "price" integer NOT NULL, "sizes" text NOT NULL, "slug" text NOT NULL UNIQUE, "stock" integer NOT NULL, "tags" text NOT NULL, "title" text NOT NULL, "type" text NOT NULL, "user" text NOT NULL REFERENCES "User" ("id"));
INSERT INTO Product VALUES('380529b6-6424-48fc-bf5a-198faf4efa5a','Introducing the Tesla Chill Collection. The Men’s Chill Crew Neck Sweatshirt has a premium, heavyweight exterior and soft fleece interior for comfort in any season. The sweatshirt features a subtle thermoplastic polyurethane T logo on the chest and a Tesla wordmark below the back collar. Made from 60% cotton and 40% recycled polyester.','men',75,'XS,S,M,L,XL,XXL','mens_chill_crew_neck_sweatshirt',7,'sweatshirt','Men’s Chill Crew Neck Sweatshirt','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('3f7fd297-31b0-4035-9575-b6c141c24d5d','The Men''s Quilted Shirt Jacket features a uniquely fit, quilted design for warmth and mobility in cold weather seasons. With an overall street-smart aesthetic, the jacket features subtle silicone injected Tesla logos below the back collar and on the right sleeve, as well as custom matte metal zipper pulls. Made from 87% nylon and 13% polyurethane.','men',200,'XS,S,M,XL,XXL','men_quilted_shirt_jacket',5,'jacket','Men''s Quilted Shirt Jacket','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('95bb4484-cd37-4e99-aed5-289348ac4abb','Introducing the Tesla Raven Collection. The Men''s Raven Lightweight Zip Up Bomber has a premium, modern silhouette made from a sustainable bamboo cotton blend for versatility in any season. The hoodie features subtle thermoplastic polyurethane Tesla logos on the left chest and below the back collar, a concealed chest pocket with custom matte zipper pulls and a french terry interior. Made from 70% bamboo and 30% cotton.','men',130,'S,M,L,XL,XXL','men_raven_lightweight_zip_up_bomber_jacket',10,'shirt','Men''s Raven Lightweight Zip Up Bomber Jacket','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('67aeac87-dcdb-454b-91d5-cabdb515cfb5','Introducing the Tesla Turbine Collection. Designed for style, comfort and everyday lifestyle, the Men''s Turbine Long Sleeve Tee features a subtle, water-based T logo on the left chest and our Tesla wordmark below the back collar. The lightweight material is double-dyed, creating a soft, casual style for ideal wear in any season. Made from 50% cotton and 50% polyester.','men',45,'XS,S,M,L','men_turbine_long_sleeve_tee',50,'shirt','Men''s Turbine Long Sleeve Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('b2c68026-417b-4538-8162-ad845730f12d','Introducing the Tesla Turbine Collection. Designed for style, comfort and everyday lifestyle, the Men''s Turbine Short Sleeve Tee features a subtle, water-based Tesla wordmark across the chest and our T logo below the back collar. The lightweight material is double-dyed, creating a soft, casual style for ideal wear in any season. Made from 50% cotton and 50% polyester.','men',40,'M,L,XL,XXL','men_turbine_short_sleeve_tee',50,'shirt','Men''s Turbine Short Sleeve Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('67ef2897-b762-4bfd-96ad-2707a482aa8e','Designed for comfort, the Cybertruck Owl Tee is made from 100% cotton and features our signature Cybertruck icon on the back.','men',35,'M,L,XL,XXL','men_cybertruck_owl_tee',0,'shirt','Men''s Cybertruck Owl Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('79fc423d-0f13-4441-a1cf-57c92e759f02','Inspired by our fully integrated home solar and storage system, the Tesla Solar Roof Tee advocates for clean, sustainable energy wherever you go. Designed for fit, comfort and style, the tee features an aerial view of our seamless Solar Roof design on the front with our signature T logo above ''Solar Roof'' on the back. Made from 100% Peruvian cotton.','men',35,'S,M,L,XL','men_solar_roof_tee',15,'shirt','Men''s Solar Roof Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('b4f88d0e-e401-40c5-b4e5-47fa769df33e','Inspired by the world’s most unlimited resource, the Let the Sun Shine Tee highlights our fully integrated home solar and storage system. Designed for fit, comfort and style, the tee features a sunset graphic along with our Tesla wordmark on the front and our signature T logo printed above ''Solar Roof'' on the back. Made from 100% Peruvian cotton.','men',35,'XS,S,XL,XXL','men_let_the_sun_shine_tee',17,'shirt','Men''s Let the Sun Shine Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('84cb08b2-059f-44e4-9dc0-6e3886c5fb8d','Designed for fit, comfort and style, the Men''s 3D Large Wordmark Tee is made from 100% Peruvian cotton with a 3D silicone-printed Tesla wordmark printed across the chest.','men',35,'XS,S,M','men_3d_large_wordmark_tee',12,'shirt','Men''s 3D Large Wordmark Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('a0973036-727e-4ccd-8c6f-236be064ff34','Designed for fit, comfort and style, the Tesla T Logo Tee is made from 100% Peruvian cotton and features a silicone-printed T Logo on the left chest.','men',35,'XS,S','men_3d_t_logo_tee',5,'shirt','Men''s 3D T Logo Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('238ad488-901a-40a0-b6a2-195aed191c2a','Designed for comfort and style in any size, the Tesla Small Wordmark Tee is made from 100% Peruvian cotton and features a 3D silicone-printed wordmark on the left chest.','men',35,'XS,S,M','men_3d_small_wordmark_tee',2,'shirt','Men’s 3D Small Wordmark Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('b865e62e-efe9-47a3-bbaa-2dd8125c1f65','Designed to celebrate Tesla''s incredible performance mode, the Plaid Mode Tee features great fit, comfort and style. Made from 100% cotton, it''s the next best thing to riding shotgun at the Nürburgring.','men',35,'XS,S,M,L,XL,XXL','men_plaid_mode_tee',82,'shirt','Men''s Plaid Mode Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('e2789982-537e-4247-b4f4-ae9ca662fc81','Inspired by our popular home battery, the Tesla Powerwall Tee is made from 100% cotton and features the phrase ''Pure Energy'' under our signature logo in the back. Designed for fit, comfort and style, the exclusive tee promotes sustainable energy in any environment.','men',35,'XL,XXL','men_powerwall_tee',24,'shirt','Men''s Powerwall Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('5c6ebce6-44d8-4bda-bc6c-a9e979f621b0','Inspired by Tesla Battery Day and featuring the unveiled tabless battery cell, Battery Day Tee celebrates the future of energy storage and cell manufacturing. Designed for fit, comfort and style, Battery Day Tee is made from 100% cotton with a stylized cell printed across the chest. Made in Peru.','men',30,'XS,S,XXL','men_battery_day_tee',5,'shirt','Men''s Battery Day Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('f60ca094-4f2b-4b88-af3d-3a33c157e0c0','Designed for exceptional comfort and inspired by the Cybertruck unveil event, the Cybertruck Bulletproof Tee is made from 100% cotton and features our signature Cybertruck icon on the back.','men',30,'M,L','men_cybertruck_bulletproof_tee',150,'shirt','Men’s Cybertruck Bulletproof Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('2caeb470-0b86-4841-8e2c-69f77257fd49','Inspired by the Model Y order confirmation graphic, the limited edition Haha Yes Tee is designed for comfort and style. Made from 100% Peruvian cotton and featuring the Tesla wordmark across the chest, the exclusive tee will commemorate your order for years to come.','men',35,'XS,S,M,L,XL,XXL','men_haha_yes_tee',10,'shirt','Men''s Haha Yes Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('ddf99d12-4ee7-49b9-8af4-2ac9177e21de','Designed for fit, comfort and style, the limited edition S3XY Tee is made from 100% cotton with a 3D silicone-printed “S3XY” logo across the chest. Made in Peru. Available in black.','men',35,'XS,S,M,L','men_s3xy_tee',34,'shirt','Men''s S3XY Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('b20c0afc-ea99-4d72-83d4-b6bed452a845','Designed for fit, comfort and style, the Men''s 3D Wordmark Long Sleeve Tee is made from 100% cotton and features an understated wordmark logo on the left chest.','men',40,'XL,XXL','men_3d_wordmark_long_sleeve_tee',15,'shirt','Men''s 3D Wordmark Long Sleeve Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('524ee559-ca99-4a18-8097-81fcefd38b45','Designed for fit, comfort and style, the Men''s 3D T Logo Long Sleeve Tee is made from 100% cotton and features an understated T logo on the left chest.','men',40,'XS,XXL','men_3d_t_logo_long_sleeve_tee',12,'shirt','Men''s 3D T Logo Long Sleeve Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('434ae047-bde6-4b9a-adf1-bd7f2e456435','Introducing the Tesla Raven Collection. The Men''s Raven Lightweight Hoodie has a premium, relaxed silhouette made from a sustainable bamboo cotton blend. The hoodie features subtle thermoplastic polyurethane Tesla logos across the chest and on the sleeve with a french terry interior for versatility in any season. Made from 70% bamboo and 30% cotton.','men',115,'XS,S,M,L,XL,XXL','men_raven_lightweight_hoodie',10,'hoodie','Men''s Raven Lightweight Hoodie','hoodies','ABC-123-JOHN');
INSERT INTO Product VALUES('4cc2a2de-2872-40bf-bcfb-ad9d48fef233','Introducing the Tesla Chill Collection. The Chill Pullover Hoodie has a premium, heavyweight exterior and soft fleece interior for comfort in any season. The unisex hoodie features subtle thermoplastic polyurethane Tesla logos across the chest and on the sleeve, a double layer single seam hood and pockets with custom matte zipper pulls. Made from 60% cotton and 40% recycled polyester.','unisex',130,'XS,S,M,L,XL,XXL','chill_pullover_hoodie',10,'hoodie','Chill Pullover Hoodie','hoodies','ABC-123-JOHN');
INSERT INTO Product VALUES('3b3fdeb0-c250-492b-a2ce-0f555f2643fc','Introducing the Tesla Chill Collection. The Men''s Chill Full Zip Hoodie has a premium, heavyweight exterior and soft fleece interior for comfort in any season. The hoodie features subtle thermoplastic polyurethane Tesla logos on the left chest and sleeve, a double layer single seam hood and pockets with custom matte zipper pulls. Made from 60% cotton and 40% recycled polyester.','men',85,'XS,L,XL,XXL','men_chill_full_zip_hoodie',100,'shirt','Men''s Chill Full Zip Hoodie','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('ac4b7908-b1b0-45b1-8ef7-4f60fffd1afa','Introducing the Tesla Chill Collection. The Men’s Chill Quarter Zip Pullover has a premium, heavyweight exterior and soft fleece interior for comfort in any season. The pullover features subtle thermoplastic polyurethane Tesla logos on the left chest and below the back collar, as well as a custom matte zipper pull. Made from 60% cotton and 40% recycled polyester.','men',85,'XS,S,M','men_chill_quarter_zip_pullover_-_gray',7,'shirt','Men''s Chill Quarter Zip Pullover - Gray','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('242efe7b-a84a-4a45-9ec1-fd5f5a153334','Introducing the Tesla Chill Collection. The Men’s Chill Quarter Zip Pullover has a premium, heavyweight exterior and soft fleece interior for comfort in any season. The pullover features subtle thermoplastic polyurethane Tesla logos on the left chest and below the back collar, as well as a custom matte zipper pull. Made from 60% cotton and 40% recycled polyester.','men',85,'XS,S,M,L','men_chill_quarter_zip_pullover_-_white',15,'shirt','Men''s Chill Quarter Zip Pullover - White','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('2b44faf2-a4a1-4fc2-bcb2-39036fcc65e2','The Unisex 3D Large Wordmark Pullover Hoodie features soft fleece and an adjustable, jersey-lined hood for comfort and coverage. Designed in a unisex style, the pullover hoodie includes a tone-on-tone 3D silicone-printed wordmark across the chest.','unisex',70,'XS,S,XL,XXL','3d_large_wordmark_pullover_hoodie',15,'hoodie','3D Large Wordmark Pullover Hoodie','hoodies','ABC-123-JOHN');
INSERT INTO Product VALUES('17497410-12f7-4c85-8665-8e009a694b32','As with the iconic Tesla logo, the Cybertruck Graffiti Hoodie is a classic in the making. Unisex style featuring soft fleece and an adjustable, jersey-lined hood for comfortable coverage.','unisex',60,'XS,S,M,L,XL,XXL','cybertruck_graffiti_hoodie',13,'hoodie','Cybertruck Graffiti Hoodie','hoodies','ABC-123-JOHN');
INSERT INTO Product VALUES('5f160cef-1986-4428-b0ce-e46a187c166a','The Relaxed T Logo Hat is a classic silhouette combined with modern details, featuring a 3D T logo and a custom metal buckle closure. The ultrasoft design is flexible and abrasion resistant, while the inner sweatband includes quilted padding for extra comfort and moisture wicking. The visor is fully made from recycled plastic bottles. 100% Cotton.','unisex',30,'XS,S,M,L,XL,XXL','relaxed_t_logo_hat',11,'hats','Relaxed T Logo Hat','hats','ABC-123-JOHN');
INSERT INTO Product VALUES('19d58a77-cd18-43b9-892a-5bb39b5dbd8e','The Relaxed T Logo Hat is a classic silhouette combined with modern details, featuring a 3D T logo and a custom metal buckle closure. The ultrasoft design is flexible and abrasion resistant, while the inner sweatband includes quilted padding for extra comfort and moisture wicking. The visor is fully made from recycled plastic bottles. 100% Cotton.','unisex',35,'XS,S,M,L,XL,XXL','thermal_cuffed_beanie',13,'hats','Thermal Cuffed Beanie','hats','ABC-123-JOHN');
INSERT INTO Product VALUES('a1a95dcf-57a2-454e-8952-fc6ce778ff44','The Women''s Cropped Puffer Jacket features a uniquely cropped silhouette for the perfect, modern style while on the go during the cozy season ahead. The puffer features subtle silicone injected Tesla logos below the back collar and on the right sleeve, custom matte metal zipper pulls and a soft, fleece lined collar. Made from 87% nylon and 13% polyurethane.','women',225,'XS,S,M','women_cropped_puffer_jacket',85,'hoodie','Women''s Cropped Puffer Jacket','hoodies','ABC-123-JOHN');
INSERT INTO Product VALUES('a9314639-1acf-42f5-a21e-4336132a3b63','Introducing the Tesla Chill Collection. The Women''s Chill Half Zip Cropped Hoodie has a premium, soft fleece exterior and cropped silhouette for comfort in everyday lifestyle. The hoodie features an elastic hem that gathers at the waist, subtle thermoplastic polyurethane Tesla logos along the hood and on the sleeve, a double layer single seam hood and a custom ring zipper pull. Made from 60% cotton and 40% recycled polyester.','women',130,'XS,S,M,XXL','women_chill_half_zip_cropped_hoodie',10,'hoodie','Women''s Chill Half Zip Cropped Hoodie','hoodies','ABC-123-JOHN');
INSERT INTO Product VALUES('fb63391c-5ac1-44ea-8fd3-d3b8833496b8','Introducing the Tesla Raven Collection. The Women''s Raven Slouchy Crew Sweatshirt has a premium, relaxed silhouette made from a sustainable bamboo cotton blend. The slouchy crew features a subtle thermoplastic polyurethane Tesla wordmark on the left sleeve and a french terry interior for a cozy look and feel in every season. Pair it with your Raven Joggers or favorite on the go fit. Made from 70% bamboo and 30% cotton.','women',110,'XS,S,M,L,XL,XXL','women_raven_slouchy_crew_sweatshirt',9,'hoodie','Women''s Raven Slouchy Crew Sweatshirt','hoodies','ABC-123-JOHN');
INSERT INTO Product VALUES('a4d8b109-33c4-46cf-acd0-b81f106bf4ea','Introducing the Tesla Turbine Collection. Designed for style, comfort and everyday lifestyle, the Women''s Turbine Cropped Long Sleeve Tee features a subtle, water-based Tesla wordmark across the chest and our T logo below the back collar. The lightweight material is double-dyed, creating a soft, casual style with a cropped silhouette. Made from 50% cotton and 50%','women',45,'XS,S,M,L,XL,XXL','women_turbine_cropped_long_sleeve_tee',10,'shirt','Women''s Turbine Cropped Long Sleeve Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('8ac46b64-ed35-4c2c-808c-44edfb01d9c7','ntroducing the Tesla Turbine Collection. Designed for style, comfort and everyday lifestyle, the Women''s Turbine Cropped Short Sleeve Tee features a subtle, water-based Tesla wordmark across the chest and our T logo below the back collar. The lightweight material is double-dyed, creating a soft, casual style with a cropped silhouette. Made from 50% cotton and 50% polyester.','women',40,'XS,S','women_turbine_cropped_short_sleeve_tee',0,'shirt','Women''s Turbine Cropped Short Sleeve Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('8eda6829-7555-4717-9ecc-986b3f825da4','Designed for style and comfort, the ultrasoft Women''s T Logo Short Sleeve Scoop Neck Tee features a tonal 3D silicone-printed T logo on the left chest. Made of 50% Peruvian cotton and 50% Peruvian viscose.','women',35,'XS,S,M,L,XL,XXL','women_t_logo_short_sleeve_scoop_neck_tee',30,'shirt','Women''s T Logo Short Sleeve Scoop Neck Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('7b455e3e-6748-4eb7-b593-ad409b193d45','Designed for style and comfort, the ultrasoft Women''s T Logo Long Sleeve Scoop Neck Tee features a tonal 3D silicone-printed T logo on the left chest. Made of 50% Peruvian cotton and 50% Peruvian viscose.','women',40,'XS,S,L,XL,XXL','women_t_logo_long_sleeve_scoop_neck_tee',16,'shirt','Women''s T Logo Long Sleeve Scoop Neck Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('314b28f6-ff0f-415a-9da1-772dd03dcc78','Designed for style and comfort, the Women''s Small Wordmark Short Sleeve V-Neck Tee features a tonal 3D silicone-printed wordmark on the left chest. Made of 100% Peruvian cotton.','women',35,'XS,S,M,L,XL,XXL','women_small_wordmark_short_sleeve_v-neck_tee',18,'shirt','Women''s Small Wordmark Short Sleeve V-Neck Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('1db33ff4-c2de-4d88-b401-5240236be160','Designed for style and comfort, the Women''s Large Wordmark Short Sleeve Crew Neck Tee features a tonal 3D silicone-printed wordmark across the chest. Made of 100% Peruvian pima cotton.','women',35,'XL,XXL','women_large_wordmark_short_sleeve_crew_neck_tee',5,'shirt','Women''s Large Wordmark Short Sleeve Crew Neck Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('fa90c3ff-b975-415a-a2f5-85f30e1e8215','Designed to celebrate Tesla''s incredible performance mode, the Plaid Mode Tee features great fit, comfort and style. Made from 100% cotton, it''s the next best thing to riding shotgun at the Nürburgring.','women',35,'S,M','women_plaid_mode_tee',16,'shirt','Women''s Plaid Mode Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('27c026a3-7d81-49a0-b577-ce399bb15ac5','Inspired by our popular home battery, the Tesla Powerwall Tee is made from 100% cotton and features the phrase ''Pure Energy'' under our signature logo in the back. Designed for fit, comfort and style, the exclusive tee promotes sustainable energy in any','women',130,'XS,S,M,L,XL,XXL','women_powerwall_tee',10,'shirt','Women’s Powerwall Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('ee2b7634-b1a8-457f-b6e5-30767ede5157','Fully customized and uniquely styled, the Women''s Corp Jacket features a silicone-printed ''T'' logo on the left chest and prominent Tesla wordmark across the back.','women',90,'M,L,XL,XXL','women_corp_jacket',3,'shirt','Women''s Corp Jacket','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('74cc829a-1a06-4c9f-9f55-e1d9ab48f82f','Introducing the Tesla Raven Collection. The Women''s Raven Joggers have a premium, relaxed silhouette made from a sustainable bamboo cotton blend. The joggers feature a subtle thermoplastic polyurethane Tesla wordmark and T logo and a french terry interior for a cozy look and feel in every season. Pair them with your Raven Slouchy Crew Sweatshirt, Raven Lightweight Zip Up Jacket or other favorite on the go fit. Made from 70% bamboo and 30% cotton.','women',100,'XS,S,M,L,XL,XXL','women_raven_joggers',162,'shirt','Women''s Raven Joggers','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('6b3d05e4-f74c-46c6-989f-df52c5dabe56','Designed for fit, comfort and style, the Kids Cybertruck Graffiti Long Sleeve Tee features a water-based Cybertruck graffiti wordmark across the chest, a Tesla wordmark down the left arm and our signature T logo on the back collar. Made from 50% cotton and 50% polyester.','kid',30,'XS,S,M','kids_cybertruck_long_sleeve_tee',10,'shirt','Kids Cybertruck Long Sleeve Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('500af1be-3d87-48b8-8753-911326968340','The Kids Scribble T Logo Tee is made from 100% Peruvian cotton and features a Tesla T sketched logo for every young artist to wear.','kid',25,'XS,S,M','kids_scribble_t_logo_tee',0,'shirt','Kids Scribble T Logo Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('7030b9d7-388c-4f5e-b014-add9aff05391','The Kids Cybertruck Tee features the iconic Cybertruck graffiti wordmark and is made from 100% Peruvian cotton for maximum comfort.','kid',25,'XS,S,M','kids_cybertruck_tee',10,'shirt','Kids Cybertruck Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('d0d074d4-b5e6-4e5a-8411-32d8f5f7899c','The refreshed Kids Racing Stripe Tee is made from 100% Peruvian cotton, featuring a newly enhanced racing stripe with a brushed Tesla wordmark that''s perfect for any speed racer.','kid',30,'XS,S,M','kids_racing_stripe_tee',10,'shirt','Kids Racing Stripe Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('ce9609c9-dc20-4bc9-ba53-4eade660a1fb','Designed for fit, comfort and style, the Tesla T Logo Tee is made from 100% Peruvian cotton and features a silicone-printed T Logo on the left chest.','kid',30,'XS,S,M','kids_3d_t_logo_tee',10,'shirt','Kids 3D T Logo Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('d4c9d9dc-143a-47ed-85ea-667b4db30629','The checkered tee is made from long grain, GMO free Peruvian cotton. Peru is the only country in the world where cotton is picked by hand on a large scale. The 4,500-year-old tradition prevents damage to the fiber during the picking process and removes the need to use chemicals to open the cotton plants before harvest. This environmentally friendly process results in cotton that is soft, strong, and lustrous – and the tee will get even softer with every wash.','kid',30,'XS,S,M','kids_checkered_tee',10,'shirt','Kids Checkered Tee','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('95b3d5ab-c3ae-45c8-bfd9-4570c2d99f21','For the future space traveler with discerning taste, a soft, cotton onesie with snap closure bottom. Clear labeling provided in case of contact with a new spacefaring civilization. 100% Cotton. Made in Peru','kid',25,'XS,S','made_on_earth_by_humans_onesie',16,'shirt','Made on Earth by Humans Onesie','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('025816de-0811-4eed-855c-0ecefb3439fe','The Kids Scribble T Logo Onesie is made from 100% Peruvian cotton and features a Tesla T sketched logo for every little artist to wear.','kid',30,'XS,S','scribble_t_logo_onesie',0,'shirt','Scribble T Logo Onesie','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('67d369c8-0c61-4a00-bf24-5b3266309aa4','Show your commitment to sustainable energy with this cheeky onesie for your young one. Note: Does not prevent emissions. 100% Cotton. Made in Peru.','kid',30,'XS,S','zero_emissions_(almost)_onesie',10,'shirt','Zero Emissions (Almost) Onesie','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('f4e693ae-fc9c-428f-b75c-527fdc537af7','Wear your Kids Cyberquad Bomber Jacket during your adventures on Cyberquad for Kids. The bomber jacket features a graffiti-style illustration of our Cyberquad silhouette and wordmark. With three zippered pockets and our signature T logo and Tesla wordmark printed along the sleeves, Kids Cyberquad Bomber Jacket is perfect for wherever the trail takes you. Made from 60% cotton and 40% polyester.','kid',65,'XS,S,M','kids_cyberquad_bomber_jacket',10,'shirt','Kids Cyberquad Bomber Jacket','shirts','ABC-123-JOHN');
INSERT INTO Product VALUES('1fc486d8-09b5-4779-85c0-0e3d182663b6','Cruise the playground in style with the Kids Corp Jacket. Modeled after the original Tesla Corp Jacket, the Kids Corp Jacket features the same understated style and high-quality materials but at a pint-sized scale.','kid',30,'XS,S,M','kids_corp_jacket',10,'shirt','Kids Corp Jacket','shirts','ABC-123-JOHN');
CREATE TABLE IF NOT EXISTS "ProductImage" ("id" text PRIMARY KEY, "productId" text NOT NULL REFERENCES "Product" ("id"), "image" text NOT NULL);
INSERT INTO ProductImage VALUES('999a330c-e15a-4489-a3f1-11436e5bc5d1','380529b6-6424-48fc-bf5a-198faf4efa5a','1740176-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('f8d99658-cb58-4b35-af16-1296cfd6f3f8','380529b6-6424-48fc-bf5a-198faf4efa5a','1740176-00-A_1.jpg');
INSERT INTO ProductImage VALUES('2555f001-4764-4173-b3ca-ecef4fed8d5d','3f7fd297-31b0-4035-9575-b6c141c24d5d','1740507-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('eb245b08-dc60-4054-bc37-459207c2de36','3f7fd297-31b0-4035-9575-b6c141c24d5d','1740507-00-A_1.jpg');
INSERT INTO ProductImage VALUES('3e95f20e-0fc6-43f7-aa6a-41610ac273db','95bb4484-cd37-4e99-aed5-289348ac4abb','1740250-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('2d2560a9-5587-4647-9c0f-4e27238914a5','95bb4484-cd37-4e99-aed5-289348ac4abb','1740250-00-A_1.jpg');
INSERT INTO ProductImage VALUES('3623a3fa-9d4b-4eaa-b432-09bddffafd2a','67aeac87-dcdb-454b-91d5-cabdb515cfb5','1740280-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('0bc02f20-193b-4529-97a9-c717a7a0d12b','67aeac87-dcdb-454b-91d5-cabdb515cfb5','1740280-00-A_1.jpg');
INSERT INTO ProductImage VALUES('78701c49-298d-4704-bacf-ed2248355471','b2c68026-417b-4538-8162-ad845730f12d','1741416-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('39bbade8-bdd4-4d42-b22e-f98c40f7d817','b2c68026-417b-4538-8162-ad845730f12d','1741416-00-A_1.jpg');
INSERT INTO ProductImage VALUES('1e460ea4-f626-4bf3-8de5-a81ae65efbaf','67ef2897-b762-4bfd-96ad-2707a482aa8e','7654393-00-A_2_2000.jpg');
INSERT INTO ProductImage VALUES('a91ff722-6c4a-482e-9105-937b36e3eafd','67ef2897-b762-4bfd-96ad-2707a482aa8e','7654393-00-A_3.jpg');
INSERT INTO ProductImage VALUES('289e0c6f-2e36-4e55-9c49-8bd36e39d765','79fc423d-0f13-4441-a1cf-57c92e759f02','1703767-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('d884567d-0151-446e-bc89-5713e16d080e','79fc423d-0f13-4441-a1cf-57c92e759f02','1703767-00-A_1.jpg');
INSERT INTO ProductImage VALUES('b9e46691-1850-4433-b8b6-1a9663807772','b4f88d0e-e401-40c5-b4e5-47fa769df33e','1700280-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('effcfd2f-23df-4b22-a5cf-2728bbbee6a6','b4f88d0e-e401-40c5-b4e5-47fa769df33e','1700280-00-A_1.jpg');
INSERT INTO ProductImage VALUES('fb5ba2c2-a994-4b2a-87eb-9ee73fd1f37a','84cb08b2-059f-44e4-9dc0-6e3886c5fb8d','8764734-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('67b7dd3f-efae-4e89-91b8-767a13015403','84cb08b2-059f-44e4-9dc0-6e3886c5fb8d','8764734-00-A_1.jpg');
INSERT INTO ProductImage VALUES('48727b42-8f53-43b4-969c-7c841ed52954','a0973036-727e-4ccd-8c6f-236be064ff34','7652426-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('d508f97c-71df-4741-add5-2bac660aba19','a0973036-727e-4ccd-8c6f-236be064ff34','7652426-00-A_1.jpg');
INSERT INTO ProductImage VALUES('0710fee7-064e-4159-bd98-dee89ca8f540','238ad488-901a-40a0-b6a2-195aed191c2a','8528839-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('07d37510-48a7-4cdb-af3f-6fc52e3125f3','238ad488-901a-40a0-b6a2-195aed191c2a','8528839-00-A_2.jpg');
INSERT INTO ProductImage VALUES('650dfd97-fa0f-407b-ae67-08e48b80876f','b865e62e-efe9-47a3-bbaa-2dd8125c1f65','1549268-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('065c320b-19f2-4eda-bac3-eba65a7bb5c1','b865e62e-efe9-47a3-bbaa-2dd8125c1f65','1549268-00-A_2.jpg');
INSERT INTO ProductImage VALUES('1797cfef-f023-438b-84d3-668e9ab05258','e2789982-537e-4247-b4f4-ae9ca662fc81','9877034-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('cd07f191-d68f-40c8-9309-3b123835bc14','e2789982-537e-4247-b4f4-ae9ca662fc81','9877034-00-A_2.jpg');
INSERT INTO ProductImage VALUES('e99945c4-0ad7-4719-be3c-7f450d9b947b','5c6ebce6-44d8-4bda-bc6c-a9e979f621b0','1633802-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('20dc8ac8-ebd4-4c5d-8ef7-8f47653ae867','5c6ebce6-44d8-4bda-bc6c-a9e979f621b0','1633802-00-A_2.jpg');
INSERT INTO ProductImage VALUES('e8047516-5ab2-40c4-a469-9b969165e3ef','f60ca094-4f2b-4b88-af3d-3a33c157e0c0','7654399-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('98af1baf-33fe-43f4-ac42-d3801d5e55af','f60ca094-4f2b-4b88-af3d-3a33c157e0c0','7654399-00-A_1.jpg');
INSERT INTO ProductImage VALUES('699a947d-7ed3-47f9-8327-a1aee2cad6e8','2caeb470-0b86-4841-8e2c-69f77257fd49','7652410-00-A_0.jpg');
INSERT INTO ProductImage VALUES('3e3a6fd5-8d78-4b4b-b34e-995e1bb32e23','2caeb470-0b86-4841-8e2c-69f77257fd49','7652410-00-A_1_2000.jpg');
INSERT INTO ProductImage VALUES('f9ae6a5b-c92e-42ca-ada3-996ef0c01877','ddf99d12-4ee7-49b9-8af4-2ac9177e21de','8764600-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('81319442-0033-4a61-88c9-5bb50d12d451','ddf99d12-4ee7-49b9-8af4-2ac9177e21de','8764600-00-A_2.jpg');
INSERT INTO ProductImage VALUES('d6751e6c-37c5-42eb-bee5-ed15d83893ac','b20c0afc-ea99-4d72-83d4-b6bed452a845','8764813-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('b5203f56-659a-4135-a5dc-29ee593a9d27','b20c0afc-ea99-4d72-83d4-b6bed452a845','8764813-00-A_1.jpg');
INSERT INTO ProductImage VALUES('e8fc3fd8-ef58-470a-9de0-6d73b80ac335','524ee559-ca99-4a18-8097-81fcefd38b45','8529198-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('d8fc2658-509d-4abb-b751-d483616fd23b','524ee559-ca99-4a18-8097-81fcefd38b45','8529198-00-A_1.jpg');
INSERT INTO ProductImage VALUES('465b8393-70b5-4e91-9fc6-ea4c4b865bc2','434ae047-bde6-4b9a-adf1-bd7f2e456435','1740245-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('eb5acb4d-903a-4b2e-a62b-802df87cae9d','434ae047-bde6-4b9a-adf1-bd7f2e456435','1740245-00-A_1.jpg');
INSERT INTO ProductImage VALUES('78b9c484-c0a9-41b6-8d54-0480e9aad735','4cc2a2de-2872-40bf-bcfb-ad9d48fef233','1740051-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('e0aa3636-ed18-4fbb-ad22-fc0a1190adf2','4cc2a2de-2872-40bf-bcfb-ad9d48fef233','1740051-00-A_1.jpg');
INSERT INTO ProductImage VALUES('eb5ff9f9-7233-4a07-9669-c2d22e3d9827','3b3fdeb0-c250-492b-a2ce-0f555f2643fc','1741111-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('6ee1e112-c655-478d-bcd9-297edb25f6d2','3b3fdeb0-c250-492b-a2ce-0f555f2643fc','1741111-00-A_1.jpg');
INSERT INTO ProductImage VALUES('520dd222-765e-4399-938c-82322ddd19b7','ac4b7908-b1b0-45b1-8ef7-4f60fffd1afa','1740140-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('4379b666-87a7-43d5-b61d-dfd9c49832fe','ac4b7908-b1b0-45b1-8ef7-4f60fffd1afa','1740140-00-A_1.jpg');
INSERT INTO ProductImage VALUES('cbac8afd-841e-4ee8-a17d-2c66a33dcac3','242efe7b-a84a-4a45-9ec1-fd5f5a153334','1740145-00-A_2_2000.jpg');
INSERT INTO ProductImage VALUES('9db17fe0-92f6-4e3b-9e4a-31e1b2cf376d','242efe7b-a84a-4a45-9ec1-fd5f5a153334','1740145-00-A_1.jpg');
INSERT INTO ProductImage VALUES('c2ad4bd9-9fc3-475e-9b83-a1c480ad5537','2b44faf2-a4a1-4fc2-bcb2-39036fcc65e2','8529107-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('d5c27e66-42b0-480a-ba2e-e1f5273ec0be','2b44faf2-a4a1-4fc2-bcb2-39036fcc65e2','8529107-00-A_1.jpg');
INSERT INTO ProductImage VALUES('82b118db-7b3c-4044-9a2f-8fd29637db81','17497410-12f7-4c85-8665-8e009a694b32','7654420-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('84cc2d08-3efe-48ab-b611-46521e74a927','17497410-12f7-4c85-8665-8e009a694b32','7654420-00-A_1_2000.jpg');
INSERT INTO ProductImage VALUES('620e587e-05db-4918-ad21-0e5110940019','5f160cef-1986-4428-b0ce-e46a187c166a','1657932-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('dac04fba-d21d-4787-b0bd-9128785f7732','5f160cef-1986-4428-b0ce-e46a187c166a','1657932-00-A_1.jpg');
INSERT INTO ProductImage VALUES('4a97b0e6-ab6d-4efe-95b8-90d8f4c2c57c','19d58a77-cd18-43b9-892a-5bb39b5dbd8e','1740417-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('3f652a00-0256-4004-9ae0-2c297aa49d1b','19d58a77-cd18-43b9-892a-5bb39b5dbd8e','1740417-00-A_1.jpg');
INSERT INTO ProductImage VALUES('2c6388d9-0c50-40eb-a46c-289d004199b9','a1a95dcf-57a2-454e-8952-fc6ce778ff44','1740535-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('64dea1c7-fef5-4d14-8a41-40620a3e73ec','a1a95dcf-57a2-454e-8952-fc6ce778ff44','1740535-00-A_1.jpg');
INSERT INTO ProductImage VALUES('1547bba1-1f95-42e1-b1e6-981622dcfd07','a9314639-1acf-42f5-a21e-4336132a3b63','1740226-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('23a539a3-6b32-4bfb-a92e-0e3180409e29','a9314639-1acf-42f5-a21e-4336132a3b63','1740226-00-A_1.jpg');
INSERT INTO ProductImage VALUES('2aad390f-a992-49ac-9c56-5eed8f1bd200','fb63391c-5ac1-44ea-8fd3-d3b8833496b8','1740260-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('e7c83fe7-2f0a-4d1b-b4da-badf6a850e8b','fb63391c-5ac1-44ea-8fd3-d3b8833496b8','1740260-00-A_1.jpg');
INSERT INTO ProductImage VALUES('d587d623-20f5-451d-a841-db7ee3df8c6f','a4d8b109-33c4-46cf-acd0-b81f106bf4ea','1740290-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('40b86b1a-1346-4644-aee1-45a54080e0fb','a4d8b109-33c4-46cf-acd0-b81f106bf4ea','1740290-00-A_1.jpg');
INSERT INTO ProductImage VALUES('4c246710-d7c9-4469-8b47-ef89b33f08b3','8ac46b64-ed35-4c2c-808c-44edfb01d9c7','1741441-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('16b55faf-bc2d-4c58-8c8e-7c2d774fda34','8ac46b64-ed35-4c2c-808c-44edfb01d9c7','1741441-00-A_1.jpg');
INSERT INTO ProductImage VALUES('dae57e49-01da-4d2e-8d5a-f62c15fd9d6b','8eda6829-7555-4717-9ecc-986b3f825da4','8765090-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('c6f28c05-775b-443d-8bbf-474f5a664620','8eda6829-7555-4717-9ecc-986b3f825da4','8765090-00-A_1.jpg');
INSERT INTO ProductImage VALUES('bff3b032-29eb-4a03-8df8-bf18ce2fa118','7b455e3e-6748-4eb7-b593-ad409b193d45','8765100-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('9d9de4dc-080f-49c5-86b1-7051381bb403','7b455e3e-6748-4eb7-b593-ad409b193d45','8765100-00-A_1.jpg');
INSERT INTO ProductImage VALUES('debf59c8-138c-404e-a17c-2445cf80d927','314b28f6-ff0f-415a-9da1-772dd03dcc78','8765120-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('a6a636ed-e5d0-44c9-acc3-ed0bfb905e85','314b28f6-ff0f-415a-9da1-772dd03dcc78','8765120-00-A_1.jpg');
INSERT INTO ProductImage VALUES('b3698ed6-9384-4ec2-9e28-b7918e030f0a','1db33ff4-c2de-4d88-b401-5240236be160','8765115-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('766f80ff-84f3-4997-ac51-ac70e7103379','1db33ff4-c2de-4d88-b401-5240236be160','8765115-00-A_1.jpg');
INSERT INTO ProductImage VALUES('6ec84266-7182-441e-be06-5ab6b991e6a4','fa90c3ff-b975-415a-a2f5-85f30e1e8215','1549275-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('4d347aa7-9015-4f8f-a0cc-120a8d43347a','fa90c3ff-b975-415a-a2f5-85f30e1e8215','1549275-00-A_1.jpg');
INSERT INTO ProductImage VALUES('7f1cb991-53bd-469f-8786-f62ae200fd67','27c026a3-7d81-49a0-b577-ce399bb15ac5','9877040-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('9a421589-0786-4874-9893-7709e65f5d13','27c026a3-7d81-49a0-b577-ce399bb15ac5','9877040-00-A_1.jpg');
INSERT INTO ProductImage VALUES('2968a3c4-8b3c-410f-b91c-43f2a2f2e7a5','ee2b7634-b1a8-457f-b6e5-30767ede5157','5645680-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('431c8f41-06ec-4c90-ae08-3c636abe0d6e','ee2b7634-b1a8-457f-b6e5-30767ede5157','5645680-00-A_3.jpg');
INSERT INTO ProductImage VALUES('ba4a4538-786e-4e84-8410-2806f47a3c22','74cc829a-1a06-4c9f-9f55-e1d9ab48f82f','1740270-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('0f577a12-ec93-4d05-8e00-889ac4ef32b7','74cc829a-1a06-4c9f-9f55-e1d9ab48f82f','1740270-00-A_1.jpg');
INSERT INTO ProductImage VALUES('4b710531-0fe5-4c21-aaa9-eabfec87b3e0','6b3d05e4-f74c-46c6-989f-df52c5dabe56','1742694-00-A_1_2000.jpg');
INSERT INTO ProductImage VALUES('94612a8b-cdbb-4a64-9f97-1f3f63363d52','6b3d05e4-f74c-46c6-989f-df52c5dabe56','1742694-00-A_3.jpg');
INSERT INTO ProductImage VALUES('a3412b9d-6296-4dda-9f6a-e0bf62b6fad7','500af1be-3d87-48b8-8753-911326968340','8529312-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('b32836f1-11b2-4ee9-a15e-307945bb17a3','500af1be-3d87-48b8-8753-911326968340','8529312-00-A_1.jpg');
INSERT INTO ProductImage VALUES('2674959d-bfa6-47ca-85c2-cff11343a518','7030b9d7-388c-4f5e-b014-add9aff05391','8529342-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('3fc3d441-a465-4978-8a2a-06c2a1230218','7030b9d7-388c-4f5e-b014-add9aff05391','8529342-00-A_1.jpg');
INSERT INTO ProductImage VALUES('122683c6-500d-4372-95ec-efbb99d36fb3','d0d074d4-b5e6-4e5a-8411-32d8f5f7899c','8529354-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('011dce4a-5d33-4a39-ad2e-b491b25fc6c5','d0d074d4-b5e6-4e5a-8411-32d8f5f7899c','8529354-00-A_1.jpg');
INSERT INTO ProductImage VALUES('aea0c94f-04c4-4007-bc70-3d549f7f3a1a','ce9609c9-dc20-4bc9-ba53-4eade660a1fb','7652465-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('5ea6a800-6b94-47e0-9b75-cb13d4a38e52','ce9609c9-dc20-4bc9-ba53-4eade660a1fb','7652465-00-A_1.jpg');
INSERT INTO ProductImage VALUES('ca7bc511-b67f-42ce-8be5-b9c18de2cf3a','d4c9d9dc-143a-47ed-85ea-667b4db30629','100042307_0_2000.jpg');
INSERT INTO ProductImage VALUES('559230d1-d98a-4d52-b15f-f06a647e9b92','d4c9d9dc-143a-47ed-85ea-667b4db30629','100042307_alt_2000.jpg');
INSERT INTO ProductImage VALUES('fd745511-76d8-4ca6-a39a-f3a1dba46e75','95b3d5ab-c3ae-45c8-bfd9-4570c2d99f21','1473809-00-A_1_2000.jpg');
INSERT INTO ProductImage VALUES('87f2adca-0641-424c-80f0-a7f33d3fea0f','95b3d5ab-c3ae-45c8-bfd9-4570c2d99f21','1473809-00-A_alt.jpg');
INSERT INTO ProductImage VALUES('a2457edb-0c4a-4a51-9e2a-6da8eb22b44d','025816de-0811-4eed-855c-0ecefb3439fe','8529387-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('56fd7b95-380e-46fc-9c4e-b58c0378b242','025816de-0811-4eed-855c-0ecefb3439fe','8529387-00-A_1.jpg');
INSERT INTO ProductImage VALUES('3e6bd30c-6e6d-493e-ab86-2b07f98707e4','67d369c8-0c61-4a00-bf24-5b3266309aa4','1473834-00-A_2_2000.jpg');
INSERT INTO ProductImage VALUES('87bb228f-46a9-4a00-8bb7-145020d227fa','67d369c8-0c61-4a00-bf24-5b3266309aa4','1473829-00-A_2_2000.jpg');
INSERT INTO ProductImage VALUES('88b6af33-5ed7-4ad1-b25c-85a3852d942e','f4e693ae-fc9c-428f-b75c-527fdc537af7','1742702-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('c79d13e8-0b28-47f7-ada6-b3db2c58788a','f4e693ae-fc9c-428f-b75c-527fdc537af7','1742702-00-A_1.jpg');
INSERT INTO ProductImage VALUES('4b6dbd3a-96c0-4e5d-ba40-4578ef908e3c','1fc486d8-09b5-4779-85c0-0e3d182663b6','1506211-00-A_0_2000.jpg');
INSERT INTO ProductImage VALUES('40d3535b-d132-4fc1-b852-fc05d36d6ed7','1fc486d8-09b5-4779-85c0-0e3d182663b6','1506211-00-A_1_2000.jpg');
COMMIT;
