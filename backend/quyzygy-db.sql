-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: iul. 06, 2019 la 07:50 PM
-- Versiune server: 10.1.38-MariaDB
-- Versiune PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `quyzygy-db`
--
CREATE DATABASE IF NOT EXISTS `quyzygy-db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quyzygy-db`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `activatedquizzes`
--

CREATE TABLE `activatedquizzes` (
  `QuizID` int(11) NOT NULL,
  `AccessCode` int(11) NOT NULL,
  `Students` mediumtext,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `activatedquizzes`
--

INSERT INTO `activatedquizzes` (`QuizID`, `AccessCode`, `Students`, `StartTime`, `EndTime`, `ID`) VALUES
(1, 7274, '', '2019-07-05 15:28:17', '2019-07-05 17:28:17', 0),
(5, 9128, '', '2019-07-05 15:28:20', '2019-07-05 18:28:20', 0),
(6, 2512, '', '2019-07-05 15:28:21', '2019-07-05 18:28:21', 0),
(7, 8371, '', '2019-07-05 15:28:23', '2019-07-05 17:28:23', 0),
(8, 3607, '', '2019-07-05 15:28:24', '2019-07-05 18:28:24', 0),
(1, 3578, '', '2019-07-05 15:31:45', '2019-07-05 17:31:45', 0),
(5, 1182, '', '2019-07-05 15:31:47', '2019-07-05 18:31:47', 0),
(6, 6773, '', '2019-07-05 15:31:49', '2019-07-05 18:31:49', 0),
(7, 2838, '', '2019-07-05 15:31:50', '2019-07-05 17:31:50', 0),
(8, 9454, '', '2019-07-05 15:31:51', '2019-07-05 18:31:51', 0),
(1, 9618, '', '2019-07-05 15:40:34', '2019-07-05 17:40:34', 0),
(5, 5567, '', '2019-07-05 15:42:24', '2019-07-05 18:42:24', 0),
(7, 3143, '', '2019-07-05 15:42:28', '2019-07-05 17:42:28', 0),
(8, 3625, '', '2019-07-05 15:45:35', '2019-07-05 18:45:35', 0),
(6, 9088, '', '2019-07-05 16:20:31', '2019-07-05 19:20:31', 0),
(1, 4029, '', '2019-07-05 16:38:14', '2019-07-05 18:38:14', 0),
(1, 2177, '', '2019-07-05 16:41:05', '2019-07-05 18:41:05', 0),
(1, 1512, '', '2019-07-05 16:43:57', '2019-07-05 18:43:57', 0),
(1, 7118, '', '2019-07-05 16:47:40', '2019-07-05 18:47:40', 0),
(1, 9042, '', '2019-07-06 16:57:39', '2019-07-06 18:57:39', 0),
(1, 3331, '', '2019-07-06 17:01:55', '2019-07-06 19:01:55', 0),
(12, 6710, '', '2019-07-06 17:43:31', '2019-07-07 01:43:31', 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `authenticatedusers`
--

CREATE TABLE `authenticatedusers` (
  `Email` varchar(50) NOT NULL,
  `SecretKeys` varchar(4096) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `authenticatedusers`
--

INSERT INTO `authenticatedusers` (`Email`, `SecretKeys`, `ID`) VALUES
('Andrei.popescu@ase.ro ', '[\"d60b985aad38710ef61d23aedcc0bd7e\",\"81e54aef348c78ea1574b394faf9136d\",\"c914c134a8b1ee92a80e607ff4410020\",\"d444089201fb59db2bbb31b3d673ef0c\",\"c15b68ea9e6582e9e638c81ed3d6c610\",\"fc63f4336a592d317890b81b2c1529ae\",\"3859659deb4452b6ded7b3ee785feb13\",\"001466284da51d424ecd2d69c923142a\",\"a55c9c936ff4606637dcba18379514da\",\"aec997cd809cfe67f32b86f98871bd3d\",\"a7cffcf754a58654debad963923c4ea7\",\"a7590fda0ce114e04fbfa8bc21012660\",\"17c469a34a6a34e8447fe5474fabfecf\",\"6626a12eebd93c89ae9025aa483644f3\",\"d068616f6883686349e0742ca5b13cf9\",\"9d7af363142da8dadaa69c8d033369f8\",\"aea8d566c7a484588b40617aaf851f92\",\"8cbad489aa132839e6d4219f4601395e\",\"853b5c841758e499f824aa9f502d219d\",\"6022d62bc2c13a8a15ae8ed18929f8eb\",\"699ee9c0d6bd97338b3d5bc6ca916fb7\"]', NULL),
('mother.he@r.com', '[\"b300d7d5d7256a70d41e147941f06187\",\"14cbf0dbbc49791e0afca3786473c266\",\"62c06f1e1c06a30a46ccc0fbe0eb71c3\",\"7de98af1f4f7d0a42c10221878a738d5\",\"e9399a298799b10a43a8a5e0e01d43db\",\"0fd68d58851816dc587ed276b9490fbe\",\"c277703566a9b97ba5359340dcb35d3f\",\"69e220f962ac6d44b74225219e601d9d\",\"a7fd07e7a542f1ba1b419e1dca6326ac\",\"11ec4ebd1e30ad4f61067fb8bc8c12e5\",\"f69f0429dd37461ff447e05b9155e601\",\"a18e493a5e988ca03bfd73f1c68ba2d3\",\"d7f27ea9dcf205b45629c1a5d97e89fa\",\"f55228206e2125a7b0eea648e02f007d\",\"e31bd3ab94e80ea287ce5150377aa93e\",\"b903a7164b87c3450c3b668668edfad2\",\"c71308bc10cdae1b18b03b2421e64ed0\",\"a6b47d7ff6df5b59ba03a46f3f73e4c5\",\"13ad11c9c191e4eb24a66935361b6d43\",\"54ed6cafdd27b0c23004aad34adff240\",\"bda3d2ab1a8280a3cdb191c64c24a931\",\"f297c3e23c086684c988c8f73c41da16\",\"861a4c3b20a0bbf7a9c0f794b00720a6\",\"a8997a8e67bfe68ee2f531f525f046a9\",\"9e97ad3572d37878cd22eef428ce198d\",\"c715d343adabb4b6387186645dc3f28c\",\"5b43254d6cf98f0902fc5200fb5c04c7\",\"ab3a9c46b1b9738451cb01a165a560c2\",\"c97347d75a62f01312c806e25f44c1cd\",\"f4c1e1465458e8440298b7fb631f9e8a\",\"e76d1fcd83d9bd57ffd778877251ed08\",\"99b8eb527808ec53a9f1330911caf5f8\",\"1c438614dfebee551e281f1877f03b51\",\"f82efc59e4ca6671337e1f8808876fd2\",\"dbbcfc677e7042160635396758b9f356\",\"3e6e45df4e86f1b696dfaa0e3846ecf6\",\"01e7cae9189b0de55f7a2e62e32cfdbb\",\"83bd23193baf0a1e7bf63f818e91fb6a\",\"38cb1959d12cdfa0ec1a1faaeae129e2\",\"a303841ea44b7ee8f5bbcc88a8bedec5\",\"41b9d792b438b70db6551357e922e840\",\"6d2a3e62f5f062ed59e5dc1daf4e9eee\",\"6ae523c9b0fcd834a9b12b53b0f035b2\",\"08001f3f455ba5efa442528e8e3d3689\",\"da67b7e1355dd458e72245c515194986\",\"8e7ed8a0ae1f17be9343b9d2095fe626\",\"a1266431b19f833e337d2f8658bd3f95\",\"68ef322c0512234f00377da63e86793a\",\"b6c075c9482130e35d15ed13546a5a86\",\"ee6b2cba5ba35695bccdc41d9e7a110b\",\"1febd878bcec187f71debb9566a9eba1\",\"abaac84c93d6fc287b97c91ae9c1cecd\",\"4edeca3db980e0a8bb86a2317f77c9ae\",\"54b25057ca14cea4f011fcd180870ad8\",\"7dedd38d8f40e863ce6cb312fe63de7e\",\"85777f6ba5a61f50354fab2a94c4635a\",\"0c585755ea5aca3a8ef9ab04edde9814\",\"3ed0301bc889cca9e7a3e79a79c041a7\",\"58c08bce6f70983b214cc741b6eb693b\",\"22df9c3874dd14a3923b59d0e1eb5375\",\"bf0f2b777d5b06351e8a0a7fbbfa82b0\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"a23147fff144af3f5d9862bde4f4d990\",\"eedbddeb158b39e10afdccb032679f48\",\"7b95feb3ff2dc72f314687742dbb3c4c\",\"62fce8ecc32772db2641e372800a4991\",\"6988adfeaff03ec2cda6cf2ac511c2ec\",\"5c61b2f5056157172f989812a806afb7\",\"a8683dd7067772f714a8e3d8e557a72b\",\"aae58c211e89758471caac4cc927ca21\",\"efc5a595daa779df08923c4eb656e6ee\",\"1f1be365e4ef8f74a23d88ace59fe38b\",\"cf93cc8bf42ebfa7bf1c64fc0d24c014\",\"151a17664ed19d2bd764655740b10e6e\",\"68acfa7be93b4f51ab7bcfe835f33260\",\"d321375c2d1182d9d1dc29a5ce25302d\",\"dfbad4bfdea780a20aec2b9bcde9bc2d\",\"c8db730a4509015958bd41127105dba3\",\"7f430e0500072fbef037e7bf542a2171\",\"445cbf6265a8a90051d5d9631d1416d7\",\"bd2071bde925862c25d0171e90c86df2\",\"481b362b4edd4cbf0953ead200873685\",\"c38aa1fc6076f083c48092cd6132ae66\",\"f8669bdb7d4fe71e5394ab1887cbd342\",\"bfdf2cca5bd9b878cba4c339f4b30c5e\",\"d4ed989822afb9560c980c66dc07f728\",\"57ed40c2ae109dbf4eeedf4187f3dc7a\",\"216207606b9eea8ab4eb95eae39211b9\",\"08b342ccdd69af9350060372fc88b849\",\"59e4f99216f8b34f63a44dab41671927\",\"89f52c47889911d57012419b399538f9\",\"35dd74d14b7c5547edfb22595cdd70a8\",\"8666b3248ba97e926a846225e813fef6\",\"246081ed2eed8a769e9c937cddf6ca91\",\"8084add9b9cba5fb2db23c4bd59d65e6\",\"7d191ac292d11fcdb49f84b3ba4e8677\",\"0aa3fa085d3dbb0a4c5fbf6a423b0fd3\",\"32af64790048da30895bfbeb5d837101\",\"a31e0e9f82e4f870ceafc73fae6b9d78\",\"8c32d28f0040a3057af67d7f271966a6\",\"454db8a5771462536fb66e1b61a1743c\",\"b5fcdebd24c22e60352c72168467ade0\",\"f7892453cba492181586caf9f2c7058c\",\"86416b6bd4e351ea55d37c3be463aeba\",\"4e86c3d7ca2f78192ccca1cb7500802b\",\"4748f18e08ae2451ad998b254e78a4d6\",\"aecd2f2622f6259b361936942c22ab13\",\"c53f1cd9c89b8fd959d82be51a011ce1\",\"bf6bb2a392033f7be8c907bf169cc1a3\",\"4090c5479969e99b57415a25a64d07ce\",\"ade69ddddfb9b1d87ea2a3da24147691\",\"4d64a7bc247b6139e6838516e556790e\",\"845e5817d2cf2472698e537b75347de7\",\"9ba61b9cc6ca2abcfe61a61dc1c31eb7\",\"0f466bcbe1c3f5bc40bc9089164f5b8c\",\"11c197dd3c915b7cf101242194f960ce\",\"ec587753ad7c91fffd27845649b320d4\",\"e137a56bf8e3a69e7c5630c9643cb659\",\"2750d23d0e69c96792e5e85f4bb92cbd\",\"296e1b7fad56314eed0af0b42b35a9ee\",\"6e342984a4ecf5e253ef80c0b3290609\",\"e497d18bce427d800ec19d90c3ceef09\",\"2477b5ab779c827d5e50dae30a889d5b\",\"218bcd0980eca7b9203c1dd5c8ff0798\",\"b69f6d2357e9a53aca15c086fb0f47e4\",\"ca05e60e1e9e3351ca6d6e0a2163fd7a\",\"b1690247d68283a9b2d099409f014070\",\"a3ad6b798af77d5b79b9d982e42d7044\",\"f5321b6829a47883de8c1bf894f1131a\",\"e948071460882a6d3662b2cfcd8f1a84\",\"201479fe59cad5e84d9bc100685d2ab8\",\"ea30a76ce672680a26ccd31404cecc91\",\"fa7b4b2a91039bcbb97962e050447247\",\"c54e837d9839d6780adadabd43c7ed87\",\"ba2a33d6257b9278b7eaa8ac4709e71a\",\"79691759e4b34b728e74da5a2e2492da\",\"db01354ac748bce60dbf9faa83908e4d\",\"b67d0998b23f2b8c63c483b6bb3288d5\",\"5219301fb110c0266bdde730e2d10b9d\",\"61025e38c9e2a16e32fb1ed727936ab6\",\"2fd3a9c4bc7bb20e578fc2f4c491eaf4\",\"12ecc0faf962844bf2552032e8a8c655\",\"3b75dbd270e056b79763725a624c7e72\",\"b8e16d8f10a1252464e239c021d842f5\",\"df5e7642fc6e252ffe8b24b49a7d3660\",\"089df8c1f753e7e68b3def2ed9c6cfeb\",\"b34fdce8ce135269bc02dfc5a628c780\",\"be897d38079a747efde55caf8b4fb9a9\",\"e4713839e5eb47776984bf234dc4ae47\",\"d2e94c0c18063af8682ae680d0252de1\",\"1e6353b3e687b41ee27665ef5714ef83\",\"f8d73b1b3ac29e709e0ddccbfbcf6b93\",\"13b846ec84d3ff25e8352c860463afdf\",\"164d4e09f13a31761b6dd1f980628527\",\"2405bb3b8a51fd8889ab6bffc09eca13\",\"9ba40aa0125d663970bdbef397489703\",\"8376a7c91e04fc2b7e2bac36c77b2e63\",\"44e71de86898c907f43c38d6025d9e9f\",\"7ba3ee3e01c0cddfb0f9796a80c02828\",\"d61b16be746284f16d2b60e0504d0723\",\"3cdadeb0f61417fc5b4cc5b2779ccdd3\",\"4ef4dc339a37e73495609adfb7f7d38a\",\"0863d9c3b4632d688d38ee3c7f8d62d4\",\"2144003dae1a86b96377d50464d98d92\",\"ced3444315f9df3a98566a85242856b1\",\"c9471d8f5756365a5175f5b9fc07f83c\",\"7e14404cdeb624ccf5e9b5deec05ab58\",\"6c52791499a72cdffeb0afb43f906dcf\",\"30355fa0c03d81d79b61e9f4c75c2c67\",\"771d12bc41e4804b1b64a519174355b6\",\"f8139d77546e5534932750e3a1674077\",\"ec3df21ba1b2280c03a1c416f346238a\",\"88b58d6f0c54dc68293c72a6797aa882\",\"80147e33738e446e7b49d066299bf5e2\",\"4abdadcd1cf6655fa2208d1a8b8163c4\",\"5d7f5a29eee94ff1942b583be93d1b81\",\"2a60ae7a057a371024c1a2eb2139a7b9\",\"e3e999d595802c4c5535b5c6609ea1ce\",\"ba814825205a972a77b1a8be88aaf8b8\",', NULL),
('aaa@ppp.com', '[\"817506d3980a15a2cd3e45c361f28d4e\",\"720c73ecddf739a99d343bf10b42e537\",\"6a7de069d5e2115c5095cd76761f3aec\",\"8b9510438f8a1d0b6101101f431485b7\",\"2310fd27df8187272e573f5bb9584596\",\"22284193747f7ac853059d6479234f8a\",\"bffc4c18f071c4cb6bb4c997ea66efe4\",\"6911eef4276b638547ba0a1051a546eb\",\"9b8fc07ef3fcb77ecb904e3456a85e60\",\"7d93c4bac0783427ea22168ca5d592df\",\"e31c0e30b2c44e0afca8c0a9a249f4ac\",\"64cc7f039f0fc72bad876a9bdbfd980c\"]', NULL),
('dan@ase.ro', '[\"3d635354df1e15b221a745efb5f9b7db\",\"a879c68353c060b0a20b3cb5fe685b5f\",\"c377da972f98cb388bd45236197aa893\",\"5403b0d90ab2643175105cbe2cdb06e8\",\"63dd1177918bb62edde94bf41df16fa8\",\"5701fcc3f8fa8fade1a23ec445e301eb\",\"cdbb39a28e13480cd5fe3cd8366f4d12\",\"62f2f5f9a6737263fcb83c17678eddec\",\"7eb10f6051e2049903e25856e89fb270\",\"9f315f7dce5365ceee633ee80c56787b\",\"8e7df7c6e49ba848170244a9808a1e9a\",\"34b0e7f6250e230ac1f8cccbcd4d8705\",\"82ffc8a75873dcbaf778300d1b2365ef\",\"d485f79286f66d5bd23d8d76cb19d128\",\"fdb56d2d4208104dd3df1ae816f32683\",\"5787294ebfe074aa12ae323aff7a3a14\",\"39ca6b255a84953c27ae6f2bbf6689cf\",\"d873cf46ad3d8457c9f0a402e267ddd6\",\"9e4e23851a22e4b3ec1e8bc8f4a5b25b\",\"904b85a0b1dfe89de3df8ce79357a75c\",\"959cb3d3ef1f492fc7aada1f95fb7a78\",\"7c27b5d06b677bb48a0f97c581a97199\",\"4dc224709bfc566e2a8083652fa33d6c\",\"02d66b75f9e75ee8434dd0ff719a9f70\",\"bf8a7d4f82257e279608a0b197b8c320\",\"223de290e0f6e12f3821677cffbdbd17\",\"93a6470f6d6e7ea87a2e0315ecd89855\",\"895db87274829ee7ceed5e02bb396642\",\"8e73f1ec6dd1314e5bcb5a8ed043a082\",\"1e55d9e4aea9d4e80cf13d49823f67bd\",\"3f4792040c0520badf381d6b828ae32c\",\"a1886a1574b2282d2da677474ccc69be\",\"9a869ffa31c127b5680de7481a634119\",\"8abf84718ed540a44c2fdbf47645b6c0\",\"6f4eb267612574fafe132a0b425dc0c5\",\"e944b9b96c4ee232dc6bb4da89a7e32b\",\"c936e2eaa2fce51ff99c7412aafc97a2\",\"bdb07896c10f7334c47e4fd7b29f676e\",\"5d977c2170eaa4162174d4802fd2cc9b\",\"e6f13dc5882ea4079d47ba14097fc71d\",\"47c69e53c12f57d6bbe76af544d893e6\",\"3ace62c564cf358eb55c2974aaf9f3e5\",\"3943095538d4524f0594cfe03aa02ac2\",\"cb30c53da20b9364152301ed162d5628\",\"f417433d3c0b3c3c469e1c63d7f5670e\",\"3226f6e0bff7888adc0c91bb533c014b\",\"f1617240a958051f07163285ce425062\",\"46a6ba4c2b0019683dc816d30aa0e031\",\"93cc5546d197e8db0a7f79bf65d6021e\",\"7e6a0e1aaa38feceb6fe6256a1362ef9\",\"002af96fbf6fed3cc6f3598c25842cb3\",\"7efc5c8dab9bc6ced3a682174859b56e\",\"c35b3265c921af51dcf3b2aa8172a517\",\"2706990018337f4c9e278261a09e1166\",\"1a85fe4699d7a7984401e11abb0dec96\",\"bb9cb7f2374757a4f021e09a3977edf6\",\"2d1aa1ebd0d598795faad127d5938680\",\"3ab2cbca304e2f167649f51c5e390bb2\",\"31439752b9112b87a2d12c3f332bd5b0\",\"4253ec08b78c6d11b524006c8a658a82\",\"598929e5138c05ce38d2ccc7949c6376\",\"83ed7f91c70b1037621c96633ff741b7\",\"daf11f01c220a9ad99eaaf6c2ec15bcc\",\"00c461e8e1023fcf45ec989b2ddb8ed7\",\"a2cfddabfe7f2c534f21d7bfb023f99e\",\"4e87e258ba33020cff113dff63933eb2\",\"578c773e5e885f3e6d826b2e0d76c5d5\",\"40099b748b88d95d517c015e148f3385\",\"5442928015e71818ae319ba3348eb27d\",\"c914c42ca777f935d419a77e7fced8f5\",\"b1f3252ae4d6c8617d962186bcc0bab3\",\"88482f60e076165621b518526975b33a\",\"4bb4d83dbd65b160357fb2e25b4b4f8f\",\"cd7798cee4e0e3ca69ebd561cc95c23b\",\"eccbe359b1d2bc1f928b1867ae04d5c4\",\"71a8c3fba6b17313e06bf3de603091f3\",\"2e92ebc16238b936d379a56462be8954\",\"cb28e87cc8f93f05ca9f6aea054b9a5e\",\"9920452bd25cb2674197e5c10b23d99d\",\"e789f6284b84d5ae53d13f9f8b40dbcb\",\"9c47e0232b8258af85a2782d17f1db0d\",\"3d5fd8e14abaae8524c5881314a3c492\",\"d0c269804878604dd8ee0eeca9f6fa75\",\"913d47f292ab78bd8d6c9ec7f3aa71f3\",\"bdbdf52ce2f1578ea1d8f217e507c63d\",\"0b1b3d6eae1cf3454dcbe418f2bdae2c\",\"2fdae07dd6c29663dc27c171d4acdcc8\",\"2c979afaafa95f2c170b6c5c094fc574\",\"87e882844f8519f3c4fa417acac104ca\",\"60b08b43cac0a9c1c1201797317771fa\",\"61082d21835996e98ec1470b2b427ece\",\"9a733c759f5a8751010c0be836342433\",\"f8d46323f7eb9e0ad33e8475cc399796\",\"2131c00c657adc556060a001d77334c0\",\"241c8045c8f3744bbc4057087c08cd3f\",\"c49f5285fa46f2bf642759824955ee55\",\"228228752589d356f8b8c78703161a30\",\"a064bc0d8a55dbdfb645d789386769df\",\"295eaaf96327d8bdc4bec274152fd67a\",\"656e9a16d214dce97e28502d1277f935\",\"3a5761ace42719f4f97e6025d5c75648\",\"2719f7e92b8947ac48e595cb61a7b2ee\",\"449ee4681d534c329dc8c5aaed3eda0d\",\"8001b3c2da11b75a770f34f049da27c8\",\"d7bbd198e9dcbae082392c809077a0f2\",\"9d24d343d5b5cc7be90e721ec01c017f\",\"60a1fe40d966072d5b4240b01cc20a3a\",\"0e0a59c9772d9d8af6af25ff0df44bf7\",\"1aba0060c61cc361fcb999b882a714e7\",\"2301e092478986b26030e16ecd5db8d4\",\"3f56018dc0aa955ae2946ecc3c7f0800\",\"80364c5d777fe1e3ff9266ba312e71b8\",\"99e6aeb9e9f41b33e1f5e8e796c53de9\",\"5d72653e211d0d201e4efc51ede4673a\",\"00c4ff568cfa056717ff1fb3f07c1f97\",\"af9bc830c163414f3449bf744b7ab9e7\",\"29b64f09801abb85536982e4f16643a5\",', NULL),
('Blue.carrot@vegetables.com ', '[\"f42286c6dd911c07766e7f7a2019153f\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"2689909ab91598a386024097ce84236e\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"4b45ad05b74cc1611b24a51f7b46fe37\"]', NULL),
('blue.carrot@vegetables.com', '[\"2408ba426e9e3e5d92f54a9943202f81\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"79ebc5b612189bc715616cc11b8e96ff\"]', NULL),
('blue.carrot@vegetables.com', '[\"6b295b8a56e127e66cc616f93dda5a94\"]', NULL),
('blue.carrot@vegetables.com', '[\"bae628d9fc36e10a7d92e915a2876705\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"11e7cb9d29cb2286d94ad64e5a3de331\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"c23e22e21c7dd5b7285f17be2642c640\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"923ffd53b71f01019bd072a4ba0a002e\"]', NULL),
('blue.carrot@vegetables.com', '[\"5859067df43066cf7265409e244245db\"]', NULL),
('blue.carrot@vegetables.com', '[\"97df79dc532f2142706cb5dbff430107\"]', NULL),
('blue.carrot@vegetables.com', '[\"f24586686675bc0ec3790c518f36936c\"]', NULL),
('blue.carrot@vegetables.com', '[\"bf78e09e2364415934fd41d690cf0511\"]', NULL),
('blue.carrot@vegetables.com', '[\"17df25de1c94acc2c6380e5a7d948151\"]', NULL),
('blue.carrot@vegetables.com', '[\"a3350d37e340832bdc8851b72792de3f\"]', NULL),
('blue.carrot@vegetables.com', '[\"d3b45ee3df97d0efbf8babf222e6c9d5\"]', NULL),
('blue.carrot@vegetables.com', '[\"49659e26dddaba561cf3019ac2247bf4\"]', NULL),
('blue.carrot@vegetables.com', '[\"0debe3be9593718c4b53ae3375a77cce\"]', NULL),
('blue.carrot@vegetables.com', '[\"a01e0f4ee186fd2b05a3a14b3891fb72\"]', NULL),
('blue.carrot@vegetables.com', '[\"090793389e218bf0f41e5605baeed0c5\"]', NULL),
('blue.carrot@vegetables.com', '[\"0eb53fa17bdfa9b99106f5b5cdb5a7c9\"]', NULL),
('blue.carrot@vegetables.com', '[\"d23eda79b150afdabcd08715c80bde2a\"]', NULL),
('blue.carrot@vegetables.com', '[\"7bd071f034d55dd01c9919a891525486\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"8e65c140bf20032eab3ad8eab8dcef93\"]', NULL),
('blue.carrot@vegetables.com', '[\"1c68293cbd27486cbf8110ae3dc1b24d\"]', NULL),
('blue.carrot@vegetables.com', '[\"b723c72ef5a8b2790b5f03862889bd1c\"]', NULL),
('blue.carrot@vegetables.com', '[\"e66e235f57fc562ce3c15d2134dfeeca\"]', NULL),
('blue.carrot@vegetables.com', '[\"542e863a42ca4b3fb9420a7567f0498e\"]', NULL),
('blue.carrot@vegetables.com', '[\"d6068f8800a2f2fca980534c4e978b98\"]', NULL),
('blue.carrot@vegetables.com', '[\"9d8f11ed10c2a08d6817734a7da4c233\"]', NULL),
('blue.carrot@vegetables.com', '[\"166e9decbef203e2d447a2e437b2d902\"]', NULL),
('blue.carrot@vegetables.com', '[\"1b36880f87b6c9ad5f2f834530488f7c\"]', NULL),
('blue.carrot@vegetables.com', '[\"5a73f86af2893a714b05e995d0959700\"]', NULL),
('blue.carrot@vegetables.com', '[\"bce1fbda1de5a5af20c7f98085c0a760\"]', NULL),
('blue.carrot@vegetables.com', '[\"5a228c1cb3f1f8b9c752e26e79241fa6\"]', NULL),
('blue.carrot@vegetables.com', '[\"9eee942369d83dfa4c7762b5403834a2\"]', NULL),
('blue.carrot@vegetables.com', '[\"9f3ad58c937db9ef48bfa9390343df89\"]', NULL),
('blue.carrot@vegetables.com', '[\"5d579f60a3e2119e2f7ef28d22dcf971\"]', NULL),
('blue.carrot@vegetables.com', '[\"c85e3bfa926c8e82c1fa32aee2d063b9\"]', NULL),
('blue.carrot@vegetables.com', '[\"82b3e8ba282a2a670be6e23f592ac240\"]', NULL),
('blue.carrot@vegetables.com', '[\"2e59ac14f2bd369046692a21121f2fb0\"]', NULL),
('blue.carrot@vegetables.com', '[\"eef4cb25a5254ece7fe9917b4b8bc7d2\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"a0659c1d54539638b8feef6e75dc49c0\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"fae44a30adf155d264f3c29b5fe6035e\"]', NULL),
('blue.carrot@vegetables.com', '[\"1f6e4b9c11c694b59dad5bad51948721\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"7a50c09ec720012cbddcb338ba389268\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"6b2aee50b7d204765b3ad018c0b7ce21\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"1408c4a5a83185b183536ae6cf315b8d\"]', NULL),
('blue.carrot@vegetables.com', '[\"639d6829bf62e4889338890b4f105643\"]', NULL),
('blue.carrot@vegetables.com', '[\"9477b119f7111c6165a12996865bc2d4\"]', NULL),
('blue.carrot@vegetables.com', '[\"1ad32ae17f9d28ea201d70f5c59b815f\"]', NULL),
('blue.carrot@vegetables.com', '[\"9c9f7a02fec926dd3ed4d9bccc7d3f37\"]', NULL),
('blue.carrot@vegetables.com', '[\"8e1b19a4801a5395280f73774db16d61\"]', NULL),
('blue.carrot@vegetables.com', '[\"af4c23766b93c001dcef16f54b0aa4c7\"]', NULL),
('blue.carrot@vegetables.com', '[\"2c78f7797e6ee735754819a1376d2976\"]', NULL),
('blue.carrot@vegetables.com', '[\"1754bb442a7e30a6d4e268ca9d6c563b\"]', NULL),
('blue.carrot@vegetables.com', '[\"8cca175bfb6bcffa27c8a7a3208ec0cc\"]', NULL),
('blue.carrot@vegetables.com', '[\"c8c18e56c262dbda0ecadcfc239a9846\"]', NULL),
('blue.carrot@vegetables.com', '[\"27ebd0b4823f92619bcf0f67667fa9f5\"]', NULL),
('blue.carrot@vegetables.com', '[\"e67c7707057286d40032cf8d5e6f6a48\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"8065ca21a38b501447cde958d4a77638\"]', NULL),
('blue.carrot@vegetables.com', '[\"f2a816e0e6e8c87fa8b2e2a680993108\"]', NULL),
('blue.carrot@vegetables.com', '[\"53c187b06573100af0e4013455a66eeb\"]', NULL),
('Cosmin@ase.ro ', '[\"051464f3411b93191b47dde5dbbfe39b\",\"0ec9a323c26496bba03150be8257ed7a\",\"ac72e16e7c6f915b93e2f3757fb09ed8\",\"69380ea93bd3cdef5f7890380f103e1e\",\"e267694852a35bb27b8dd7782a3c182d\",\"5cb1db8317b14e80eae5355d0cf61ee7\",\"95f2868042ce1e427fcc78a9a4ba720e\",\"98c24d881102dbefebc1778e874a4759\"]', NULL),
('blue.carrot@vegetables.com', '[\"ef27cc42ba1330a65e778134166f701a\"]', NULL),
('blue.carrot@vegetables.com', '[\"0b34ea590952e908c4f63232f9ce06e4\"]', NULL),
('blue.carrot@vegetables.com', '[\"84535bc1dbfa9454d2fb2a8429eff372\"]', NULL),
('blue.carrot@vegetables.com', '[\"1fdcc033c90af00c8c3c24d6661ec23e\"]', NULL),
('blue.carrot@vegetables.com', '[\"8afd693f72064debccd5a636ed44f936\"]', NULL),
('blue.carrot@vegetables.com', '[\"39d5c123916e54374ab33b9077a43adf\"]', NULL),
('blue.carrot@vegetables.com', '[\"090e96aea00f13408b91583060599b9e\"]', NULL),
('blue.carrot@vegetables.com', '[\"ca4a5a599b898ef737a52ec9cbfae314\"]', NULL),
('blue.carrot@vegetables.com', '[\"da1f3dacfc9e7d0509f73b1790277726\"]', NULL),
('blue.carrot@vegetables.com', '[\"d6d25b1401d2600b236309b433ee992e\"]', NULL),
('blue.carrot@vegetables.com', '[\"f7c3938b95417aef5ad852176ab15583\"]', NULL),
('blue.carrot@vegetables.com', '[\"db2c53fc79ed0172594bf5225df9d821\"]', NULL),
('blue.carrot@vegetables.com', '[\"529f78ecd1c4e5ec48904070ff8425d7\"]', NULL),
('blue.carrot@vegetables.com', '[\"4fd628aef9188c819d31b833e86ac72d\"]', NULL),
('blue.carrot@vegetables.com', '[\"bb1ee2d3f3d68106b8e7eee41e514495\"]', NULL),
('blue.carrot@vegetables.com', '[\"f4955df0340c37d06642dea9ff3a4493\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"f8e676b31715c006df43b091e7bb1e55\"]', NULL),
('blue.carrot@vegetables.com', '[\"1cc46721a544b578bbd5ed1f56c6acaa\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"cf57813918f7c1985733f837c9e4195c\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"cb9908a1a1ebadbf817ffe58b8efdc24\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"ecdbaaaf67f4fa08d00d3cc72db58de8\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"235802e4f0f0008baffcf263c07942fb\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"315a0dc752a507d9a7120524be322878\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"57abc789dd04142f2469607e1775224a\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"0d7614d882c59771a1f74a3c6993af6c\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"c36c02095d9ba7b5819b3f5400fdea75\"]', NULL),
('blue.carrot@vegetables.com', '[\"1ce8c8154b428414bdba41fb92347491\"]', NULL),
('blue.carrot@vegetables.com', '[\"b58f6a7281358b12bca6bdfc12025494\"]', NULL),
('blue.carrot@vegetables.com', '[\"80231363c7a14ddf8dedc7bf3d60f607\"]', NULL),
('blue.carrot@vegetables.com', '[\"1c11f75c687d0dc959fc005cb0dd8a7c\"]', NULL),
('blue.carrot@vegetables.com', '[\"a93eead00ab89b6278e948bcada48c7b\"]', NULL),
('blue.carrot@vegetables.com', '[\"ac265e4e8bfa20b849baea56cf08bfe6\"]', NULL),
('blue.carrot@vegetables.com', '[\"64dc6e567d920e88a5ca929053b9b457\"]', NULL),
('blue.carrot@vegetables.com', '[\"a19dd8fc5dae1bd526a4c29c0b53702c\"]', NULL),
('blue.carrot@vegetables.com', '[\"31346ea693ff74b7d20548420da48df4\"]', NULL),
('blue.carrot@vegetables.com', '[\"0d36b38c1fc84fe68049b5945d20425d\"]', NULL),
('blue.carrot@vegetables.com', '[\"0c2f44e6ad37db723ffff1adf673194b\"]', NULL),
('blue.carrot@vegetables.com', '[\"c85454ddef49692fed313d9e9523bb58\"]', NULL),
('blue.carrot@vegetables.com', '[\"bf37bb62229a1568b5bba327f0ae3ab3\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"dccf887424b988ce5c5f2d4eb285625e\"]', NULL),
('blue.carrot@vegetables.com', '[\"f63f95558da8629a0e70f93e268916b8\"]', NULL),
('blue.carrot@vegetables.com', '[\"0e691f06b2dfe039a9128a13c7c1621e\"]', NULL),
('blue.carrot@vegetables.com', '[\"98b5864eeb369fdaf95c3d4c9f81b436\"]', NULL),
('blue.carrot@vegetables.com', '[\"a00506a81cd305e7d9a2dd49189627a4\"]', NULL),
('blue.carrot@vegetables.com', '[\"c8d5f361e7c5f87c2b595cfdcebddf99\"]', NULL),
('blue.carrot@vegetables.com', '[\"73671b5ae1711b832dcbcedff6101d59\"]', NULL),
('blue.carrot@vegetables.com', '[\"59d563c596ef23ec3caf0417c75e2a79\"]', NULL),
('blue.carrot@vegetables.com', '[\"d9606806a96f95226f2e918d9a721b14\"]', NULL),
('blue.carrot@vegetables.com', '[\"e6202172f0cb79d3858bff9cb6881d0b\"]', NULL),
('blue.carrot@vegetables.com', '[\"ebb1362fa9719377ef6e0b3ce906cd37\"]', NULL),
('blue.carrot@vegetables.com', '[\"1e547b6e7c2a4572042d8f9306f3fe15\"]', NULL),
('blue.carrot@vegetables.com', '[\"93c8c778c1fe2331c1760eb91773573b\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"06ece019d8fe2b8be257ef2bc3c9e9a0\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"c7d956ca4db7d463bc1a8561c8889b2d\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"8047aa0dcc6028724fd9ebb354821b36\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"2b5e8cc4dd48f41bf015f32ecf15419b\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"5865e307356d2afb8cc07bd37693e744\"]', NULL),
('blue.carrot@vegetables.com', '[\"74f35115e3a37db1c848cb6b4842e414\"]', NULL),
('blue.carrot@vegetables.com', '[\"787395ed93c6dea73cf59764394d6a19\"]', NULL),
('blue.carrot@vegetables.com', '[\"7837a0216c068fffdc86bf099df54f31\"]', NULL),
('blue.carrot@vegetables.com', '[\"4ca194f3d1b114e03ec3b3d73915f7d4\"]', NULL),
('blue.carrot@vegetables.com', '[\"4f52a5211138fd0b0143f1a7967ab995\"]', NULL),
('blue.carrot@vegetables.com', '[\"5a367feeca3d386d36fad77649b20696\"]', NULL),
('blue.carrot@vegetables.com', '[\"9fc53113881cfca1f11772794b2cdf19\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"d4135501f9e4e62b820200c36ce391ca\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"2a40f479155e30c994fdc1d13731fb34\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"71f75837ec8042c018b9667eb10ce15f\"]', NULL),
('Blue.carrot@vegetables.com ', '[\"417d2a540c8d1c53b6f0497922558e95\"]', NULL),
('blue.carrot@vegetables.com', '[\"c942b76ab4fabf71c51b0e4bf8a3e0f7\"]', NULL),
('blue.carrot@vegetables.com', '[\"b713dcf9f469ec28a96e4f777acbc427\"]', NULL),
('blue.carrot@vegetables.com', '[\"2cc973eff81e52945b320d737e18d5bd\"]', NULL),
('blue.carrot@vegetables.com', '[\"7b3a4765a168bb06c8fa45a71f732da4\"]', NULL),
('blue.carrot@vegetables.com', '[\"a5a3423f82c82e17be8c44bca6e4555e\"]', NULL),
('blue.carrot@vegetables.com', '[\"15c50dd969f4e91af5263ede26039140\"]', NULL),
('blue.carrot@vegetables.com', '[\"b3e77e7a0ec71718770c5d3a246e3982\"]', NULL),
('blue.carrot@vegetables.com', '[\"d3e8cefcf00b98b8482d69ea46850b38\"]', NULL),
('blue.carrot@vegetables.com', '[\"7d25de9464fa86add3263eb4cac3824e\"]', NULL),
('blue.carrot@vegetables.com', '[\"33d68b8b48f13a97976324161cfe6481\"]', NULL),
('blue.carrot@vegetables.com', '[\"0641f768382178a976049fb51174a792\"]', NULL),
('blue.carrot@vegetables.com', '[\"9987a220332660a89a81da1242fa170a\"]', NULL),
('blue.carrot@vegetables.com', '[\"20ebdd034dc99865b508129f8406f644\"]', NULL),
('blue.carrot@vegetables.com', '[\"509f39ca48b3a16b8c93b9cf8c8b6cb3\"]', NULL),
('blue.carrot@vegetables.com', '[\"965ddd6e19d343cfecb42a352f3a393f\"]', NULL),
('blue.carrot@vegetables.com', '[\"c7ff93401297ee594d449d5fd29e22ff\"]', NULL),
('blue.carrot@vegetables.com', '[\"dc3fce076f7d5cd0edccb020c1f6abf9\"]', NULL),
('blue.carrot@vegetables.com', '[\"cf0fcc76ede01381b6f81577a27e8b87\"]', NULL),
('blue.carrot@vegetables.com', '[\"ad05e068b7415cea0207c51092832a4e\"]', NULL),
('blue.carrot@vegetables.com', '[\"43b346db8883d6298866d6c7b728f27c\"]', NULL),
('blue.carrot@vegetables.com', '[\"1fb4ea913e6391bde5b4d5b1c75222ad\"]', NULL),
('blue.carrot@vegetables.com', '[\"54d6c17643b98c0a8578e8c71918aa82\"]', NULL),
('dan@ase.ro', '[\"f245c34bb43d3f2235111c0698fd395f\"]', NULL),
('dan@ase.ro', '[\"8e10c47ec8cc80bbae04976819501a1e\"]', NULL),
('blue.carrot@vegetables.com', '[\"e8ac63ab8a49e6ee7b279e2227ef05ba\"]', NULL),
('dan@ase.ro', '[\"eef97a54be3ea537926c8cf90a6b3299\"]', NULL),
('blue.carrot@vegetables.com', '[\"ac6735c0da371b3a292c9738bbcac194\"]', NULL),
('dan@ase.ro', '[\"145754560fa325cd11b16b9ad07de8ee\"]', NULL),
('blue.carrot@vegetables.com', '[\"9b6be058113f4f29a86cbefe40e5ff85\"]', NULL),
('dan@ase.ro', '[\"da865c097de312f78cf921def0cb84b2\"]', NULL),
('blue.carrot@vegetables.com', '[\"f47d9ebedd440ecac7e6cc686cbb92cd\"]', NULL),
('dan@ase.ro', '[\"c54d023972a8ea89179265dc9fbc197c\"]', NULL),
('dan@ase.ro', '[\"2a10bef85a1c65f1399e32e5dd1317b0\"]', NULL),
('blue.carrot@vegetables.com', '[\"4dc5d2ed220fac3ebe5c1c4b4fedf2af\"]', NULL),
('dan@ase.ro', '[\"b31865c0d9e6b8af4a70f7583880e147\"]', NULL),
('blue.carrot@vegetables.com', '[\"045064151bf4bdfde3c894f542048dd5\"]', NULL),
('blue.carrot@vegetables.com', '[\"84fb9f48283be061bc9eb7df899344cf\"]', NULL),
('blue.carrot@vegetables.com', '[\"fc4ce47970092207a395b1e9a0902906\"]', NULL),
('dan@ase.ro', '[\"cd7aacabb9afd9d3eb42e0886b810dea\"]', NULL),
('blue.carrot@vegetables.com', '[\"c9c0b33818485bfeca73c5cc41e368ac\"]', NULL),
('dan@ase.ro', '[\"da6cd21d353f54c5a2739e563ea47e3c\"]', NULL),
('blue.carrot@vegetables.com', '[\"a230f6fc86bcb57d8e70c0ae4590843c\"]', NULL),
('dan@ase.ro', '[\"56306cddc0e77d3fa6d763d2181c9187\"]', NULL),
('blue.carrot@vegetables.com', '[\"cd35c1670fa19b5f8b41301a16aa884c\"]', NULL),
('dan@ase.ro', '[\"e1c68869da1b1e84ba9dcedc84f700d5\"]', NULL),
('blue.carrot@vegetables.com', '[\"ec1efd2284dfa6b40052dfd7fdb57844\"]', NULL),
('dan@ase.ro', '[\"e2fb591782cdf64e9c557a71d97dbecb\"]', NULL),
('blue.carrot@vegetables.com', '[\"5cfffcea2778c1ec83f85c368abc64c7\"]', NULL),
('dan@ase.ro', '[\"a3b93b770780e10867aa65ec38d0dc60\"]', NULL),
('dan@ase.ro', '[\"13a319a2763a40495cdcf34b6f8f143a\"]', NULL),
('blue.carrot@vegetables.com', '[\"79c5c96abcd9b60d77ccb6f55a506bfc\"]', NULL),
('blue.carrot@vegetables.com', '[\"327784d2e8ddf33544e455de8d5bd711\"]', NULL),
('dan@ase.ro', '[\"bb2469e13442908b398044a969415055\"]', NULL),
('blue.carrot@vegetables.com', '[\"73c0d0c5c37889be7a6bc0aa62708de0\"]', NULL),
('dan@ase.ro', '[\"2b75ced7e500bbb36e9f72cc1769b1c0\"]', NULL),
('blue.carrot@vegetables.com', '[\"4d010e0bb401381288c53ebab7a7a02b\"]', NULL),
('dan@ase.ro', '[\"f616ab0cd2f0b49dfb43745ff9ad0ea9\"]', NULL),
('blue.carrot@vegetables.com', '[\"0487329962b9afcd945bf192635d6459\"]', NULL),
('dan@ase.ro', '[\"995c21d29a061f0824c60913c2663861\"]', NULL),
('dan@ase.ro', '[\"fbb85a6241cccd9c0227b8e28e58f828\"]', NULL),
('dan@ase.ro', '[\"a6b0e410977057c59a9252c59305a87f\"]', NULL),
('blue.carrot@vegetables.com', '[\"d80ef9de1daa0f3139c8da2c401479f4\"]', NULL),
('blue.carrot@vegetables.com', '[\"bef992faf7ffe07306849c190c380fe6\"]', NULL),
('blue.carrot@vegetables.com', '[\"d11859803da566acaa9c6324ba85cae9\"]', NULL),
('dan@ase.ro', '[\"9272241781f541bcd0e2fd6f0e2c562f\"]', NULL),
('blue.carrot@vegetables.com', '[\"0a285b94344851a53ff28dda4da77493\"]', NULL),
('dan@ase.ro', '[\"f1b3a8356fa7a930360f666f047a85ee\"]', NULL),
('blue.carrot@vegetables.com', '[\"0fdd3bb10c0e1c56731a6ebe5f444d8a\"]', NULL),
('blue.carrot@vegetables.com', '[\"c8b3c6127483481191199f59a3a09941\"]', NULL),
('dan@ase.ro', '[\"3bde659ad37472835829b8e56c57e31d\"]', NULL),
('dan@ase.ro', '[\"ca19b0cfa6f8444f02750fe421f733f9\"]', NULL),
('blue.carrot@vegetables.com', '[\"2946c349d0a6627d7dc189f420a93417\"]', NULL),
('dan@ase.ro', '[\"73e92da1a1842acdf8ed47710a119696\"]', NULL),
('blue.carrot@vegetables.com', '[\"7bd8df5f9a7962123aa0513fe58498da\"]', NULL),
('dan@ase.ro', '[\"d7851d254228cfae2d932019c79533a5\"]', NULL),
('blue.carrot@vegetables.com', '[\"63620f6d019aa45a7314ab90862d26a3\"]', NULL),
('dan@ase.ro', '[\"049f2cef42af5e65e6276680b9a6efbb\"]', NULL),
('dan@ase.ro', '[\"b0f23eaa74824a94e9f7d2703a03b93c\"]', NULL),
('dan@ase.ro', '[\"8c33f03af22b518aeb88d609c1efaa7f\"]', NULL),
('dan@ase.ro', '[\"4735a0d9e4f71d5ab3f641f1e0cc26b0\"]', NULL),
('blue.carrot@vegetables.com', '[\"2b586a192d5fe4e758b2f4981b8f382b\"]', NULL),
('blue.carrot@vegetables.com', '[\"2b8c02a72cf03537378d6fac05b311f5\"]', NULL),
('dan@ase.ro', '[\"adc5bef0ce1b8b3416b24a520243d405\"]', NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `grades`
--

CREATE TABLE `grades` (
  `UserID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `QuizName` varchar(100) NOT NULL,
  `Value` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Feedback` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `grades`
--

INSERT INTO `grades` (`UserID`, `QuizID`, `QuizName`, `Value`, `Total`, `Feedback`, `Date`, `ID`) VALUES
(5, 1, 'General knowledge - basic test', 40, 40, 'Very good!', '2019-07-05', 12),
(5, 12, 'Random Quiz', 50, 60, 'Very good!', '2019-07-06', 15);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `questions`
--

CREATE TABLE `questions` (
  `ID` int(11) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Text` varchar(2048) NOT NULL,
  `Type` varchar(512) NOT NULL,
  `Answers` varchar(4196) NOT NULL,
  `Points` int(11) NOT NULL,
  `CorrectAnswer` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `questions`
--

INSERT INTO `questions` (`ID`, `Author`, `Text`, `Type`, `Answers`, `Points`, `CorrectAnswer`) VALUES
(7, 'blue.carrot@vegetables.com', 'What is the capital of Romania?', 'SingleAnswer', '[\"Bucharest\",\"Budapest\",\"Madrid\",\"Rome\"]', 10, 'Bucharest'),
(8, 'blue.carrot@vegetables.com', 'What year did World War 2 start?', 'SingleAnswer', '[\"1939\",\"1914\",\"1940\",\"1937\",\"1938\"]', 10, '1939'),
(9, 'blue.carrot@vegetables.com', 'What is the standard power line frequency in the USA?', 'SingleAnswer', '[\"50Hz\",\"60Hz\"]', 10, '60Hz'),
(10, 'blue.carrot@vegetables.com', 'In what day of September did World War 2 start?', 'OpenAnswer', '[]', 10, '1'),
(11, 'blue.carrot@vegetables.com', 'What is OOP?', 'OpenAnswer', '[]', 10, 'Object Oriented Programming'),
(12, 'blue.carrot@vegetables.com', 'How many types of constructors are available, in general, in any language?', 'SingleAnswer', '[\"2\",\"3\",\"4\",\"5\"]', 10, '3'),
(17, 'blue.carrot@vegetables.com', 'Which constructor is called while assigning some object with another?', 'SingleAnswer', '[\"Default\",\"Parameterized\",\"Copy\",\"Direct assignment is used\"]', 10, 'Copy'),
(18, 'blue.carrot@vegetables.com', 'Which specifier applies only to the constructors?', 'OpenAnswer', '[]', 10, 'Explicit'),
(19, 'blue.carrot@vegetables.com', 'What day is today?', 'OpenAnswer', '[]', 10, 'Thursday'),
(20, 'blue.carrot@vegetables.com', 'When is the static constructor called?', 'OpenAnswer', '[]', 10, 'before creation of first instance of that class');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `quizzes`
--

CREATE TABLE `quizzes` (
  `ID` int(11) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `CourseName` varchar(50) NOT NULL,
  `Questions` varchar(8192) NOT NULL,
  `Duration` int(11) NOT NULL,
  `QuizName` varchar(2048) NOT NULL,
  `Public` tinyint(1) NOT NULL,
  `Geofencing` tinyint(4) NOT NULL,
  `GeofencingData` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `quizzes`
--

INSERT INTO `quizzes` (`ID`, `Author`, `CourseName`, `Questions`, `Duration`, `QuizName`, `Public`, `Geofencing`, `GeofencingData`) VALUES
(1, 'blue.carrot@vegetables.com', 'General knowledge', '[7,8,9,10]', 120, 'General knowledge - basic test', 1, 0, NULL),
(5, 'blue.carrot@vegetables.com', 'poo', '[12,17,18]', 180, 'poo concepts', 1, 0, NULL),
(6, 'blue.carrot@vegetables.com', 'poo', '[11,12,18]', 180, 'poo test2', 1, 0, NULL),
(7, 'blue.carrot@vegetables.com', 'abc', '[7,8]', 120, 'abc a', 0, 0, NULL),
(8, 'blue.carrot@vegetables.com', 'Object Oriented', '[11,12,20]', 180, 'OOP', 0, 0, NULL),
(12, 'blue.carrot@vegetables.com', 'Life', '[8, 17, 20, 12, 9, 7]', 480, 'Random Quiz', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `PasswordHash` varchar(64) NOT NULL,
  `UserType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`ID`, `FirstName`, `LastName`, `Email`, `PasswordHash`, `UserType`) VALUES
(1, 'Andrei', 'Popescu', 'andrei.popescu@ase.ro', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', 'Student'),
(2, 'andreea', 'preda', 'aaa@ppp.com', '1234567891012345678910123456789101234567891012345678910123456789', 'Student'),
(3, 'Mother', 'Horse Eyes', 'mother.he@r.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Student'),
(4, 'Blue', 'Carrot', 'blue.carrot@vegetables.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Professor'),
(5, 'Dan', 'Lana', 'dan@ase.ro', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Student'),
(21, 'sda', 'gfdsa', 'dan@ase.ro', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Student');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `grades`
--
ALTER TABLE `grades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pentru tabele `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pentru tabele `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
