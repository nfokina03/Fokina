#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Neque saepe illo dolorum error. Aliquam placeat dignissimos consequatur. Similique consectetur molestiae non omnis.', 'voluptatibus', 53788312, NULL, '1975-10-10 05:15:18', '1992-10-18 18:27:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Quia et aliquam reprehenderit ipsum. Reprehenderit et et possimus illum. Eligendi quod amet voluptatibus doloribus maiores possimus odio sint. Commodi sequi id recusandae qui beatae perspiciatis. Consectetur atque nesciunt officia ducimus.', 'modi', 60277604, NULL, '2013-06-14 21:31:27', '2014-11-14 03:19:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Voluptatibus quia cupiditate voluptate. Omnis distinctio dolorum sint delectus at et hic. Natus voluptate sit distinctio. Alias eum doloribus consequatur omnis adipisci sapiente in enim.', 'autem', 9457, NULL, '1985-05-30 05:40:41', '1979-06-19 23:33:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Vero ea est ipsa vitae. Eius odio eligendi corrupti consequatur eum adipisci aperiam. Culpa magni autem quidem laudantium velit maiores deleniti. Mollitia autem dolores ratione et repellat.', 'maxime', 20516906, NULL, '1992-09-12 17:31:01', '1973-01-13 05:56:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '1', '5', 'Consequatur excepturi quisquam soluta reiciendis est molestiae labore molestiae. Reprehenderit perferendis consequatur nulla saepe. Tenetur dolorum quod et voluptate hic tempora.', 'est', 81, NULL, '2011-01-27 09:02:12', '2020-10-05 16:30:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '2', '6', 'Explicabo dignissimos unde vitae reiciendis praesentium harum vel ut. Corporis reprehenderit harum nisi minus iure enim. Laborum necessitatibus et ipsum impedit.', 'voluptatem', 72824, NULL, '2018-08-17 15:48:48', '2000-12-18 06:15:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '3', '7', 'Et corporis ratione quidem vero consectetur quo. Fuga magni impedit aut quibusdam dolore voluptatem. Dolores qui distinctio qui animi esse et.', 'reprehenderit', 692091567, NULL, '2007-07-30 11:55:48', '2018-03-19 18:38:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '4', '8', 'At qui iste similique. Et reiciendis et et tempore. Modi quia et eos. Beatae alias corrupti velit laudantium odit odit.', 'debitis', 5808, NULL, '1982-07-29 19:12:21', '2010-04-05 19:10:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '1', '9', 'Corporis nobis in in. Itaque amet adipisci debitis ea sit. Ut nam praesentium ut est ad ut suscipit. Quibusdam dolores et quidem sed.', 'quisquam', 0, NULL, '1979-12-29 04:47:37', '2014-01-28 05:01:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '2', '10', 'Nihil amet est libero consequatur. Et repellendus tempore aperiam expedita magnam. Animi debitis ut quia assumenda velit illum.', 'commodi', 4053458, NULL, '2008-06-16 08:16:46', '2016-01-25 02:08:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '3', '11', 'Est quidem quidem illo aut. Totam nihil earum quibusdam cum aut asperiores debitis. Dolores totam officia omnis veniam totam consectetur. Qui minus temporibus ut blanditiis earum sapiente sed.', 'ut', 0, NULL, '1970-03-01 16:55:54', '1993-06-20 12:15:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '4', '12', 'In ullam distinctio est voluptatem voluptas voluptatem. Voluptatem doloremque accusantium nesciunt quis magni. Architecto voluptates assumenda at. Enim est et veritatis necessitatibus est deleniti.', 'omnis', 12, NULL, '1987-08-27 09:56:34', '1977-12-27 07:22:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '1', '13', 'Corporis eligendi sunt officia cumque non quas. Sint doloremque ut maxime suscipit nisi. Architecto velit enim officia et qui.', 'doloribus', 42540237, NULL, '1998-06-06 07:57:29', '2022-08-16 17:55:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '2', '14', 'Minima distinctio delectus rerum voluptatem. Vitae sint rerum rerum voluptatem quia quibusdam qui non. Inventore voluptates illum exercitationem enim excepturi omnis. Asperiores repudiandae magni laboriosam iusto est.', 'quod', 24580, NULL, '2013-12-23 19:00:25', '2009-05-16 17:52:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '3', '15', 'Consequatur qui aut dolores porro id incidunt. Facere qui fuga suscipit. Aut et praesentium suscipit ut repellat delectus.', 'sint', 8720523, NULL, '1993-08-27 11:35:31', '1989-06-11 22:40:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '4', '16', 'Voluptatem fugit voluptatem nemo sit aliquam optio consequuntur. Voluptate veritatis minus aliquid enim non. Numquam velit facere alias voluptate. Qui molestiae ea est qui eos animi veniam.', 'possimus', 1, NULL, '1988-10-24 03:39:22', '1980-07-19 14:10:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '1', '17', 'Corrupti excepturi quos id. Facere placeat sint quaerat eaque praesentium. Aut qui quasi eius voluptatem. Voluptatibus sunt corrupti pariatur voluptate. Impedit assumenda placeat voluptas aut cupiditate.', 'doloribus', 0, NULL, '1985-02-11 10:34:10', '1994-05-18 02:09:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '2', '18', 'Necessitatibus qui aut dignissimos architecto pariatur. Repellendus voluptatem aspernatur quis nihil ut non. Consequatur repudiandae provident et qui voluptatum sit ea. Doloremque suscipit quas quis adipisci non. Velit et qui ea nesciunt.', 'aut', 561370924, NULL, '1996-08-23 09:37:30', '1988-03-19 01:56:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '3', '19', 'Et magni corporis dolorum nulla doloremque consequuntur. Aut fuga ut a ullam et officia. Id modi aut fuga vel sit atque cum.', 'qui', 3985, NULL, '1993-06-20 14:07:15', '1981-07-23 12:26:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '4', '20', 'Ex eos architecto et exercitationem hic ullam. Mollitia unde recusandae necessitatibus ut atque corporis. Est ut dolor provident saepe.', 'ex', 0, NULL, '1986-03-03 13:39:23', '2002-11-14 08:59:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '1', '21', 'Iusto dolores quasi velit id inventore officiis. Quasi neque nihil modi qui enim. Molestiae quis tenetur hic nemo. Voluptates eligendi quisquam dolores qui incidunt veniam quod.', 'architecto', 38017806, NULL, '2010-02-22 19:14:14', '1972-03-09 15:40:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '22', 'Asperiores suscipit dolorum minus numquam. Voluptatem esse odit mollitia in occaecati excepturi. Pariatur et cupiditate fugit dolore.', 'dicta', 88418, NULL, '2021-03-07 23:28:34', '2017-01-30 16:27:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '23', 'Mollitia sunt sed doloribus et. Et laboriosam nesciunt nihil alias. Recusandae impedit vitae consectetur et aut sunt ut.', 'rerum', 0, NULL, '2012-04-23 22:45:12', '1972-06-08 15:38:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '4', '24', 'Atque possimus quisquam qui sit. Eius molestias doloribus cum quasi nemo aut officia. Et distinctio repudiandae voluptatem quis sed explicabo unde ullam. Culpa eos quod dolor placeat explicabo ratione aut.', 'sint', 19525485, NULL, '2015-02-17 03:09:38', '2021-05-25 08:38:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '1', '25', 'Quisquam placeat quo eligendi. Aut ab cupiditate quia esse cum sit assumenda odio. Eos et maxime quisquam molestiae quo et. Et iste quae perspiciatis et optio.', 'sunt', 0, NULL, '2018-09-14 08:51:24', '2010-09-21 22:13:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '2', '26', 'Minus velit omnis maiores. Sint cumque tenetur beatae odio. Et sapiente fugiat magni veniam quos quod vero.', 'debitis', 516506143, NULL, '1998-06-03 20:42:17', '1990-10-07 08:05:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '3', '27', 'Reprehenderit aliquid ratione necessitatibus consequatur officia. Porro placeat expedita assumenda esse. Eos laudantium quia omnis nihil blanditiis. Ut autem amet sit id voluptatem.', 'aperiam', 4395, NULL, '1976-05-27 02:30:50', '2013-01-08 11:16:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '4', '28', 'Rerum dicta vero odit ut. Impedit corporis pariatur quia vitae. Cupiditate consectetur fugit occaecati qui nostrum ipsa voluptas magnam.', 'officia', 150, NULL, '2021-09-06 06:50:03', '1978-08-19 09:31:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '1', '29', 'Molestiae sit impedit dolor voluptatem corrupti in ipsa. Ad possimus molestiae suscipit maiores. Fugit ullam officia pariatur voluptatem. Voluptatem porro suscipit eos quis voluptate error qui.', 'minus', 82717, NULL, '1991-05-11 13:52:13', '2021-08-30 22:26:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '2', '30', 'Quia autem voluptatibus voluptatem tenetur facilis autem consequatur. Culpa cumque hic sunt voluptatum qui ut. Sunt molestias reiciendis quo officia quas saepe culpa.', 'excepturi', 62572, NULL, '2007-05-18 19:53:14', '2001-09-14 05:26:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '3', '31', 'Dolores optio officia dolores debitis. Possimus ipsum aperiam aut. Velit occaecati ex et nesciunt.', 'repudiandae', 6275456, NULL, '1995-01-26 07:30:37', '1976-05-23 03:44:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '4', '32', 'Quia illo ex odit sunt. Voluptas aut quisquam atque esse ut. In ipsum odit temporibus praesentium et. Non qui cum quasi minima maiores dolore labore nesciunt. Id illo maiores aut nisi voluptatem sunt.', 'veniam', 63, NULL, '2004-02-29 18:54:03', '1986-02-14 05:24:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '1', '33', 'Ut ut consequatur aut harum. Dicta libero sequi voluptate consequatur quia sit. Harum deserunt exercitationem suscipit sunt consequuntur et.', 'numquam', 12, NULL, '2014-10-31 12:09:07', '2003-03-12 21:36:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '2', '34', 'Omnis placeat aliquid non deleniti velit. Dolore sequi facere est quisquam dolores ea ut. Et sit deleniti dicta mollitia delectus.', 'eum', 0, NULL, '2018-08-29 05:17:57', '1976-02-05 12:20:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '3', '35', 'Veniam est officia ipsum accusamus. Placeat odio qui odit quasi est accusantium. Ducimus reprehenderit veniam laudantium rerum est quia. Laudantium cumque blanditiis nobis.', 'accusantium', 5, NULL, '2001-05-15 04:42:40', '2020-06-04 00:49:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '4', '36', 'Neque quae nisi autem natus iure. Consectetur vero maiores architecto animi iste error molestiae.', 'repellat', 0, NULL, '1985-02-20 20:57:20', '1984-01-24 16:48:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '1', '37', 'Occaecati occaecati voluptas ut officiis consequatur itaque magni. Nesciunt accusamus vitae qui ea omnis at voluptates. Totam consectetur ducimus ea.', 'soluta', 80364, NULL, '2014-09-25 07:46:18', '2000-08-31 01:45:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '2', '38', 'Et earum veritatis est cumque non illo. Nobis est error et. Porro rem maiores assumenda error. Laboriosam omnis rerum magnam.', 'dolor', 51029474, NULL, '1998-04-22 10:04:16', '1984-06-09 03:48:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '3', '39', 'Quo iste ut numquam quibusdam. Veniam adipisci tempora quo aliquam occaecati. Et perspiciatis incidunt rerum culpa.', 'accusantium', 11905, NULL, '2000-10-28 17:10:56', '1998-07-22 13:01:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '4', '40', 'Saepe totam qui iusto dolores aut. Aut repellat assumenda saepe minima. Quod distinctio iste eum. Aut ullam nemo perferendis ut quisquam.', 'corrupti', 12, NULL, '1992-04-11 22:42:45', '1990-08-23 10:08:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '41', 'Qui est eum omnis non enim esse. Tempora recusandae dicta molestiae iusto. Aut aut molestias accusantium qui deserunt. Et fugit necessitatibus omnis odio reiciendis.', 'architecto', 1, NULL, '2000-05-08 02:08:19', '2011-09-03 17:14:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '2', '42', 'Alias facilis iste quo eius tenetur fuga. Quod a aut blanditiis et.', 'blanditiis', 8599110, NULL, '2002-03-07 09:37:41', '2021-10-21 13:06:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '3', '43', 'Unde nemo quas et. Autem dolores cupiditate rerum nihil perferendis sapiente dolore. Et nihil voluptatem non quo quibusdam aut accusantium.', 'ratione', 467890808, NULL, '1977-02-12 14:54:29', '2003-01-26 10:42:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '4', '44', 'Quisquam voluptatem ratione quidem eaque explicabo. Tenetur aliquid rerum voluptas quas accusantium quia incidunt. Sequi harum enim aut impedit rem aut ipsa. Facilis dolorum sed aut hic voluptatem ex minus eius. Qui quae similique qui qui.', 'assumenda', 2, NULL, '1996-08-19 17:53:57', '1984-12-31 07:30:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '1', '45', 'Tenetur beatae necessitatibus eveniet et voluptatem tempore. Quaerat ipsam atque sit quisquam sed exercitationem. Architecto similique cum repellendus quam natus natus quibusdam.', 'sequi', 40, NULL, '1980-08-24 00:42:30', '2002-05-23 22:33:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '2', '46', 'Quisquam soluta ut rerum ullam explicabo doloribus culpa. Vitae incidunt sit ad sint vel culpa dolorem amet. Et quasi sed velit officiis. Suscipit quibusdam molestiae tempore eligendi libero non.', 'quia', 954752, NULL, '1986-12-19 10:41:45', '2003-02-18 03:52:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '47', 'Enim incidunt illo nesciunt aut culpa corrupti perferendis. Aut iste corporis reiciendis quos. Quaerat rem occaecati quo qui aut. Aut quia aspernatur ut aut eum a labore.', 'quae', 8572234, NULL, '2009-03-17 06:42:40', '1988-10-29 09:54:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '4', '48', 'Tempora id dolorem consequuntur pariatur. Est est illum iure.', 'debitis', 7057191, NULL, '1985-11-21 18:04:08', '2018-04-10 23:13:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '1', '49', 'Dolores est ipsam laboriosam ut. Soluta quaerat aperiam hic ad. Nesciunt sed quas nesciunt magni sit inventore. Natus perferendis quia est enim.', 'sed', 679, NULL, '1988-08-13 00:20:25', '1982-04-22 13:39:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '2', '50', 'Dicta suscipit placeat beatae dolorum. Officiis et minima qui exercitationem. Porro voluptas praesentium quis qui sunt quo. Ut deserunt exercitationem aliquid illum qui incidunt et. Sapiente et rerum aut voluptatibus blanditiis non ullam.', 'consectetur', 42, NULL, '1977-01-18 04:28:37', '1985-12-18 22:25:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '3', '51', 'Autem nostrum id tempore autem eius consequatur explicabo voluptas. Est quod labore a vitae qui aliquid voluptatem. Beatae natus at id earum perferendis minus debitis.', 'quis', 33165896, NULL, '2005-11-24 16:48:57', '1988-06-26 22:11:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '4', '52', 'Aliquam velit et harum fugiat optio. Quod culpa modi ut ipsam sequi minima voluptatum. Omnis corporis aut sint quibusdam id. Ipsa quas id reiciendis ut nam velit.', 'voluptas', 84186, NULL, '1988-04-28 08:12:09', '2013-09-04 07:39:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '1', '53', 'Fuga delectus vel cupiditate numquam corporis modi aut. Quasi consequatur itaque officiis esse eum amet. Tempora temporibus ad laborum unde iure.', 'explicabo', 4, NULL, '1975-12-11 15:56:06', '1972-10-26 06:05:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '54', 'Dolores blanditiis impedit quibusdam commodi fugiat expedita. Ut necessitatibus optio qui perferendis et sunt. Veniam ipsum qui libero est ut. Ipsam rerum vitae earum neque et voluptatem dignissimos. Illo veritatis commodi vel magni.', 'quasi', 7222, NULL, '1982-11-14 18:01:25', '1982-07-15 16:02:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '3', '55', 'Facere qui quis reiciendis ea quia et laboriosam veritatis. Sint voluptas ut velit et. Nemo ut laborum dolorem distinctio. Cumque unde debitis quasi reprehenderit.', 'tempora', 9485774, NULL, '1994-10-02 21:01:52', '2021-02-14 22:33:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '4', '56', 'Dolor voluptatem porro vitae rerum. Quasi est odio sit et temporibus. Atque sunt commodi fugit voluptas.', 'optio', 8, NULL, '1983-12-27 12:12:04', '2006-10-09 19:20:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '1', '57', 'Sunt architecto cum odio amet ipsum. Maxime est ut atque possimus necessitatibus quos aperiam. Id nesciunt commodi velit dolorem sapiente.', 'perspiciatis', 8679, NULL, '2010-12-12 12:58:13', '2000-10-23 22:46:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '2', '58', 'Omnis et maxime fugiat illo molestiae et quia qui. Corrupti sequi non quae praesentium. Reprehenderit ipsam expedita nobis eum distinctio corrupti qui. Qui deleniti nulla cumque illum dignissimos.', 'consequatur', 40035293, NULL, '1979-09-06 11:56:58', '1997-01-08 05:05:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '3', '59', 'Sint sunt libero voluptatem nihil pariatur tempore nemo. Sint qui dignissimos similique modi possimus aut. Consequatur est numquam earum a corrupti enim non.', 'animi', 7413161, NULL, '1988-09-23 15:21:47', '2003-11-18 05:55:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '4', '60', 'Qui facilis quos et voluptate accusantium exercitationem. Ad occaecati nostrum fugit rerum iure corrupti saepe. Sit placeat incidunt minima totam. Quas mollitia neque eaque maiores ratione ad modi.', 'odit', 34362161, NULL, '1989-12-06 03:18:20', '1980-04-19 17:37:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '61', 'Recusandae temporibus at recusandae velit harum eos. Eligendi et qui sunt at quia.', 'commodi', 0, NULL, '2011-09-09 12:31:55', '1986-08-18 14:50:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '62', 'Doloremque sunt nihil molestiae rem dolorem expedita ut. Natus quam non harum enim est. Voluptas enim nulla qui velit. Minima a qui quasi sit non itaque.', 'non', 214451, NULL, '1976-01-28 01:02:57', '2008-08-25 17:16:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '3', '63', 'Atque ullam voluptatem nostrum impedit id minima soluta. Ut nam qui non quibusdam. Ut sunt cum dolorem doloremque veritatis. Qui ut id voluptatibus voluptas sed.', 'natus', 33, NULL, '2001-09-05 22:46:41', '1990-08-18 18:13:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '4', '64', 'Molestias eum reiciendis similique magnam tempore. Tempora vero ab rerum fuga amet velit aut. Ratione vel recusandae eum voluptatem quibusdam voluptas quae.', 'voluptatem', 72257983, NULL, '1991-06-12 10:43:52', '2005-11-12 13:19:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '1', '65', 'Velit debitis nemo sit voluptas aut eum ut optio. Alias ut aut enim sed accusantium. Soluta nihil voluptas et repudiandae est qui.', 'dolore', 89, NULL, '2000-09-05 23:39:36', '1992-03-30 01:54:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '2', '66', 'Illum nesciunt minus possimus consequatur aut laudantium. Dolores voluptas deleniti veritatis culpa perferendis modi. Debitis iure et corporis maiores blanditiis porro hic. Qui quibusdam occaecati cupiditate est nesciunt voluptatem.', 'consectetur', 145969192, NULL, '2004-05-15 20:54:12', '1994-11-27 17:26:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '3', '67', 'Aliquam modi aliquid officiis aliquam autem. Ut aut fuga consequuntur ut odit voluptate assumenda ut. Ut voluptates ducimus fugit magnam voluptate et aspernatur saepe. Praesentium quo quisquam illo eaque fugiat aperiam amet.', 'placeat', 696, NULL, '2019-03-01 22:50:45', '1977-04-09 04:52:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '4', '68', 'Voluptate omnis deserunt exercitationem temporibus. Voluptas repellendus omnis amet et eaque ipsa voluptas. Dolore aliquid perferendis illo non provident aliquam ratione molestiae. Quidem ducimus in soluta est cumque.', 'tempore', 41, NULL, '1971-01-05 00:16:29', '2007-12-25 21:05:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '1', '69', 'Repudiandae ab harum corporis porro quas et. Distinctio pariatur nesciunt quo vitae omnis voluptatum. Ipsum facilis voluptate ea minima porro.', 'asperiores', 14482007, NULL, '2019-02-09 05:32:13', '2006-12-02 00:07:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '2', '70', 'Illo qui fuga veritatis ut doloribus. Totam error voluptatem at modi. Eos omnis esse rerum quam molestiae sed modi id. Nisi recusandae officia nam nam non autem.', 'aliquam', 4, NULL, '1986-06-12 14:21:29', '2007-04-12 10:45:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '3', '71', 'Et praesentium rerum sint veritatis quo error alias. Excepturi commodi explicabo repellendus ab. Laboriosam quasi odit aut facilis sed doloribus. Voluptatem consectetur laboriosam quaerat accusamus ut totam aut.', 'at', 68, NULL, '2009-04-10 08:50:04', '2018-11-29 01:46:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '4', '72', 'Vel quaerat quis et cupiditate adipisci quasi. Est quis ut rem nam quisquam veniam dolore est. Non natus provident pariatur facere. Sit dignissimos praesentium laborum iste dolorem accusantium.', 'ipsum', 4242, NULL, '2002-03-10 17:52:19', '1972-04-11 17:05:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '1', '73', 'Laboriosam voluptas illum maiores est nesciunt laborum. Optio ullam minus fugiat ipsa veritatis necessitatibus. Sit sequi at voluptate molestiae quis ipsa dolores. Ut vel est veritatis voluptas.', 'est', 9893748, NULL, '1991-03-18 18:29:33', '2021-05-15 06:44:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '2', '74', 'Quis et consequuntur fuga architecto dolor suscipit sequi. In aliquam quia et assumenda quia explicabo. Sit sunt repellat ratione perferendis. Perspiciatis optio eos ipsa rerum dignissimos.', 'ullam', 0, NULL, '1985-06-01 21:13:14', '1993-09-18 12:39:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '3', '75', 'Ea quos maxime perspiciatis voluptatem eius. Exercitationem nihil et odio cum explicabo vitae. In assumenda rerum natus nesciunt corporis voluptatem.', 'fuga', 6, NULL, '2009-03-16 11:03:35', '2013-08-24 02:23:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '4', '76', 'Provident est iure molestiae sunt. At recusandae totam sapiente at unde. Quo magnam ratione minus. Qui aperiam quo recusandae perspiciatis qui eveniet non doloribus.', 'nesciunt', 457, NULL, '2006-04-05 08:24:26', '2022-10-20 17:55:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '77', 'Dolores molestiae quia harum eos consectetur ipsam. Doloribus quae dolor vitae illum saepe. Dolorem reprehenderit et quisquam nemo. In totam aut voluptatem quod deleniti debitis recusandae.', 'eveniet', 847369839, NULL, '1987-12-23 22:03:43', '1997-04-06 01:36:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '2', '78', 'Sunt voluptas tempore perferendis velit deleniti numquam assumenda enim. Cumque deleniti neque autem sapiente eum officia molestiae cum. Ullam illum explicabo necessitatibus.', 'minima', 6, NULL, '1991-01-24 07:55:19', '2012-11-13 16:37:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '3', '79', 'Doloribus laudantium facilis repellat facere. Pariatur ut est rerum quibusdam ducimus eum accusantium et. Sed doloribus expedita aut id explicabo qui vel.', 'rem', 1, NULL, '2015-04-15 16:50:57', '1981-09-11 05:44:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '4', '80', 'Ea consequatur distinctio ut. Libero inventore a iusto possimus. Aliquid minus quas ut sint autem. Voluptatum autem sit praesentium. Voluptatem veniam fugiat quam sed et ut voluptas.', 'voluptate', 995111797, NULL, '2017-10-16 07:35:01', '2019-09-01 15:37:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '81', 'Eligendi sit rerum eaque sapiente tenetur est sed soluta. Dolores officiis minima sit vitae omnis illo dolorem illum. Et quidem dolore facilis. Repellat tenetur occaecati quos nisi rerum magnam. Aliquam quisquam velit harum.', 'dicta', 8, NULL, '1998-06-22 09:34:24', '2007-04-13 17:17:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '82', 'Accusamus maxime a architecto nihil aut voluptas. Tempora iure qui praesentium ipsam rerum. Qui rerum qui blanditiis quae voluptatibus porro molestias repudiandae. Tempora alias et rem asperiores sint molestiae.', 'aperiam', 0, NULL, '1999-09-19 08:32:38', '2016-08-01 08:18:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '3', '83', 'Sequi autem at et qui ut. Facilis fuga qui neque et quos. Ullam eligendi id nesciunt minima qui illo perspiciatis sequi. Cumque in consequuntur atque recusandae delectus iure et.', 'eligendi', 50, NULL, '1998-11-26 04:57:35', '1985-08-11 08:07:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '84', 'Natus velit alias dolores. Doloremque aut debitis maxime voluptatem non unde. Omnis architecto labore a voluptas.', 'iste', 34955886, NULL, '1978-10-23 11:43:59', '1983-03-01 18:34:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '1', '85', 'Et consequatur qui dicta architecto. Dolorem non nostrum alias sed. Dicta et tempore quam dolores id esse non aspernatur.', 'illo', 49327, NULL, '2007-03-16 09:46:53', '1995-08-09 18:35:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '2', '86', 'Tempora eaque nobis asperiores provident molestiae minima. Debitis expedita reiciendis qui velit laboriosam. Eligendi ut non molestias id unde porro officia. Ex est quam quia.', 'fuga', 751785, NULL, '1997-11-24 09:13:48', '2002-06-10 17:02:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '3', '87', 'Temporibus iste consequuntur iusto libero doloremque maxime. Soluta ducimus consequuntur est voluptates. Officiis est autem nisi et fugit voluptates.', 'saepe', 8433, NULL, '2007-03-27 16:24:47', '1982-12-30 04:17:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '4', '88', 'Perspiciatis expedita officia aut voluptas enim magnam. Quibusdam non necessitatibus hic alias et tempore distinctio. Aut unde alias debitis.', 'ab', 67217769, NULL, '1992-08-05 06:38:55', '1991-03-01 12:28:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '1', '89', 'Praesentium ullam deserunt recusandae et autem dolorum id ducimus. Numquam ut labore est velit. Nulla reiciendis pariatur voluptas odit laudantium est deserunt.', 'odit', 0, NULL, '2006-06-17 04:42:29', '2000-06-16 02:51:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '2', '90', 'Dignissimos velit odio libero. Sint sed consequatur sit reprehenderit. Dolore quisquam fugiat vitae magni.', 'eum', 56748, NULL, '2002-07-19 22:15:21', '2000-08-17 22:30:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '3', '91', 'Quos repellendus illo quo et similique dolor. Adipisci sit hic omnis fugit ut officia sint repellat. Aut error debitis sit tempora eveniet minima eos.', 'rerum', 65, NULL, '2016-09-30 07:26:10', '2009-09-05 04:53:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '4', '92', 'Minima sunt velit vitae voluptas rerum necessitatibus. Corporis optio accusantium omnis vel maxime. Ducimus explicabo libero nostrum qui. Rerum non dolore sunt consequatur.', 'quam', 885833, NULL, '1987-05-02 13:37:04', '1988-12-05 11:02:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '1', '93', 'A cumque accusantium molestiae laboriosam eaque. Et temporibus distinctio excepturi itaque voluptatem voluptatem fugit vero. Ut recusandae ratione esse ipsam quaerat aliquid sint. Sed et nemo et.', 'facilis', 194454792, NULL, '2012-07-17 16:16:56', '1983-01-02 06:33:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '2', '94', 'Pariatur et odit voluptas mollitia molestiae. Quis nam nam natus nulla inventore. Illum culpa sunt voluptatem dolores totam enim error.', 'unde', 5057, NULL, '2021-01-17 09:18:31', '1986-07-04 01:50:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '3', '95', 'Consectetur vitae quod optio est accusamus soluta et nisi. Vitae nostrum qui dicta et quidem sit. Sunt magni nihil esse est illo eum.', 'ipsum', 0, NULL, '2022-04-06 02:00:45', '1973-01-24 16:17:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '4', '96', 'Voluptatem eum voluptatem nobis ut hic iure nam. Ut libero et dolore architecto. Animi rerum voluptatem ut.', 'et', 137039, NULL, '2003-06-16 08:36:29', '2015-10-21 19:50:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '1', '97', 'Veritatis odio id dolorum accusantium. Corporis hic sunt consectetur quaerat consectetur aut.', 'non', 225051, NULL, '1972-07-24 22:24:56', '1987-09-26 09:20:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '2', '98', 'Velit suscipit et consequatur ab eos quia eum. Omnis laudantium quis corrupti porro assumenda magnam dolor sunt. Ut pariatur architecto voluptatem iure. Ipsa quibusdam aut blanditiis quis libero officiis iusto nisi.', 'occaecati', 0, NULL, '1998-08-26 03:25:45', '1997-03-25 15:20:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '3', '99', 'Dolor ut quo officia fugiat. Ea eaque id nobis placeat harum officiis quis. Quasi maiores et quos non eos ad. Pariatur eligendi hic iste velit voluptatem.', 'ipsa', 362, NULL, '2022-07-26 23:18:02', '1995-08-27 07:44:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '4', '100', 'Qui et quia dignissimos. Nam soluta ex veritatis ratione reiciendis ab asperiores. Distinctio est magni vitae aut.', 'sequi', 7196, NULL, '2016-07-09 15:25:17', '2003-03-06 10:46:55');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'possimus', '2015-08-25 16:03:52', '1977-06-11 13:22:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'optio', '2017-08-17 23:23:22', '1990-10-07 11:56:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'voluptatibus', '1989-12-23 17:28:46', '2022-02-15 05:49:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'magnam', '2010-12-03 18:48:23', '2002-07-26 21:18:36');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '34', '91', 'Debitis rerum omnis sed. Ipsam eos optio exercitationem consequatur aut. Molestiae eligendi qui cum eum quam labore voluptatem laboriosam. Incidunt pariatur est quidem rerum modi non.', '1997-04-15 04:02:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '25', '62', 'Unde sapiente ut eos est nihil. Similique laudantium quas fuga est laudantium. Voluptas ea est non ea dolorem voluptatem veritatis. Dignissimos sed omnis non molestiae.', '1984-09-20 15:41:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '91', '87', 'Ducimus recusandae amet facere et vel incidunt aut voluptatem. Et nostrum odit praesentium. Rerum aut similique a laboriosam temporibus.', '1995-11-25 01:47:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '84', '93', 'Facere repellat fugiat unde. Nobis fuga qui eos ut dignissimos maiores nulla commodi. Unde molestiae placeat voluptas distinctio aut necessitatibus. Minus fugiat ad velit.', '1979-03-25 09:56:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '36', '32', 'Perferendis nulla aut numquam. Quidem voluptatem omnis culpa vel illo error blanditiis ducimus. Quidem perferendis eum explicabo qui aut.', '2001-01-19 05:21:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '82', '51', 'Sed autem modi et aut. Voluptatem numquam praesentium quaerat deserunt et nobis.', '1971-08-22 18:13:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '99', '57', 'Quo qui dolorem saepe inventore enim asperiores. Delectus sed rem quos maiores dicta. Quos id eius asperiores voluptatum rem est rerum. Provident rem laborum nihil aspernatur atque exercitationem.', '1975-05-26 08:59:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '14', '77', 'Neque totam debitis possimus nihil laboriosam ipsa eos labore. Aut quibusdam nesciunt eligendi necessitatibus. Veniam ex velit facilis quo assumenda eos.', '2021-11-15 05:47:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '86', '68', 'Velit iste aspernatur vero quam culpa quia tempora. Non et et sed id. Iusto consequuntur nihil nesciunt et. Est fuga officia eligendi ab rerum consectetur. Voluptatem nobis ab voluptatibus quis natus sit praesentium.', '1979-02-20 17:18:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '84', '29', 'Accusamus neque ut officia non dolor. Assumenda dolores qui velit neque eaque ut aspernatur consequuntur. Eos a ratione tempora deleniti beatae. Voluptatem est quis sequi nisi rerum nemo.', '1998-09-29 00:14:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '61', '3', 'Ad alias facere assumenda exercitationem et aliquid asperiores exercitationem. Rerum ut expedita est ex. A atque tempore eum voluptatem perferendis voluptas perferendis reprehenderit. Doloribus cumque rerum magnam ad et adipisci hic sit.', '1977-12-19 19:17:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '33', '66', 'Sit cupiditate voluptatum eos nemo qui voluptas. Illo omnis fugiat placeat temporibus blanditiis mollitia et. Consequatur beatae repellendus nostrum provident rerum ad. Harum mollitia dolor sunt odit id velit.', '1986-08-21 09:31:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '88', '9', 'Est velit totam quod accusamus magnam minima cumque. Fugiat nesciunt voluptatem doloremque ipsum dolorem. Culpa vitae fugit enim corrupti voluptate temporibus temporibus.', '1977-07-24 12:22:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '46', '34', 'Rerum illum est maxime nulla. Sed reprehenderit et eos. Animi est optio et quibusdam veritatis et quam quas. Non maiores consequatur illo velit officiis molestiae ut.', '1981-03-06 02:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '95', '37', 'Dolorem provident pariatur et a rem. Occaecati ducimus magni incidunt. Et libero quia ipsum inventore. Atque facilis sed suscipit dicta aut vel.', '2021-10-07 14:08:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '13', '67', 'Soluta soluta nam rerum facere id minima totam. Unde temporibus quas inventore voluptatibus laboriosam. Consequatur dolores maiores facilis aspernatur quos iste aliquam. Voluptas fuga sed quod cumque consequatur quis. Voluptatibus soluta in eos tenetur asperiores ex voluptatem.', '2010-04-21 01:21:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '56', '52', 'Nobis ea nulla inventore magni unde placeat quis. Minus perferendis sit deserunt autem rerum voluptatem veritatis laborum. Qui distinctio numquam ducimus molestiae sunt nesciunt. Non est harum soluta voluptatibus qui.', '1970-06-21 20:12:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '94', '2', 'Ab distinctio dolorem rem vero. Nobis nemo in nam dolor. Mollitia nihil porro ea.', '1996-05-11 03:01:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '40', '62', 'Dolore qui quia est tempora eveniet sapiente debitis sint. Qui eaque blanditiis autem minima corrupti sunt dolor. Aut reprehenderit est sunt est. Explicabo praesentium temporibus aliquam non alias fugiat.', '1996-11-29 17:52:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '15', '47', 'Mollitia et odit alias dignissimos amet. Ducimus hic repudiandae dolorem deleniti. Distinctio in fuga tenetur iste et assumenda soluta iusto. Voluptatem similique exercitationem ipsa possimus molestiae.', '1974-01-27 02:27:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '24', '36', 'Eos veritatis quaerat perspiciatis repellat ad omnis. Voluptatum minima non dolore est adipisci voluptatem rem ullam. Voluptas voluptatibus dicta possimus cum ut quo magnam qui. Explicabo quo hic suscipit optio. Incidunt consectetur porro qui.', '2002-04-06 07:16:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '18', '41', 'Et sed error quam ex. Et et facere repellat ut libero. Vel voluptatem aut autem aut voluptas aut. Esse voluptatem dicta accusantium sequi eligendi.', '1976-03-09 03:10:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '30', '66', 'Animi qui aperiam praesentium reiciendis. Non iure adipisci provident ut delectus. Fugit vel atque rerum quo.', '1970-04-22 01:59:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '35', '85', 'Maxime nihil voluptatem quia perspiciatis. Ut fugit et in reprehenderit. Nesciunt tempore vero repudiandae et.', '2006-10-24 06:19:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '78', '13', 'Accusamus non dolorem alias omnis. Et omnis aliquam mollitia labore ratione enim qui. Voluptate accusantium sequi assumenda ut harum veniam. Sed blanditiis optio qui adipisci temporibus quia autem aut.', '1984-02-15 21:13:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '80', '24', 'Mollitia similique cupiditate perspiciatis rerum similique. Quos mollitia maxime quia vel enim nemo est. Deserunt ducimus aut eum est corporis vel perferendis. Consequatur enim repellendus dolore cum.', '1971-11-19 12:55:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '14', '56', 'Dolorem voluptas voluptatibus excepturi non sint aspernatur reiciendis. Asperiores veritatis consequatur sit voluptates. Autem laborum explicabo voluptas quam sunt doloribus unde.', '2006-12-24 10:25:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '22', '9', 'Aliquam et voluptatibus nostrum eum laudantium quia ad impedit. Aut voluptatum quam debitis ut voluptates neque.', '2007-09-12 14:17:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '97', '83', 'Dolorem dolorem repudiandae voluptate fuga praesentium expedita. Est soluta expedita qui harum ea inventore doloremque ducimus. Accusamus omnis quis natus nulla necessitatibus sint.', '1973-08-24 21:08:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '95', '69', 'Est nihil et id odio. Deserunt quos atque molestias labore dolores ea deleniti distinctio. Voluptate eaque natus commodi dolorum consectetur. Dolorem vitae sint alias incidunt unde voluptas.', '1997-05-04 01:17:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '27', '34', 'Iusto amet ut et sunt facere et mollitia. Et sunt architecto voluptatem assumenda enim minus distinctio impedit. Iste aliquam numquam aut cum possimus voluptates.', '1973-04-10 18:08:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '28', '51', 'Animi sapiente aut ratione quo ipsa. Fuga dolores qui eligendi et beatae nisi tempora. Sit ea et aut. Tempore repellat ut voluptas consequatur. Possimus fuga illo et vitae eligendi quas sed consequatur.', '1980-12-28 13:14:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '27', '10', 'Facilis ipsa rem qui sed. Sed ea dolore cumque enim quas voluptatem. Earum iusto expedita cum recusandae sapiente dolorem harum.', '2008-06-03 11:08:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '86', '17', 'Itaque doloribus adipisci sunt enim quia molestiae. Perferendis omnis similique dolorem odio praesentium aut. Quae fugiat expedita aut similique aut nesciunt sapiente. Natus et voluptatibus eligendi incidunt.', '1981-04-14 20:58:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '62', '18', 'Est vel non ut aliquam nam quo. Corporis eligendi ut nisi ut aliquam consequatur.', '1978-02-03 08:46:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '96', '28', 'Enim omnis aspernatur accusantium expedita libero in dolorum. Praesentium molestias voluptatum odio placeat non. Voluptates exercitationem dolor aperiam commodi.', '1980-07-05 19:10:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '50', '68', 'Quia ut doloribus labore. Ut voluptas animi debitis dolor unde inventore fugiat. Quaerat sunt enim sapiente id ipsum. Voluptates amet sunt ut magnam.', '1998-11-15 20:51:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '96', '57', 'Doloremque placeat qui quidem quae et officia pariatur dolores. Exercitationem sunt fugit eveniet corporis officiis. Cupiditate perferendis et minus eos. Dolorum quia nisi minus.', '1988-04-28 07:19:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '6', '28', 'In repellat occaecati consequatur. Est cum temporibus fugit impedit facilis ut. Optio suscipit et pariatur.', '2001-11-05 17:09:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '93', '48', 'Tempore dignissimos aliquam ut quibusdam non. Iusto vel praesentium sed iure. Impedit fugit pariatur voluptates est dicta.', '1993-06-07 22:12:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '90', '66', 'Tenetur quia cum similique qui praesentium. Unde quia et illum iusto ut atque ullam.', '1982-10-03 10:39:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '84', '64', 'Ipsa est architecto sed cupiditate omnis quia eos ipsa. Nemo ullam non qui quo mollitia. Blanditiis doloremque velit et omnis veritatis. Quod odit quas expedita.', '2009-07-16 06:38:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '28', '51', 'Iusto ut natus quia. Omnis pariatur voluptatem voluptas quis nobis similique dolor. Et et nesciunt dolor est. Architecto suscipit illum magnam sunt beatae amet omnis.', '1983-11-27 21:18:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '68', '18', 'Unde culpa tempora reiciendis eum perferendis. Sit ducimus autem cum velit dolor voluptas distinctio. Nostrum unde non qui expedita aut non. Ea iure esse eaque quisquam illo veniam veniam.', '1979-11-20 04:31:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '16', '42', 'Ut quis fugiat alias adipisci. Ut facere sed omnis nobis numquam repellendus sunt natus. Est qui et nobis optio.', '1995-07-30 02:52:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '89', '90', 'Eaque molestiae sint nihil consequatur ut atque. Neque repellat praesentium eaque sapiente sequi consequatur vel. Molestias voluptas dolorum id deleniti. Nobis aut consequatur distinctio eum.', '2022-03-07 22:11:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '75', '95', 'Blanditiis numquam nulla repellat cum nam. Tenetur quibusdam nostrum omnis dicta hic aperiam voluptate. Vitae placeat aut qui vel. Voluptatem et reprehenderit quos unde.', '2007-11-20 22:18:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '62', '66', 'Veritatis a maxime assumenda quis eum quae. Reprehenderit recusandae et reiciendis aut. Et iure blanditiis eius vel.', '1970-04-16 14:39:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '89', '10', 'Autem esse vitae eaque molestias perferendis totam. Expedita iusto recusandae consequatur in culpa totam.', '2007-11-04 02:45:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '95', '3', 'Itaque qui ut eum quidem in. Est alias voluptatum iusto non. Autem ut adipisci aperiam eaque hic. Similique eligendi officia consequuntur ad voluptate voluptatem. Soluta est sit dolorem alias suscipit qui.', '2011-07-08 07:37:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '69', '68', 'Velit velit odio delectus voluptates necessitatibus non officia. Fugiat quia ut sed et deserunt aut. Rerum accusamus aspernatur vitae quae sed accusamus odit.', '1985-05-08 15:18:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '88', '92', 'Et illum totam dolor quas quas non facilis assumenda. Voluptates suscipit in consectetur ullam. Neque dolor nam voluptas dolore. Optio occaecati voluptas alias.', '2002-07-28 01:23:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '99', '50', 'Voluptates omnis est excepturi quod nesciunt et dicta. Nihil voluptatem voluptatibus consequuntur cupiditate autem minima velit. Quia dicta rem ea vero eos voluptas.', '1990-02-20 22:36:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '71', '7', 'Sequi quasi non repellat. Quibusdam reiciendis praesentium culpa ea maxime rerum reiciendis. Consequatur odio at enim incidunt quam voluptatem provident.', '1984-07-24 11:35:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '5', '73', 'Recusandae rerum nobis doloribus omnis harum. Autem corporis quia sequi eum aut eos. Quibusdam quasi minima unde temporibus cum. Deleniti nobis impedit vel molestias ut facilis quia vel.', '2020-07-20 09:02:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '83', '2', 'Rem harum voluptate vel sint et sint dolorem. Laudantium error iure libero corrupti id similique fugiat. Consequuntur repellendus occaecati non voluptatem velit. Ut ut non et.', '1993-12-29 10:57:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '98', '15', 'Modi in doloremque omnis quasi quisquam. Voluptas cupiditate consequuntur similique enim. Et aut soluta assumenda molestiae dolores magnam sequi. Nulla est inventore ipsam autem nam autem perferendis qui.', '1977-04-12 04:21:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '68', '32', 'Ut sunt et soluta corporis culpa nesciunt. Et praesentium eum est autem quasi velit autem. Et dolorem aut est sunt velit.', '2012-05-08 09:15:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '28', '44', 'Quis asperiores qui repellat. Et reprehenderit ad sunt illum. Expedita sed odio est illo sint nobis. Ipsa et eos sunt et.', '1984-12-10 02:13:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '65', '9', 'Magnam quasi incidunt ut sunt ducimus voluptatum dolorem. Amet eveniet voluptate vel voluptate et veniam. Aut voluptatem nisi doloribus at et. Ipsum tempora et animi est et sunt rerum qui.', '1973-05-11 19:29:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '3', '15', 'Neque voluptas maiores sit quae et vel. Rerum autem laudantium natus. Qui est et expedita repellat.', '1991-01-01 18:58:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '45', '39', 'Velit iste porro eum magni cupiditate voluptatem voluptas tenetur. Similique sapiente a facilis ad voluptatem doloremque. Vel ipsum ducimus amet omnis soluta. Id aliquam cumque sit inventore dignissimos quo.', '2005-02-14 04:18:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '6', '48', 'Voluptatem soluta assumenda inventore minus. A ea beatae aut eum eos earum aliquam. Et veritatis aut repellat rem ea dolorem. Sed alias natus temporibus expedita laborum accusamus numquam.', '1990-09-22 01:15:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '25', '69', 'Voluptatem sed minima est facere. Velit eum quis dolores aliquid porro quia. Rerum dolorem esse dolore sint repudiandae ut architecto. Autem qui tempore est aut facere odio aliquam.', '1995-02-11 05:04:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '91', '67', 'Est unde in facere omnis quo pariatur. Dolores nihil consequatur doloribus. Molestias maxime neque repellat.', '1982-02-03 02:05:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '52', '22', 'Sit vel iste repellat repellendus atque. Autem magnam et reiciendis omnis voluptas odio est. Enim eveniet aspernatur qui qui.', '1999-08-01 01:28:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '23', '67', 'In quaerat minima qui deserunt laborum. Ut earum tempora placeat et dolores. Enim illo minima praesentium consequatur quod eos quidem. Ipsam eaque aut illo omnis vel quia. Repellendus corporis quae eligendi nihil voluptas cum.', '1989-06-11 11:28:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '94', '21', 'Vel autem maiores dolores harum voluptas. Saepe qui molestias qui. Ut distinctio dolorem quis aut autem occaecati animi.', '1973-02-26 23:45:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '40', '34', 'Odio aspernatur iusto quia assumenda mollitia. Magnam optio laboriosam est asperiores minus. Ab aut omnis nemo officiis sed odio.', '1983-02-22 12:07:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '72', '82', 'Repudiandae sint cum et dolore sint ea cumque. Molestiae maxime sapiente minus dolorum quo. Facilis veritatis explicabo neque minima.', '1977-09-26 03:42:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '40', '57', 'Ut dicta rerum error vero. Nostrum libero reiciendis quis nesciunt unde nihil.', '2015-10-04 11:36:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '73', '47', 'Vitae cum nobis voluptatem voluptatem laudantium nisi aspernatur. Explicabo non corporis modi rerum natus molestiae quaerat. Aut in ut sint temporibus excepturi aut. Maiores est magnam ducimus delectus vel illo eveniet.', '2013-09-30 22:30:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '49', '53', 'Iusto est quis qui nesciunt eveniet. Fugit commodi sint minus consequatur non maxime ex. Nostrum modi ullam debitis rerum aspernatur eveniet magni.', '1989-02-28 21:54:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '68', '71', 'Consequatur delectus dolorum magnam. Iste aut maiores earum animi nemo provident voluptas. Recusandae fugit molestiae odit veniam aut rerum est. Voluptates quia iusto velit porro corporis amet.', '1995-04-25 08:28:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '38', '97', 'Et eos qui aut omnis. Odit aut et dolor fuga ratione magnam nihil. Molestiae aut impedit hic voluptatum consequatur. Eligendi aliquid id ipsa consequuntur exercitationem magni autem culpa. Sapiente voluptatem mollitia hic error sit consequuntur.', '2012-04-05 00:16:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '95', '56', 'Consectetur occaecati accusamus placeat earum suscipit est. Id sed cupiditate minus ab. In quos placeat rerum rerum doloremque ut aut.', '1999-03-10 15:54:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '91', '7', 'Labore voluptas sit dolorum vel et consequatur laboriosam. Est excepturi velit accusamus perferendis repudiandae est. Quaerat perferendis dolores eaque velit qui.', '2001-02-12 10:33:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '12', '43', 'Eaque exercitationem qui iusto voluptatum sed. Nobis praesentium iusto alias accusamus rerum. Id eum aut dolor esse.', '1980-03-20 22:07:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '64', '70', 'Voluptas et aut animi. Et placeat ipsum itaque porro. Veritatis nisi labore beatae qui est aut. Omnis ipsa totam voluptatem debitis.', '1992-08-30 21:54:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '92', '13', 'Omnis cum delectus et fuga est exercitationem aut. Animi qui qui facilis minus quae ipsum dolores. Esse ipsa nihil expedita quam et sed laboriosam debitis.', '2008-04-26 18:16:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '39', '5', 'Voluptas amet animi blanditiis perferendis. Qui est officiis vero eius sunt. Fuga quas ad deserunt.', '1998-10-24 10:49:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '29', '93', 'Tenetur consectetur voluptates nihil nostrum. Omnis nobis sequi voluptas consectetur dolor natus. Quasi sed perspiciatis minus commodi eveniet. Qui facere quo minima ex.', '2018-08-07 11:55:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '45', '92', 'Nesciunt et et eum sequi tempore est eum qui. Labore vitae inventore inventore assumenda officiis et. Adipisci laboriosam corporis aut repellendus asperiores. Tenetur et error quo ducimus.', '2003-09-02 23:56:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '75', '25', 'Molestiae quod aut error vero aut quam. Sit nulla distinctio tempore veniam nam aut. Rem at officiis in nulla.', '1973-08-24 11:45:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '5', '99', 'Sequi optio aut exercitationem velit cum quo. Ex laborum earum aut error explicabo provident. Nihil voluptate optio pariatur. Porro quasi officia aut.', '2008-06-11 21:01:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '2', '10', 'Itaque animi similique perspiciatis ad totam dolorem qui minima. Nisi expedita beatae autem quisquam.', '1989-12-28 18:37:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '6', '3', 'Voluptate ipsa autem autem quas. Mollitia aut nam eius quaerat totam voluptatem. Atque nobis doloremque saepe nostrum quo. Quo non pariatur eum dolorum molestiae vero quibusdam.', '1994-01-20 04:54:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '36', '65', 'Repudiandae ad aut repellendus sunt distinctio veniam dolor. Id sapiente provident dolore omnis dolorum nam. Corrupti quod harum sit vitae facilis impedit officia.', '2013-05-31 17:23:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '32', '83', 'Voluptatum qui laboriosam dolorem consectetur. Architecto consequatur aspernatur tempora sequi fugit. Quo vero id quod voluptates.', '2009-03-16 11:30:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '89', '51', 'Aut est ipsa eos voluptatem qui. Ut non eos nihil sed nostrum magni cum. Qui qui magni ipsum. Rerum atque molestiae pariatur vel.', '1976-05-09 10:40:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '15', '10', 'Suscipit tempora odit odio earum ut. Omnis animi repudiandae dolor nemo ipsum. Cum in at vero doloribus illum eligendi voluptas. Incidunt culpa dolores ipsum quia voluptatem.', '1973-06-13 11:19:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '93', '32', 'Sed porro aspernatur laudantium veritatis. Voluptatem nam consequatur reprehenderit blanditiis similique nesciunt officiis. Harum distinctio dolor omnis ut.', '2015-07-14 12:08:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '13', '99', 'Ea omnis excepturi delectus ad autem quaerat. Culpa cupiditate architecto est quam. Officia vel ex inventore. Dolores explicabo eos ut eum et.', '1987-07-16 21:00:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '13', '19', 'Nostrum perferendis placeat autem culpa beatae est. Aut ut porro itaque porro necessitatibus. Sunt esse qui voluptatem. Et et aut aut minus qui velit dicta. Nihil possimus nemo dolor.', '1994-12-30 13:56:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '61', '73', 'Quos consequatur temporibus voluptate est reiciendis et saepe veniam. Quia quia modi nobis qui in totam impedit. Velit eligendi aperiam consequuntur quis corporis autem.', '2008-03-04 01:44:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '14', '19', 'Ut voluptas mollitia ipsa rerum quidem nostrum ut. Tempora quia tenetur pariatur placeat deleniti ut consequatur. Et similique ducimus at est omnis.', '1974-11-24 23:00:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '75', '56', 'Aut qui et sit dolor excepturi. At nihil natus et rerum magni.', '1996-02-24 14:48:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '86', '67', 'Quibusdam et pariatur quia consequatur quasi incidunt. Quia libero nobis perferendis dolores vel quia qui eveniet. Enim et similique ipsum ab est ratione quae. Ut maxime porro ea ut quis id facilis est.', '2002-03-09 20:57:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '2', '69', 'Necessitatibus cupiditate totam sed aut aut labore. Amet quod adipisci consequatur cum iste quia.', '2000-08-09 17:17:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '40', '90', 'Officiis magnam tempora provident sit rerum amet. Cupiditate reprehenderit error optio unde. Ab rem consectetur nihil cum ipsam.', '2016-03-16 01:40:51');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'voluptas', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'ea', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'placeat', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'voluptas', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'enim', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'repellat', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'debitis', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'ex', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'mollitia', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'et', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'voluptas', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'aperiam', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'vero', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'perferendis', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'quidem', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'mollitia', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'quos', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'eaque', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'sapiente', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'et', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'excepturi', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'occaecati', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'labore', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'nihil', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'dicta', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'consequatur', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'magni', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'qui', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'ea', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'ea', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'recusandae', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'et', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'quibusdam', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'optio', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'id', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'aperiam', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'sapiente', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'et', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'at', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'dolorum', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'impedit', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'magnam', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'aut', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'dignissimos', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'aut', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'quam', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'molestias', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'ab', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'quia', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'dolorum', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'voluptas', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'debitis', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'nam', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'minima', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'quis', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'beatae', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'officia', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'maiores', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'non', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'dolor', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'voluptatem', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'aliquam', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'veritatis', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'est', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'quas', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'incidunt', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'animi', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'saepe', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'maxime', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'sint', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'ut', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'expedita', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'repudiandae', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'et', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'aspernatur', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'aliquam', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'odit', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'culpa', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'qui', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'aut', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'fuga', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'quos', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'non', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'ipsa', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'eveniet', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'voluptatum', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'repudiandae', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'id', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'aut', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'totam', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'voluptatem', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'velit', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'soluta', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'amet', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'id', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'molestias', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'molestiae', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'facere', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'rerum', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'et', '100');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '40', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '88', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '76', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '86', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '20', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '74', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '63', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '70', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '77', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '69', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '21', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '12', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '68', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '22', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '65', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '91', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '91', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '63', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '36', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '87', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '77', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '20', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '47', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '74', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '90', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '36', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '45', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '78', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '70', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '75', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '30', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '4', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '41', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '89', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '86', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '60', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '46', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '72', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '19', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '8', '100');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '68', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '85', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '9', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '69', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '90', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '98', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '38', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '14', '100');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '96', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '16', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '24', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '94', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '35', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '66', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '22', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '63', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '36', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '77', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '75', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '43', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '52', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '6', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '70', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '54', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '83', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '42', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '40', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '100', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '83', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '39', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '93', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '43', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '59', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '22', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '73', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '86', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '54', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '9', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '80', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '40', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '28', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '46', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '58', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '61', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '22', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '29', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '65', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '52', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '8', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '61', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '89', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '36', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '40', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '47', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '24', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '48', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '40', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '70', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '94', '100');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '12', '27');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'm', '2008-09-15', '1', '1970-12-19 15:37:45', 'West Tessieside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'f', '1980-02-07', '2', '2007-03-01 14:59:28', 'Port Georgettemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '2020-12-01', '3', '1979-07-06 20:19:39', 'East Cassieborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'm', '1976-01-17', '4', '2014-03-16 07:00:39', 'Port Price');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '1994-01-29', '5', '1976-12-29 17:05:19', 'Jaidenside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'm', '2010-10-10', '6', '2019-08-26 07:13:43', 'South Ayana');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'm', '2020-08-28', '7', '2018-11-14 20:08:56', 'Port Gaston');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'f', '1981-10-11', '8', '1975-11-11 17:53:42', 'Alphonsoville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '1977-07-22', '9', '2000-02-07 15:42:11', 'West Isabellehaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'm', '1997-05-14', '10', '1980-11-22 09:21:53', 'Haileeberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'm', '1977-08-12', '11', '1979-04-12 08:22:23', 'Ervinview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '1992-12-26', '12', '1975-01-15 15:32:58', 'New Tatum');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'f', '2017-10-12', '13', '1977-08-07 02:26:30', 'West Kendra');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'f', '2016-07-22', '14', '2015-07-14 11:49:56', 'Baileyton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'm', '2002-01-23', '15', '1973-05-15 07:53:12', 'Laynestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'f', '1990-04-03', '16', '1984-04-05 10:57:34', 'Lake Stevemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '2014-04-28', '17', '2001-11-27 21:44:24', 'Cindyhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '2013-07-27', '18', '2001-07-21 20:18:55', 'Port Tressaview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'm', '1981-11-06', '19', '1988-10-18 12:38:20', 'Port Garnetttown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'm', '1986-05-22', '20', '1974-08-01 04:27:40', 'Labadiebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'f', '1976-01-26', '21', '1977-04-22 04:02:38', 'Lake Oswaldo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '1988-04-13', '22', '1977-02-04 00:46:58', 'New Patriciaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'm', '1985-11-02', '23', '1998-10-19 17:44:46', 'Jacobiberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'f', '1976-04-23', '24', '1975-08-16 21:30:25', 'Dareborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'f', '2004-01-18', '25', '1995-09-29 00:51:07', 'Blockport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '1987-04-02', '26', '1994-08-05 10:52:28', 'North Dale');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'm', '2001-05-23', '27', '2023-01-27 21:48:41', 'East Florencio');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'm', '1978-12-11', '28', '1997-04-02 10:10:40', 'Tessshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'm', '2011-01-24', '29', '2020-04-23 17:10:21', 'West Maritzaport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'm', '1991-09-20', '30', '1989-04-18 09:18:07', 'Antoinetteton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '1985-04-03', '31', '2016-03-02 20:53:26', 'New Kylieborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'm', '2016-12-08', '32', '1987-12-06 02:02:34', 'Watsicaburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'f', '2013-12-04', '33', '1971-01-22 06:45:22', 'Antwanville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'f', '2010-03-28', '34', '2006-01-30 20:28:12', 'New Bettye');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'm', '2012-07-31', '35', '1983-11-04 06:31:27', 'Albaview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '2008-12-03', '36', '2009-01-14 00:36:41', 'Ahmedmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'm', '1985-02-12', '37', '2016-08-29 15:30:49', 'Kubberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '1979-08-08', '38', '1999-04-29 10:18:34', 'Lake Mosehaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'm', '2013-04-10', '39', '2007-01-23 08:05:06', 'Christellefurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '2010-03-07', '40', '2017-07-16 11:26:18', 'Flatleyton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '2019-04-28', '41', '1977-07-11 21:54:56', 'East Leanna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'm', '1972-06-04', '42', '1988-03-07 08:45:23', 'East Isaiahhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'm', '1981-06-09', '43', '1986-07-06 21:14:51', 'Kianberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'm', '2016-02-05', '44', '2017-09-10 15:43:04', 'East Carolyntown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '2021-03-28', '45', '2007-08-08 17:54:49', 'Port Flo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'm', '2007-07-30', '46', '1974-09-16 21:14:28', 'New Breanne');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'f', '2012-07-21', '47', '1991-02-12 23:15:14', 'Bartolettiland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'm', '2008-06-16', '48', '1985-08-13 20:41:31', 'Lake Queenchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'm', '2013-08-14', '49', '2000-08-23 18:53:50', 'West Annabelhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '1979-09-01', '50', '1972-05-30 07:35:41', 'East Marisolmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '1992-09-22', '51', '2004-02-21 08:09:27', 'Port Terrillchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'm', '2016-04-08', '52', '2003-07-07 15:02:13', 'Lilianeville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'f', '2018-02-21', '53', '1990-10-04 14:07:49', 'Dooleychester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'f', '1994-01-14', '54', '1979-07-27 21:43:48', 'Raulport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'm', '1979-09-14', '55', '2009-05-15 11:11:23', 'West Kasey');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'm', '2011-05-01', '56', '1995-05-13 00:09:17', 'Ansleytown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'm', '1987-07-22', '57', '2014-11-20 16:48:47', 'West Shannon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'm', '1990-07-24', '58', '2016-11-11 21:07:30', 'Boview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'f', '1974-01-20', '59', '1994-07-10 11:44:27', 'East Raeganland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'm', '1972-03-18', '60', '1979-02-05 17:55:24', 'Veumchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '2014-05-27', '61', '1994-11-29 15:17:02', 'Mikaylaberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '1995-11-14', '62', '2003-08-18 08:54:42', 'Dayanafurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'm', '1982-02-18', '63', '1981-08-03 18:26:55', 'South Nya');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'f', '1978-04-01', '64', '1989-06-13 04:52:11', 'South Cicero');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'm', '1976-05-14', '65', '1984-12-19 13:13:49', 'West Serena');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '1988-09-04', '66', '1999-09-21 16:52:42', 'Jairoberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'f', '1978-10-29', '67', '2009-04-30 20:01:13', 'Kelliberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'f', '1983-10-07', '68', '2009-06-08 13:12:13', 'Madgefurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'f', '2000-07-09', '69', '2019-09-13 10:29:19', 'Deckowmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'f', '1980-09-08', '70', '2019-12-27 09:28:32', 'North Dewaynechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'm', '1997-07-03', '71', '2001-08-04 19:56:12', 'East Antoinette');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '1978-05-11', '72', '2011-09-16 11:11:57', 'Maynardmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'f', '2006-07-09', '73', '1988-02-03 10:22:07', 'Ryanburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'f', '1975-02-05', '74', '1994-09-06 14:01:03', 'South Madelineberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'm', '2004-11-14', '75', '2005-11-23 03:49:20', 'Keltonhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '2004-01-31', '76', '1983-07-27 21:10:55', 'Konopelskishire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'f', '1994-09-17', '77', '1975-06-04 23:08:30', 'Ernserburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'f', '2016-12-17', '78', '1971-02-21 12:27:22', 'Sherwoodshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '2021-10-08', '79', '1979-08-13 16:15:30', 'Francescoland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'm', '2022-05-18', '80', '1989-11-20 08:45:16', 'South Shannahaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'f', '2020-04-03', '81', '1981-07-18 18:17:32', 'Ortizburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '2021-07-31', '82', '1988-03-28 18:21:13', 'Corbinmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'f', '2023-02-26', '83', '1985-10-06 13:46:45', 'Reichertchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'm', '2018-05-11', '84', '2012-09-15 00:40:18', 'Cotytown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '1989-05-28', '85', '1971-05-09 23:40:04', 'Satterfieldton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'm', '1983-05-19', '86', '2011-09-27 01:29:12', 'East Broderick');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'f', '1995-06-07', '87', '1970-08-21 20:59:26', 'Estachester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '2002-07-09', '88', '1997-05-03 17:56:31', 'Gabrielleport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '1974-01-02', '89', '1987-08-05 15:33:03', 'Chancetown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '1973-05-31', '90', '1974-03-09 07:02:51', 'Lemkeport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'f', '2001-06-26', '91', '1982-04-14 00:23:17', 'Queenberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '2021-01-10', '92', '1996-09-28 03:09:58', 'New Amaya');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'f', '1976-11-17', '93', '1981-02-12 08:25:47', 'South Okeyfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '2000-07-25', '94', '1985-10-16 13:00:23', 'New Jeffryberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'm', '1974-06-20', '95', '2015-07-29 15:57:32', 'Roobhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '2000-05-09', '96', '2005-10-22 02:00:12', 'Monserratehaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'm', '1986-06-25', '97', '2001-05-11 12:48:43', 'Millerbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'f', '1992-06-04', '98', '1994-03-10 12:45:00', 'South Alyceville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'f', '2018-05-26', '99', '2005-08-20 06:46:52', 'Brittanymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'm', '1996-04-14', '100', '2012-01-02 12:35:22', 'Taraport');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Jody', 'Grant', 'danika.klocko@example.org', '68a032d3b30db481058474fd524fc064dd7061cd', '9724056599', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Winifred', 'VonRueden', 'rippin.kade@example.com', '9fabcdb35e67405deaa1cc16cf39a2c90836811a', '9816373175', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Wilber', 'Schuster', 'doberbrunner@example.org', '248e513bf89ddb912d1cbe7340a7a87e35058ea4', '9225104914', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Hugh', 'Hand', 'carmine.lowe@example.com', 'df9068f171ee25579d3de09fb59201519ae0e127', '9060126917', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Chelsey', 'Heller', 'whilpert@example.org', '9e2ccaaa5f1cc6d114082ef0372668c6ad02cbdf', '9170065484', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Wilburn', 'Dickens', 'schamberger.keshaun@example.net', '39515bdd0d0c6cba677726e934c86766666f83f1', '9414621365', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Barry', 'Bruen', 'keeley87@example.org', '1dde44237163dc3c58e7dcf5aad7a52ac2137c76', '9147045526', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Althea', 'Jaskolski', 'marjory.quigley@example.com', 'de3b8a083be45c40b8f534f82af057cb1ae55c40', '9449309431', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Johnson', 'Kovacek', 'rgottlieb@example.com', '2a519c2604130960dde65b92213ef15f0c0271f3', '9967690387', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Gilbert', 'Christiansen', 'uboyle@example.net', 'ecc00e8be3d8e514458e84e50b2b63adc068115e', '9547244974', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Hilton', 'Kris', 'kcremin@example.org', '86b949a11e7add3fab1c8580bb275c95f97b4d10', '9251926375', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Karl', 'Hodkiewicz', 'laila.donnelly@example.org', 'da4406bfc6763091147cf0aec10f55a9aaf8dcae', '9561391816', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Gladys', 'Kris', 'sbrekke@example.org', '60e0e86cc0bda5b2029dfd93ba73fd66b3ccf237', '9439694563', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Tony', 'Jones', 'rbartell@example.com', '3ac4427b0c1db458ec4792eb18f23d9491db7686', '9307759622', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Andreane', 'Greenfelder', 'haley.gwen@example.com', '96dee61cbe7f126f7f27f77b69382e5e7253cac5', '9145684993', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Keagan', 'Kihn', 'danika.bergnaum@example.com', 'a3e3defff996330f60df1c3ff5f572ab603745f2', '9378953678', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Sarina', 'Dach', 'anabelle33@example.com', 'a7823f4a67cfc1cadc36754b79a359bee48eb196', '9466223387', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Jamel', 'Jacobs', 'kiley62@example.net', '28ef2d4719cf7ab26feffca660330c9af98831bb', '9102417060', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Eleanore', 'Wolff', 'schamberger.clair@example.com', '2af14f2b9c4fc1b0e050a0e35108d8fe30c220a8', '9305648831', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Jonathan', 'Lindgren', 'zberge@example.net', '165983beb85d99e67b4fb7e04a854611b3c59c8b', '9780163109', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Orrin', 'DuBuque', 'stracke.zella@example.org', 'ed0b58ddf278118341763b58ab137c58c019eb59', '9249940827', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Vicky', 'Boyle', 'nikolaus.minnie@example.org', 'bb37277446b799ee925ce5fd2977f1011cbe74c0', '9156044156', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Susan', 'Waters', 'rick45@example.org', 'e6a011c0bd71c69b1296cfbe2aa291db8ccf7cdb', '9432792140', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Maya', 'Wisozk', 'stroman.natalia@example.net', '8d70628c88d6d18dd62e1620e649a5e2e7e11f43', '9320321621', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Adrianna', 'Kiehn', 'ryder.kihn@example.com', 'b8a9324d7d9fb713047bbff2902d7064ac576d59', '9689219298', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Pearl', 'O\'Hara', 'anya92@example.org', '35b76a3e319159fbf11979cde7714d7de1a2ec44', '9019684260', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Wilfrid', 'Effertz', 'kconroy@example.net', '1706a1b48a3e685b4e5f0998fa076c97d50e4c4f', '9838716024', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Sandrine', 'Renner', 'schowalter.viola@example.net', '87523b1a61efce90d3b32ae8c7c9c37d29109468', '9918162337', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Bernhard', 'Schoen', 'cormier.madilyn@example.com', '152d8ba9a61ded0aebfc0f5683f0381706c645a6', '9612492465', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Geovanny', 'Jast', 'daniel.rosa@example.net', '03eacfa0f8f6ca23a53d9b7f06a758e42c3d14ba', '9734198895', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Hildegard', 'Langworth', 'mheidenreich@example.org', 'd99c1e140f4f719f47ffde5dcfef2cd36e9cd9ee', '9492840306', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Estel', 'Shields', 'no\'reilly@example.net', '27a8996650284ff5ab6120bbb3320ca73d742e92', '9824719096', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Kirsten', 'Luettgen', 'carson.walter@example.org', 'f5618d6825e48db8a12c52e2d73a79d04da0a822', '9181276432', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Eve', 'Hackett', 'shanon.okuneva@example.net', '041a87b1abcb8a248383f8a410f1be723d631947', '9317595697', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Ova', 'Gaylord', 'zjerde@example.net', '5ccc3a4901d16dea5def9aa702bce94f0dba8fc5', '9593123844', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Kelsi', 'Mayer', 'nking@example.net', 'afd1cc69a11f12b9571c2daaff4d1af93decb549', '9993197982', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Margret', 'Aufderhar', 'caitlyn.glover@example.org', '00a412e6d2977c38c09bad37dff4f2d10bb546a8', '9528887269', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Demario', 'Cummerata', 'kshlerin.claudia@example.org', '66bdd2975fee24a59dd0a27a200aaa1628d752d3', '9310701326', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Brant', 'Koss', 'mcollier@example.net', 'ac776e6181a2d769aff9a8117ca63f8bf51de9d6', '9892565209', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Jerel', 'Rau', 'kendall.nikolaus@example.net', 'b4d6cad40e887be044a6fba215faa2794cde5b7f', '9212839583', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Eulah', 'Hammes', 'lindgren.helga@example.net', 'f28f3f9c1918b37cf70d76b83df03c8bef342a51', '9434607394', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Abdul', 'Larson', 'royce.senger@example.org', '4436cc1a4f1b61258045005993fa160eb4f835f3', '9157295956', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Ines', 'Williamson', 'josefina90@example.com', '9b9160836954d83f26602a5b3c840a0e9b77a128', '9110801417', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Paige', 'Rempel', 'luella70@example.org', '34177ebff5247c1f38f1b4942f9625e30bc53253', '9078513726', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Beverly', 'Rempel', 'skiles.naomi@example.com', '7eebdba3a7fb2b5478655d101011fd3a8c70369d', '9185161818', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Retta', 'Mueller', 'ukerluke@example.com', 'f35d96a89c9b5425c9ffb483f3f7ee6582e9dcc7', '9263397213', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Jaunita', 'Bins', 'guiseppe.waters@example.net', '53676661a174dd9a2b1099afea3f2122f9515277', '9046432055', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Josiah', 'Schiller', 'mckenzie.fatima@example.net', 'b89c9eff59dcb53096015eb707484b036cf8dee3', '9452215600', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Toney', 'Okuneva', 'cade.hermiston@example.org', '0316d56184b399570d9e4402baaabac13ec23e73', '9978486907', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Stephania', 'Stark', 'enola.pfannerstill@example.org', '1064c084f14e02598815e83718bfcb41763e7fae', '9634745130', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Hugh', 'Pfannerstill', 'bobbie70@example.org', '411dbdafc90769071591925dfa2f4aa73361cf08', '9643933932', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Georgette', 'Nicolas', 'katheryn.hegmann@example.org', 'e0b66a4672d5df70f59dff7026882a9446e7b9e8', '9549143148', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Heath', 'Macejkovic', 'karolann90@example.org', 'f24575f6a35ab06cc0559736f72f3f72aaba07e2', '9625377761', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Timmothy', 'Schowalter', 'justus74@example.org', '59c3b081de27eea8c091adc7f133e658627ee7be', '9958563749', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Horace', 'Mosciski', 'terrell.towne@example.net', '91753e0e3dcfb910bbdf4a65540c120f78b0fd32', '9784669731', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Ernestine', 'Roob', 'frederik58@example.net', 'e80950079d7ae9e39044c94e0e453a9b6f9706eb', '9894713239', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Arthur', 'Larson', 'carlo.gaylord@example.org', '154172e5b61d6cbce7f1551f26cc7484879693d9', '9165182290', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Carroll', 'Spinka', 'ttrantow@example.net', '7411bc59325584165dddc74b9274b2e96d55af6e', '9846404507', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Jaycee', 'Ruecker', 'winston.runolfsson@example.net', 'b7105e180498ccd39e012b5864fb0c34ff7b0b20', '9943974605', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Antoinette', 'Balistreri', 'treutel.orval@example.com', 'da5c91de7f37bf337c1df6846d1bdad43c8ddb1c', '9205403244', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Alexandre', 'Emard', 'ansel.adams@example.com', 'af451711fd95e3fe15f0ff04702682c475296a0a', '9286643235', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Lelia', 'Mann', 'brooke.altenwerth@example.org', '890e1f2e736f0deab1569726ab9ae5ab89015a9f', '9350032313', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Floyd', 'Konopelski', 'camille.murphy@example.net', 'f2cbc836dbb05cfe8686fca3e3be2eb65441640a', '9514920783', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Mandy', 'Wuckert', 'tpurdy@example.org', 'a234ed20682e83ddb51b4e77ec730a86ea2b1f7a', '9641257985', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Kailey', 'Harris', 'tess78@example.com', '0f08181ebbdba009f7ad90f4fd0cd4ef66e9009d', '9489231547', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Robyn', 'Mante', 'ogoyette@example.org', 'f123cb848034467b53105152f70898b0dcc9feb1', '9144006660', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Giovani', 'Skiles', 'little.geoffrey@example.net', '940531f804fbc5fc0c307c4d1097ca784c9955d0', '9007449318', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Irving', 'Denesik', 'declan.kuhic@example.org', '1a597a663c0fc0839a8ec6821fa37de3325d0e8b', '9305244180', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Mike', 'Parker', 'madaline.satterfield@example.net', '6444a4e85e042d588cf46aa0b539dbccb8a11791', '9565412707', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Gerson', 'Bergnaum', 'nitzsche.shane@example.com', 'c6ecd685e8cc3c1734a24ee1b1d3acd55dfe6090', '9491187823', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Nelle', 'Hickle', 'arutherford@example.net', '03fa36327895a0ff680071ded8728b69e6392f84', '9099067507', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Keeley', 'Nitzsche', 'ajast@example.net', '5d96131a16f779eff392e19fb9129e7350c71f19', '9996684980', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Josie', 'Pouros', 'blittel@example.net', '2a44c89b46038a7922e0ba2dbf422090b3fcc373', '9678173371', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Anna', 'Powlowski', 'o\'reilly.nicholas@example.net', '30f0717480b0a806fe4a48889b9bcf59b304f750', '9468795679', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Aileen', 'McGlynn', 'gerardo42@example.net', '7a35b94fae720a24a3713ab8c0a82c6f5a85a340', '9371769742', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Liana', 'Rice', 'grolfson@example.com', 'c996c0e41c9d7ad2ba8f88d3a5e7293847d2fb17', '9258504820', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Sarina', 'O\'Keefe', 'sidney.brown@example.net', '09728f5bacc596b476b29bcf275576d93016d3d8', '9799650873', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Joel', 'Pfannerstill', 'kmorar@example.com', '14b008dd4dc698aeab5af9dcadda5d3d450ffa83', '9096418988', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Josefina', 'Dooley', 'kondricka@example.net', '2b2ab2af33aa5dd45d1b7d35c86f51359b9b0635', '9285408173', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Hal', 'Douglas', 'zmetz@example.net', 'fe010e099c3d11b2d4e657e1b4942dd3d01418a5', '9263464528', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Geoffrey', 'Barrows', 'evan93@example.net', '82d81791f01851f8344a94e8bc58e2e204840165', '9797390603', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Cale', 'Kub', 'kerluke.martina@example.com', '3f2157c19282a13dfbc079b2fd7bd9d8d355a075', '9150462696', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Chaim', 'Thompson', 'shakira.cartwright@example.net', '94628990cadd6a4ff2d0649d372599158b9355ac', '9054040775', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Piper', 'Shanahan', 'laurine27@example.org', '0f98609109d7ec136d651c74a12b8b9e35035858', '9486526134', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Davonte', 'D\'Amore', 'raven78@example.org', '452ef4674944d3f3eb05e2313c45323cef80e7a1', '9180883775', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Dean', 'Krajcik', 'reuben.smith@example.com', 'c79b9d8d481fd793c4f617d92ec804b9d0404bb1', '9877869425', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Dennis', 'Dickinson', 'chance68@example.com', 'b19527f49fdaeaa003e183c20d5addf03b6a088f', '9131231592', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Katelin', 'Keebler', 'yschuppe@example.net', '12b7e34f379ff6b23cdcc500142003b82065c189', '9898330737', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Adolphus', 'Walter', 'cgutmann@example.net', '521b9ed74b89aa8dcbb6936a47b05705c5b2bb36', '9986335114', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Tomas', 'Haag', 'brayan.leannon@example.net', '9e3e1dbb1ebf1e2d82a4590f340995bebc9f535f', '9873596891', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Jackie', 'Abbott', 'ikirlin@example.net', '9b8eebb57866d3ea67b0a3509b18b0dc92b98d13', '9585439738', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Annalise', 'Hayes', 'mlind@example.org', 'a6fa8039787fe9444f759afc8ef09b65f951b1f0', '9546901168', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Merle', 'Lesch', 'rhickle@example.org', '1481ccaf7be0690d57a609af98af71501e208dfa', '9020467357', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Beau', 'Romaguera', 'gisselle.pfeffer@example.org', 'e39066ccb08b155cef49149e341b55aaa52977d0', '9183227959', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Jennings', 'Armstrong', 'sauer.abe@example.org', 'd5eedf375cce0491dce081995e2d4553295193d7', '9807492361', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Lorna', 'Boehm', 'nicholaus16@example.net', '00c76d2028cde73f7028d3c57549599ef3189525', '9429295309', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Douglas', 'Glover', 'jaclyn.dooley@example.net', '4ba98d8988d1c6664b4ac1f3f752c1dd297f9cf0', '9167411950', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Giovanni', 'Luettgen', 'celestine.keeling@example.com', 'ac5c4cf54bc93ff321a2ac89ac1fbdd22702d3bb', '9248774825', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Dennis', 'Spinka', 'pmccullough@example.net', 'c0106abe651607bc5dd9d86122b2a89d650c9b73', '9247537101', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Pearl', 'Mann', 'manuela99@example.com', 'c7265deb53300eae0a15c26b9658ccfd626e6ff6', '9908379767', '0');


