'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "472f4b772fe383c47940e80594d72eb6",
"version.json": "22cf1ca81d9815457b4fe2e2db7ea411",
"index.html": "074028507968301ec97ee1d5722d4716",
"/": "074028507968301ec97ee1d5722d4716",
"main.dart.js": "847fdef5001347bc6f916eeb9b860c12",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"logo.png": "d5b8853c0175cf55e4da45d18b33faeb",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "60722f975ccdb2448253251faa780092",
".git/config": "53e42e84744229185c2f16a002a721cf",
".git/objects/0d/22458fb5d25166a00de9ccea2e30539ca21c83": "b07c9f83c19a58beee1715fbc898bab8",
".git/objects/68/68f7bb64ba71b131690286ddc82aa0f542293e": "b6aeab417f5d5ef28ea070a09b61c7e0",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/3b/fefb22aa51a2f039e141663be00884df0f2433": "c03f4b12c89b12ef3ed86f5298bbaae5",
".git/objects/03/3ff1aeff50adcd5c63afc3cc6d1771aab1b9cf": "c6e2ef0311914ceec78a180090c95835",
".git/objects/04/b1dadffb3d1c5535ccb4835ffd2040b089c57c": "f47fef66073a05bf34f56e0bf9983de4",
".git/objects/35/acda2fa1196aad98c2adf4378a7611dd713aa3": "b485406370fdb56248ec4e5fc074fb65",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/69/09f292983a3f929eb521b080a1adab2fd53ba6": "81d2b2ccaec5888a28d0a0b797fe9a2a",
".git/objects/69/fc96a48a83b14b983a2189a34abab8cf8fc38f": "cfebe72cab82e8d82acda46de5de6d3e",
".git/objects/93/c60eb387acbe564cac24736b98a737c945fde4": "1bd18f949335d6ef369cb8cfc1cc1028",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/05/f874690543b9b129e6f3bb5796857cce820b16": "9591860b3a79077958c8ecd87aeb82fb",
".git/objects/02/adb9e91518c331b5bbb46f38a0ae460d388a8c": "a02a7d42654f2b03e10487a98c9c4986",
".git/objects/a4/c1fef52042a08aa207c84c57059c747f8f1ab8": "15c64f18ec827913894c335c35bd7d19",
".git/objects/a3/4b5f162ffe25fc7bbb26b48c93f92833582168": "9a2f7911f9d768c0532a18332d8ead43",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/ad/bf0e3bd400c178db5c3af43fc961c388a67153": "86ebc1c32eee9eed8e4189410e5600d8",
".git/objects/d7/b77d3c2acaa9f786da9b6bcbe8eeaae0fb4cbf": "8df81003a8799f66522d33577c30e123",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/bd/0a25697474fd896085455182e2694416fa6725": "b961ceb1f7cb10a4d9a6acc52f2f48e2",
".git/objects/d1/ac9ba1169e4076832034c5585e1c5bf9d6f83c": "876bc5615b97dd6984ed3a864ba27059",
".git/objects/d6/f0ad531ce0f72fba43b46c899dbb266b71c546": "15de02bc7904c12040460cb6f76a6375",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/ae/9c9d020a90e32db55f12556507a81e2c66e540": "36a9c2918fb1129c9c1b7015b186e428",
".git/objects/e5/0801b3b620af91f824c7655df7d064db05b764": "3a034b2609afa6f9a14cf62c9fb57254",
".git/objects/e2/b5fbb02fd0ce400780207ac39d203a319af7bb": "4bb073efbd374cfa8e7e0d1b0377cd4c",
".git/objects/f3/3e8162997aaa9da582aa81428ee87aa48953a6": "fc158db0779aaef1b463487bc31157f0",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/fc/567cd2f11d83683d9eb4ca1a5fdc912f7d417c": "a043e3e370f27b8721ecd4c53e4c975e",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/80/4e30167da71f85e212e0e5cdefe890f6d064ac": "2df1f250095168c18bc0affe978c3b3e",
".git/objects/74/7fd064b602aedfdd2b87537f161d48e6647283": "bea4d989f1614dacaeefafb3b1652171",
".git/objects/28/88a9b36cae5231d60edf532ae89cc099e5ded9": "12cd5fc401669ccac5518e4da9967510",
".git/objects/17/b75500f0e6bc90dc8f39f383c469425991e787": "78eb5f9f2053ab9b9907ac7672d25d48",
".git/objects/8f/c8be62f202c40e7d3e2e16242fb065cfc4e1a7": "6fda1b80da67a8d96186cf8ab8b24087",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/19/05a8f6503d37cb00deede648f36878fff43558": "072d6b0e2e983e241dccaf0fbe2546b3",
".git/objects/4c/1ed3cf19a6304797131e586cc601d199ada404": "31a88ac257a37c894709765b40e7a040",
".git/objects/86/94fcccf5f4542fe9a4f86851bbaaebd29015cf": "d2d6581995d42c0a591fb55248f1075d",
".git/objects/72/b3cff41cf34cb7419c362f1e67e46716a781c6": "53b67a869fa904444af6cbd35c1ad4b8",
".git/objects/2a/bf03542c17e6f7a7806a226c3be732b51c5a40": "4593012a42df8795cd0ae089a5b7aaaf",
".git/objects/43/88af30cadb81ac74af239644aa3bcd49a831dd": "0ac25f7fcd6e339531be35f288ffe90d",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/00/58d768e16f36a097567a5a01c4eeeb5e51ed31": "e27f8437cfa880760f6a2c5d39053801",
".git/objects/6e/cb68683477ecc5aed38ec3fc8910d9bb66276c": "8081799c6f0d89b405c8cca2b18cd6da",
".git/objects/31/39dc7cf301ea55d8f5e781d98d5c58a6ee1ccd": "e26ff2b827306e1115fe3796b3329bdc",
".git/objects/31/f1dc8ac5f5e10ee85e52f6d9806b5f71a9283a": "11032ced008402c54e6a6dc04dab20a8",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/65/ee1bc8d0ade0a38b2e77d7a6c7e65c18af7476": "76aaea9431e38942c1444bb4729b9c3b",
".git/objects/65/ba036495f3995b637163e9afe9be99bb655570": "daefaddf0a96ab42cd27fd72dff22664",
".git/objects/96/e2e81a3d1e00f2638000e2110075d3af23cfbe": "fa5d75dadf587cc64c82eaf9de652f15",
".git/objects/98/001f8429113eeb6b474640d286fcdac3e6d09a": "b0cef4b6ce642b182032b96bf952b19e",
".git/objects/5e/ee8559fa6e4d7d3b257691dc80e90b77d18601": "47419fe5923a298f512c292c418d0791",
".git/objects/06/b40b12e77b056f0b4113b3686b71414fd89e6b": "0e3cd48453be2a26aa75673e7a4dca28",
".git/objects/06/7f72f0b3583755b929e5a2a90cf14d0762b33c": "b633cc3e707fb69231cb7e04a213bf07",
".git/objects/6c/ce217ddc2efe3411dc9fa34e294e48e4cdf4f5": "8a6cc32e7f23f25e611213b06bb38448",
".git/objects/55/43bf92a55eb37fbee9688471f855b393b361bc": "adc787301c1bcf810234420f8c3762c6",
".git/objects/0a/50b3db5fba604171d33d747ed9bbb6e8da8c32": "31810c95e4cf364219a72a57aea56cd3",
".git/objects/bf/67fba17c1aa206d858c87a2ca78bfd31cb95ef": "d9a2c23b1e2e50b000f2bbc1adb6e4cf",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/ba/873595714be0aed5b3f40c3f409125d58b741e": "090eab633a2fc6144387ae5913e6fe15",
".git/objects/dd/91d05e99ed6bd9d693127d2731108c144eec60": "6233bec8db4c99a46228e4e71b5bbe92",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/9167687c1b7eabb8d9c78a66c60bac3f39e290": "5c0a71fbc75b4f7b1e6de0ac192ff334",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/a1/0e5c52451d3cf42c65efc2247a4f6e5e3d2dba": "89e9c64c7ff0e37e0f01d6c61540de21",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/e6/cc1238dbc0b7ccf7f9688c5ed49177fcfbf8c9": "9cc5a5efdd3c45e2b3243d052fb3b9f1",
".git/objects/f0/564baca35992a6def109f84dda548074fde1f4": "2896fdb6b2a7e8db3e3e2ba1910d7ba9",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/cb/6e6673c4fe787d6daba1332afa4886f8c23403": "6e669f4b767e269ea1bd8ad05e2d3dbb",
".git/objects/cb/c2c2212688cc6d750ce3eace6443ea303efc76": "8c2738f4511a8bd97ef4adcb34398934",
".git/objects/f8/daedca4515bb70b84038c6c447022f868f57ab": "6a10cef0b99704e835bd0f233ca880ac",
".git/objects/ce/e3c5bb4ad9ca1b7e02e3391cc1cbba998308b7": "8e23cc0d8eea61c17a30b19ec3ccb417",
".git/objects/46/975e51344bcae4d25f5b645fe3253bcd76efce": "ad41836d177b8710bba24c9a9ed587b9",
".git/objects/41/b0ab4ddfe0371ea9a4acf7502b21699eb3e57a": "0d03934dfb92f358af38d17cd61ef6d5",
".git/objects/83/9554afc40282964bc6d4a1d59dfa6769a5f5f9": "f3c85201cf16e67891f28a55874168ef",
".git/objects/83/280a4151e30af49623df6b6a404c67720b1ef8": "320d7a486d64040b2fbebc8712e1fca9",
".git/objects/70/21299ce9d76d13c000f5fb786a033284e86c31": "e294640833c502fe54e7f775c3b2f22c",
".git/objects/4a/c95f0c9bd9bd4a2d9b21e4eb03ba0b62744773": "40a9b89d55085b824cedfd7c07cac8c9",
".git/objects/23/e0d7e61228577fbe15d40ae93116ea286813c1": "e9887a4520964b17d226de7dd3d6da86",
".git/objects/23/2efd37ead6eadfa2b4f07e8d3be14385c564c3": "1499101414f48d696ca87599b5e3dcda",
".git/objects/8d/498c3eccbdc2707ffd77421b62540bbfbe97f6": "faf2426d5285fc58c360ab6ab09623a3",
".git/objects/1d/468b85698a60041b450286f31b3264b3bbd6f7": "5c8c497111befde32ac151f14cf92f85",
".git/objects/71/9442d420a9c3d8df77d85b6f6ea1bc55bd39cc": "f0f785e8e884c8c1befbda9dcd273a1d",
".git/objects/76/d91cb9895982d66c398f9da3daa61470488fb6": "eb9c926b9504ff85b80091feb21a6b60",
".git/objects/82/09cf9878585219786facb0c42dc5a2899fac4e": "7dc1347e0d61ce06a38fed50dd4e5f5e",
".git/objects/49/698e74205843ebf63e7af48dda68e5b6fde879": "c35a3360410ae549c879baf34348f2e8",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/2b/d8fc7d6568c143e409f2357025a56656b22a8f": "4095034a828e2f1817ffcff07df9f5fd",
".git/objects/2b/c6ff517fc527ce9914de7fc533ef3aee1ac8e9": "d94aea77baa1abf3cce46013713e65a0",
".git/objects/47/f3d1c0b972ffa42c1048448d60eb298a8ee000": "c8ddea3a9ca3a25b723d2e50bd82ddc9",
".git/objects/8b/c1407630d5d6e53fc99ff460b494a12faa659a": "a19cc64f017bde9ede45621d9a6d2d86",
".git/objects/8b/81861106c30d4998264dd4452c50187e081168": "1a61c64aace0d8fa4a2589c3c674e748",
".git/objects/8b/c40fb26372c5f0255648c4b02c1cda63d99cd9": "d5cef9cced82b7e002c33eab6f334636",
".git/objects/7a/882288b15e0ff43e774497f9caa324a5afb82e": "9e62fde5c232154f3bfbd3b044786efc",
".git/objects/14/c36f7b468d5ee5a12c832175ac057daeb219e5": "e3683a5878ce826d82ae6ff557b8315c",
".git/objects/25/f01f20a4efed1d60d0f4d2cdcec8b4ea2e445b": "6a701479e3c15457eba3c81336881f38",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "e29f25db1b7f0677549e5055a4d7cfa6",
".git/logs/refs/heads/gh-pages": "2102f0350d2af2d387abbf395215b3a8",
".git/logs/refs/remotes/origin/gh-pages": "24c94e55bc011d6e17fc310996ca2c9c",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "18effbed4c85cd5e9d6b82917027bac5",
".git/refs/remotes/origin/gh-pages": "18effbed4c85cd5e9d6b82917027bac5",
".git/index": "d4ce09638d0ce17c7478fba7abe69f93",
".git/COMMIT_EDITMSG": "f4c297d2668afefeed2fac5ce0d82537",
"assets/AssetManifest.json": "99b457d4a6e55ff45f8063538e1d611a",
"assets/NOTICES": "71d2fd6788ba418886daf21e781ebbb7",
"assets/FontManifest.json": "4f5c6372e52ed085732d81b206cfd9ac",
"assets/AssetManifest.bin.json": "5407c89ffbb9f6f07906affac3808e0c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bf21cd8fd775a3c59fd53afdee39e0e6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00a0d5a58ed34a52b40eb372392a8b98",
"assets/packages/flutter_vector_icons/fonts/Fontisto.ttf": "b49ae8ab2dbccb02c4d11caaacf09eab",
"assets/packages/flutter_vector_icons/fonts/Octicons.ttf": "f7c53c47a66934504fcbc7cc164895a7",
"assets/packages/flutter_vector_icons/fonts/Feather.ttf": "a76d309774d33d9856f650bed4292a23",
"assets/packages/flutter_vector_icons/fonts/Entypo.ttf": "31b5ffea3daddc69dd01a1f3d6cf63c5",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Brands.ttf": "3b89dd103490708d19a95adcae52210e",
"assets/packages/flutter_vector_icons/fonts/MaterialCommunityIcons.ttf": "b62641afc9ab487008e996a5c5865e56",
"assets/packages/flutter_vector_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_vector_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_vector_icons/fonts/Ionicons.ttf": "b3263095df30cb7db78c613e73f9499a",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Solid.ttf": "605ed7926cf39a2ad5ec2d1f9d391d3d",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Regular.ttf": "1f77739ca9ff2188b539c36f30ffa2be",
"assets/packages/flutter_vector_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_vector_icons/fonts/Zocial.ttf": "1681f34aaca71b8dfb70756bca331eb2",
"assets/packages/flutter_vector_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_vector_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_vector_icons/fonts/MaterialIcons.ttf": "8ef52a15e44481b41e7db3c7eaf9bb83",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/lib/image/image%2520fluxos/Agente%2520de%2520I.A%2520com%2520Debounce.png": "00668c15197c2eec3f73666ad2f7fcdc",
"assets/lib/image/image%2520fluxos/Gerador%2520de%2520Conte%25C3%25BAdos%2520com%2520Worpress.png": "be4176b1fe2965c3c105e3acea0de97e",
"assets/lib/image/image%2520fluxos/Agente%2520de%2520I.A%2520para%2520E-mails.png": "c851e19eddcc616ddc253974f8745433",
"assets/lib/image/image%2520fluxos/Extrator%2520de%2520dados%2520comerciais%2520do%2520Google%2520Maps.png": "4c16ca0b0f49c7e11ed8e66f53987541",
"assets/lib/image/image%2520fluxos/Transcri%25C3%25A7%25C3%25A3o%2520autom%25C3%25A1tica%2520de%2520%25C3%2581udio.png": "44bbf07cd5b7dbdf8036870f268aa136",
"assets/lib/image/image%2520fluxos/Resumidor%2520de%2520Grupos%2520de%2520WhatsaApp.png": "340616d24394d6e950ac38afbad708f2",
"assets/lib/image/image%2520fluxos/Transcri%25C3%25A7%25C3%25A3o%2520Autom%25C3%25A1tica%2520de%2520Reuni%25C3%25B5es.png": "4943ebefefdcd0877ff26658a90b5969",
"assets/lib/image/image%2520fluxos/Extrator%2520de%2520Not%25C3%25ADcias%2520Di%25C3%25A1rias.png": "4508a696dfa2dc1ce3acc3b8935f464e",
"assets/lib/image/image%2520fluxos/Disparo%2520em%2520massa.png": "5131993c7f6d85dac314cae6510bc19f",
"assets/lib/image/image%2520fluxos/Agente%2520de%2520Agendamentos.png": "78e9b9b5d6a92a36651c06880f9282c7",
"assets/lib/image/logo.png": "d5b8853c0175cf55e4da45d18b33faeb",
"assets/AssetManifest.bin": "d20cbef66bb75e4c32edb5ffac5fcf22",
"assets/fonts/MaterialIcons-Regular.otf": "07a4ba65b57f1a1c3e5986db687947aa",
"assets/assets/transcricao_automatica_de_audio_png.png": "44bbf07cd5b7dbdf8036870f268aa136",
"assets/assets/resumidor_de_grupos_de_whatsaapp_png.png": "340616d24394d6e950ac38afbad708f2",
"assets/assets/transcricao_automatica_de_reunioes_png.png": "4943ebefefdcd0877ff26658a90b5969",
"assets/assets/extrator_de_dados_comerciais_do_google_maps_png.png": "4c16ca0b0f49c7e11ed8e66f53987541",
"assets/assets/agente_de_agendamentos_png.png": "78e9b9b5d6a92a36651c06880f9282c7",
"assets/assets/disparo_em_massa_png.png": "5131993c7f6d85dac314cae6510bc19f",
"assets/assets/extrator_de_noticias_diarias_png.png": "4508a696dfa2dc1ce3acc3b8935f464e",
"assets/assets/gerador_de_conteudos_com_worpress_png.png": "be4176b1fe2965c3c105e3acea0de97e",
"assets/assets/agente_de_i_a_para_e_mails_png.png": "c851e19eddcc616ddc253974f8745433",
"assets/assets/agente_de_i_a_com_debounce_png.png": "00668c15197c2eec3f73666ad2f7fcdc",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
