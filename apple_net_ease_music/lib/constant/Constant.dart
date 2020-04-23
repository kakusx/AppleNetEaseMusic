import 'package:appleneteasemusic/widget/AlbumImgItem.dart';
import 'package:appleneteasemusic/widget/AlbumLargeItem.dart';
import 'package:appleneteasemusic/widget/ArtistAvatar.dart';
import 'package:appleneteasemusic/widget/MusicStyle.dart';
import 'package:appleneteasemusic/widget/MvItem.dart';
import 'package:appleneteasemusic/widget/SongItem.dart';
import 'package:flutter/cupertino.dart';

//region 专辑列表
List<Widget> albumList = [
  AlbumImgItem(
    key: Key('1'),
    title: '新世界NEW WORLD',
    subTitle: '华晨宇',
    imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('2'),
    title: '100 Ways',
    subTitle: '王嘉尔',
    imgSrc: 'http://p2.music.126.net/bZxfyuY58soD71VGxv6BDQ==/109951164814715844.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('3'),
    title: '从M到W的高速公路',
    subTitle: 'Lil Ghost小鬼',
    imgSrc: 'http://p2.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('4'),
    title: '아무도 모른다 OST',
    subTitle: 'V.A.',
    imgSrc: 'http://p1.music.126.net/r46Yx_4pVF1XgoQNS4_fIg==/109951164922833531.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('5'),
    title: 'IVORY',
    subTitle: '沈圭善',
    imgSrc: 'http://p1.music.126.net/KsO32EFqwyptOMqA1hYGFQ==/109951164922653118.jpg?param=177y177',
  ),
];
//endregion

//region 浏览页面 顶部大图
List<Widget> largeAlbums = [
  AlbumLargeItem(albumType: '新专辑', title: 'Fight as ONE', artist: '陈奕迅,蔡依林', imgSrc: 'http://p4.music.126.net/DmrUUFqk5gcBLSU4bQIaXQ==/109951164866101330.jpg', ),
  AlbumLargeItem(albumType: '推荐歌单', title: '不想醒来', artist: '邓典', imgSrc: 'http://p3.music.126.net/JWhcbw6bpd8dph6JwHdPxg==/109951164883865343.jpg', ),
  AlbumLargeItem(albumType: '推荐专辑', title: '疯人院', artist: '华晨宇', imgSrc: 'http://p4.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg', ),
  AlbumLargeItem(albumType: '新单曲', title: '덤더럼(Dumhdurum)', artist: 'Apink', imgSrc: 'http://p4.music.126.net/70aqeNGo-m7rFRzQ9NhFaQ==/109951164900505375.jpg', ),
  AlbumLargeItem(albumType: '新专辑', title: 'Home', artist: '蔡徐坤', imgSrc: 'http://p4.music.126.net/vs-Bg4Camyvlmi3_QYmiDg==/109951164886377774.jpg', ),
  AlbumLargeItem(albumType: '新专辑', title: '全世界最好的你', artist: '许嵩', imgSrc: 'http://p4.music.126.net/ge44m1UX_M4ZKqn57QUHvw==/109951164885142881.jpg', ),
  AlbumLargeItem(albumType: '新单曲', title: '你最近还好吗', artist: 'Lil Ghost小鬼', imgSrc: 'http://p4.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg', ),
  AlbumLargeItem(albumType: '新单曲', title: '放肆爱', artist: '群星', imgSrc: 'http://p3.music.126.net/ZpDoVyT2Td1wUBQ4W8xUMg==/109951164889850460.jpg', ),
];
//endregion

//region 热门歌手列表
List<Widget> artistList = [
  ArtistAvatar('华晨宇', 'https://p1.music.126.net/eiazGAbIGMBF-Q9lInm5xw==/109951164158509628.jpg?param=130y130'),
  ArtistAvatar('阿冗', 'https://p1.music.126.net/HxK8Q8RxyoAqTxo-mEvCIg==/109951164598937387.jpg?param=130y130'),
  ArtistAvatar('林俊杰', 'https://p1.music.126.net/cnGpIQ6rQCKVrDyVVSpzeg==/3263350518850877.jpg?param=130y130'),
  ArtistAvatar('毛不易', 'https://p1.music.126.net/ZXX_c7YiEcNp5HVQWa-y6A==/109951164528322889.jpg?param=130y130'),
  ArtistAvatar('G.E.M.邓紫棋', 'https://p1.music.126.net/R5fsMgpLHC9mJbLLA6EKLA==/109951164561120345.jpg?param=130y130'),
  ArtistAvatar('周深', 'https://p1.music.126.net/Ot5lozXLb4KGdMDFy7zUfQ==/109951164854658932.jpg?param=130y130'),
  ArtistAvatar('李荣浩', 'https://p1.music.126.net/_W32UnT5MESZqP3rU9dpXg==/109951164538804750.jpg?param=130y130'),
  ArtistAvatar('薛之谦', 'https://p1.music.126.net/jq8QrogorsmwJv3Xn7_UOQ==/109951163765021940.jpg?param=130y130'),
];
//endregion

//region 热门推荐
List<Widget> hotList = [
  AlbumImgItem(
    key: Key('1'),
    title: '新世界NEW WORLD',
    subTitle: '华晨宇',
    imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('2'),
    title: '100 Ways',
    subTitle: '王嘉尔',
    imgSrc: 'http://p2.music.126.net/bZxfyuY58soD71VGxv6BDQ==/109951164814715844.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('3'),
    title: '从M到W的高速公路',
    subTitle: 'Lil Ghost小鬼',
    imgSrc: 'http://p2.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('4'),
    title: '아무도 모른다 OST',
    subTitle: 'V.A.',
    imgSrc: 'http://p1.music.126.net/r46Yx_4pVF1XgoQNS4_fIg==/109951164922833531.jpg?param=177y177',
  ),
  AlbumImgItem(
    key: Key('5'),
    title: 'IVORY',
    subTitle: '沈圭善',
    imgSrc: 'http://p1.music.126.net/KsO32EFqwyptOMqA1hYGFQ==/109951164922653118.jpg?param=177y177',
  ),
];
//endregion

//region 音乐分类
List<Widget> musicStyles = [
// 怀旧| 清新| 浪漫| 伤感| 治愈| 放松| 孤独| 感动| 兴奋| 快乐| 安静| 思念|
  MusicStyle(name: '怀旧', imgSrc: 'https://kakus.cn/static/music_img/music_folk.png',),
  MusicStyle(name: '清新', imgSrc: 'https://kakus.cn/static/music_img/music_book.png',),
  MusicStyle(name: '浪漫', imgSrc: 'https://kakus.cn/static/music_img/music_acg.png',),
  MusicStyle(name: '伤感', imgSrc: 'https://kakus.cn/static/music_img/music_blues.png',),
  MusicStyle(name: '治愈', imgSrc: 'https://kakus.cn/static/music_img/music_world.png',),
  MusicStyle(name: '放松', imgSrc: 'https://kakus.cn/static/music_img/music_pop.png',),
  MusicStyle(name: '孤独', imgSrc: 'https://kakus.cn/static/music_img/music_rock.png',),
  MusicStyle(name: '感动', imgSrc: 'https://kakus.cn/static/music_img/music_hiphop.png',),
  MusicStyle(name: '兴奋', imgSrc: 'https://kakus.cn/static/music_img/music_stage.png',),
  MusicStyle(name: '快乐', imgSrc: 'https://kakus.cn/static/music_img/music_metal.png',),
  MusicStyle(name: '安静', imgSrc: 'https://kakus.cn/static/music_img/music_light.png',),
  MusicStyle(name: '思念', imgSrc: 'https://kakus.cn/static/music_img/music_china.png',),
];
//endregion

//region 新歌列表
List<Widget> newSongs = [
  SongItem(title: '旁若无人', artist: '黄霄雲', imgSrc: 'http://p3.music.126.net/sxPVS71OvJ0i5HeZijKXtg==/109951164929105532.jpg', ),
  SongItem(title: '降临', artist: '华晨宇', imgSrc: 'http://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg', ),
  SongItem(title: '煎熬', artist: '尹毓恪', imgSrc: 'http://p4.music.126.net/VoOnN18xSPNWl-a-GEoJpA==/109951164903592379.jpg', ),
  SongItem(title: '交出邦尼', artist: '吉克隽逸', imgSrc: 'http://p4.music.126.net/qBYUsf09DYcX9NcikMyhXg==/109951164919380021.jpg', ),
  SongItem(title: '下世纪初雪', artist: '朱星杰', imgSrc: 'http://p4.music.126.net/7RWlex3BNrY6PrcTQSOCag==/109951164903746117.jpg', ),
  SongItem(title: 'You Are So Beautiful', artist: '林彦俊', imgSrc: 'http://p4.music.126.net/I25f44BuKruBw6JMJlUguA==/109951164887519806.jpg', ),
  SongItem(title: '她她', artist: '彭楚粤', imgSrc: 'http://p4.music.126.net/gU5ta0aUZs7K1I06dC36Lg==/109951164900215656.jpg', ),
  SongItem(title: '有你的青春', artist: '刘人语,龚俊,颜丙沂,杨格', imgSrc: 'http://p3.music.126.net/7BmovxtZuPqoDlgi7srGAA==/109951164903435298.jpg', ),
  SongItem(title: '不想醒来', artist: '邓典', imgSrc: 'http://p3.music.126.net/JWhcbw6bpd8dph6JwHdPxg==/109951164883865343.jpg', ),
  SongItem(title: '疯人院', artist: '华晨宇', imgSrc: 'http://p4.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg', ),
  SongItem(title: '덤더럼(Dumhdurum)', artist: 'Apink', imgSrc: 'http://p4.music.126.net/70aqeNGo-m7rFRzQ9NhFaQ==/109951164900505375.jpg', ),
  SongItem(title: 'Home', artist: '蔡徐坤', imgSrc: 'http://p4.music.126.net/vs-Bg4Camyvlmi3_QYmiDg==/109951164886377774.jpg', ),
  SongItem(title: '新世界', artist: '华晨宇', imgSrc: 'http://p4.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg', ),
  SongItem(title: '全世界最好的你', artist: '许嵩', imgSrc: 'http://p4.music.126.net/ge44m1UX_M4ZKqn57QUHvw==/109951164885142881.jpg', ),
  SongItem(title: '你最近还好吗', artist: 'Lil Ghost小鬼', imgSrc: 'http://p4.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg', ),
  SongItem(title: 'Fight as ONE', artist: '陈奕迅,蔡依林', imgSrc: 'http://p4.music.126.net/DmrUUFqk5gcBLSU4bQIaXQ==/109951164866101330.jpg', ),
  SongItem(title: '放肆爱', artist: '群星', imgSrc: 'http://p3.music.126.net/ZpDoVyT2Td1wUBQ4W8xUMg==/109951164889850460.jpg', ),
  SongItem(title: 'Take Yourself Home', artist: 'Troye Sivan', imgSrc: 'http://p3.music.126.net/6nuFSMK3UMG5nLsreYX1Vg==/109951164862495860.jpg', ),
  SongItem(title: '꽃 (flower)', artist: 'Code Kunst', imgSrc: 'http://p3.music.126.net/sUV5ofnck1GwfdrtHAS--g==/109951164864019028.jpg', ),
  SongItem(title: '收爱', artist: '群星', imgSrc: 'http://p4.music.126.net/WK9auqAdrtr65AllayEgyg==/109951164900356136.jpg', ),
  SongItem(title: '爱若琉璃', artist: '周深', imgSrc: 'http://p3.music.126.net/J5zZ2sKKuUaW5OikQ-535w==/109951164857593249.jpg', ),
  SongItem(title: 'Monica', artist: '钟楚曦', imgSrc: 'http://p4.music.126.net/4pekN5LJI5tUM5ZqZt764A==/109951164857008743.jpg', ),
  SongItem(title: '爱未央', artist: '鞠婧祎', imgSrc: 'http://p3.music.126.net/p6mP1ndkEUxbb7dm4_PlHA==/109951164845168635.jpg', ),
  SongItem(title: '你的色彩', artist: '声入人心男团 Super Vocal', imgSrc: 'http://p3.music.126.net/sHGpFM_nB61mOQo1IEr2uw==/109951164840781495.jpg', ),
  SongItem(title: '아프다', artist: 'KUSH', imgSrc: 'http://p4.music.126.net/n5ayXPab7jk1cdDKXeTHBg==/109951164852973523.jpg', ),
  SongItem(title: '最好的青春纪念', artist: '尼格买提·热合曼,孙艺洲,董力', imgSrc: 'http://p4.music.126.net/GjzlIYvjg0l1OCa4JZw5UQ==/109951164853722014.jpg', ),
  SongItem(title: '有一件美好的事情将要发生', artist: '周深', imgSrc: 'http://p3.music.126.net/wvnIU5Rf3Ty1MnqaBXfY5Q==/109951164839904183.jpg', ),
  SongItem(title: 'Better Days', artist: 'OneRepublic', imgSrc: 'http://p3.music.126.net/AqZeiCIehJg5oD1tcb42Zg==/109951164839030963.jpg', ),
  SongItem(title: '朋友请听好 (谢娜版)', artist: '谢娜,朋友请听好', imgSrc: 'http://p3.music.126.net/A_1yN6JfaEoLixhl-3yBIg==/109951164833209811.jpg', ),
  SongItem(title: 'Digital Lover (GRAY ver.)', artist: 'Gray', imgSrc: 'http://p3.music.126.net/kvsbIMsDbA9-UHKk748KTQ==/109951164840870993.jpg', ),
  SongItem(title: '晚安吧，太阳', artist: '金玟岐', imgSrc: 'http://p3.music.126.net/vKfujmFCW3_2_UDr9E95kQ==/109951164833809104.jpg', ),
  SongItem(title: '100 Ways', artist: '王嘉尔', imgSrc: 'http://p3.music.126.net/bZxfyuY58soD71VGxv6BDQ==/109951164814715844.jpg', ),
  SongItem(title: '谜', artist: '群星', imgSrc: 'http://p4.music.126.net/cfC3HLKxf-bNpIcZHq9o7A==/109951164824421760.jpg', ),
  SongItem(title: '有可能的夜晚 (Live)', artist: '歌手', imgSrc: 'http://p4.music.126.net/-EV4XhJEJn_Ib7ebS1OHhg==/109951164820593469.jpg', ),
  SongItem(title: 'Last Dance (Live)', artist: '歌手', imgSrc: 'http://p3.music.126.net/-EV4XhJEJn_Ib7ebS1OHhg==/109951164820593469.jpg', ),
  SongItem(title: '请别走 (行かないで) (Live)', artist: '歌手', imgSrc: 'http://p4.music.126.net/-EV4XhJEJn_Ib7ebS1OHhg==/109951164820593469.jpg', ),
  SongItem(title: '降临 (Live)', artist: '歌手', imgSrc: 'http://p3.music.126.net/-EV4XhJEJn_Ib7ebS1OHhg==/109951164820593469.jpg', ),
  SongItem(title: '当遇见你', artist: '萨顶顶', imgSrc: 'http://p4.music.126.net/vUdwr3NRK5dxzAgLMe__zw==/109951164817325275.jpg', ),
  SongItem(title: 'Love You More', artist: 'Steve Aoki,张艺兴,will.i.am', imgSrc: 'http://p4.music.126.net/AS_R1vWul_XseP_g4qj9PA==/109951164770774918.jpg', ),
  SongItem(title: '等着等着就老了', artist: '李荣浩', imgSrc: 'http://p4.music.126.net/JZ0L_3ZMY8UgFCEUN5d_tw==/109951164795031716.jpg', ),
  SongItem(title: 'Outside', artist: '张钰琪', imgSrc: 'http://p4.music.126.net/5PR1zXsb5MpWW9fC_lqk2Q==/109951164795221871.jpg', ),
  SongItem(title: 'Light The Light', artist: 'RADWIMPS', imgSrc: 'http://p4.music.126.net/dQL9KZXbmGZGE2iwiCbrOw==/109951164800334633.jpg', ),
  SongItem(title: '神树 (Live)', artist: '歌手', imgSrc: 'http://p4.music.126.net/muqRnruZBkljZgnvzDzE_A==/109951164795622920.jpg', ),
  SongItem(title: '双栖动物', artist: '韦礼安', imgSrc: 'http://p3.music.126.net/P6WPN9OYQoI_rnxANB4Y8Q==/109951164817807374.jpg', ),
  SongItem(title: '因为我们在一起', artist: '王一博', imgSrc: 'http://p3.music.126.net/VCCQ68Zddu3iiUkAE856iw==/109951164788709822.jpg', ),
  SongItem(title: '雪花落下', artist: '周深', imgSrc: 'http://p3.music.126.net/vB5VcDUS3aE0OqWx8zmGwQ==/109951164784793909.jpg', ),
  SongItem(title: '平凡天使', artist: 'G.E.M.邓紫棋', imgSrc: 'http://p3.music.126.net/8JkfznEa_qqASaJvUIicyw==/109951164784376724.jpg', ),
  SongItem(title: '最后的外卖', artist: 'Lil Ghost小鬼', imgSrc: 'http://p3.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg', ),
  SongItem(title: '给女孩 (单曲)', artist: '李宇春', imgSrc: 'http://p4.music.126.net/RDZoUsQWzyCMLAfbKOD8fQ==/109951164778754230.jpg', ),
  SongItem(title: '我们 (Live)', artist: '歌手', imgSrc: 'http://p3.music.126.net/8CBeG0BF2C0dPiA1FDflGQ==/109951164773621591.jpg', ),
  SongItem(title: '너에게 가는 이 길 위에서 (너.이.길)', artist: '伯贤', imgSrc: 'http://p4.music.126.net/rK8KRnRgfIppbcpQLCvA1g==/109951164751472860.jpg', ),
  SongItem(title: '当遇见你', artist: '摩登兄弟刘宇宁', imgSrc: 'http://p3.music.126.net/G_2C4j_g-vC_3M2YJ-F5pg==/109951164744571789.jpg', ),
  SongItem(title: '你要相信这不是最后一天', artist: '华晨宇', imgSrc: 'http://p4.music.126.net/sL4dfIANkKupkJvPipmd5g==/109951164736488659.jpg', ),
  SongItem(title: 'Tomorrow will be fine.', artist: 'Sodagreen', imgSrc: 'http://p4.music.126.net/76Hpk_9ot2h2dozv5JbbYA==/109951164737016168.jpg', ),
  SongItem(title: '误解', artist: '群星', imgSrc: 'http://p3.music.126.net/OwUk7hiX8Vg_dxckUSXkIg==/109951164742215840.jpg', ),
  SongItem(title: '小王日记', artist: '毛不易', imgSrc: 'http://p3.music.126.net/XPPeIZu7wgcGXZ0666mfFg==/109951164640697307.jpg', ),
  SongItem(title: 'ON', artist: 'BTS (防弹少年团)', imgSrc: 'http://p3.music.126.net/PunfNNRGPT-tFm-fWPXTrA==/109951164715215423.jpg', ),
  SongItem(title: '你要相信这不是最后一天 (Live)', artist: '歌手', imgSrc: 'http://p4.music.126.net/SbC8FdLw-PywMmnD35iRKg==/109951164725561024.jpg', ),
  SongItem(title: 'Forever (feat. Post Malone & Clever)', artist: 'Justin Bieber', imgSrc: 'http://p3.music.126.net/qS2ZOZAGRQ3SqT2xaiiWpA==/109951164677677467.jpg', ),
  SongItem(title: '口罩', artist: '马思唯,KnowKnow,Higher Brothers', imgSrc: 'http://p3.music.126.net/dCV4V1QLrUc1foodBfv5dQ==/109951164721972545.jpg', ),
  SongItem(title: '岁岁平安', artist: '李宇春,肖战', imgSrc: 'http://p4.music.126.net/_eGh6AnEwMWrspidSohwow==/109951164685213755.jpg', ),
  SongItem(title: '风恋歌', artist: '恋恋故人难,芝麻Mochi', imgSrc: 'http://p4.music.126.net/Qjc3qyumYfFrpXheCtYIxQ==/109951164643480793.jpg', ),
  SongItem(title: 'Only The Young (Featured in Miss Americana)', artist: 'Taylor Swift', imgSrc: 'http://p4.music.126.net/5tD7nHxIVs6akS8PUXcCrw==/109951164663333512.jpg', ),
  SongItem(title: '生命之河', artist: '王菲,那英', imgSrc: 'http://p4.music.126.net/MGdDmtcOvdGNUUqkMDPkTQ==/109951164638869920.jpg', ),
  SongItem(title: 'NAMANANA (Remix)', artist: '张艺兴', imgSrc: 'http://p4.music.126.net/5vCheDW_MUjDSlVByas5YQ==/109951164636816532.jpg', ),
  SongItem(title: '给妈咪', artist: '王一博', imgSrc: 'http://p4.music.126.net/lqL0xtUVSMY7zpeJPhogEw==/109951164623102435.jpg', ),
  SongItem(title: '故乡的云', artist: '张若昀', imgSrc: 'http://p4.music.126.net/FLY-4boXc4Mk6iUzNtQ2kA==/109951164653107684.jpg', ),
  SongItem(title: '彝人的狂欢', artist: '群星', imgSrc: 'http://p3.music.126.net/x-Uls_B3NaJwWdscKsuHHQ==/109951164638234218.jpg', ),
  SongItem(title: '悬日', artist: '田馥甄', imgSrc: 'http://p3.music.126.net/qX7ixB5ZT2wVJwgACuf_nA==/109951164623078367.jpg', ),
  SongItem(title: '颠倒的梦', artist: 'Far East Movement,摩登兄弟刘宇宁', imgSrc: 'http://p3.music.126.net/T13jcXCVrpAVmWzgIes7Qg==/109951164609979246.jpg', ),
  SongItem(title: '两个普普通通小青年', artist: '李荣浩,刘柏辛Lexie', imgSrc: 'http://p4.music.126.net/CwoKbUrQlIFxv7UW3oIykg==/109951164614012633.jpg', ),
  SongItem(title: '姜子牙', artist: '张杰', imgSrc: 'http://p3.music.126.net/NeRnu3N8odfhuInneUrc4g==/109951164616496353.jpg', ),
  SongItem(title: 'If I Can', artist: 'Lil Ghost小鬼', imgSrc: 'http://p3.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg', ),
  SongItem(title: 'Yummy', artist: 'Justin Bieber', imgSrc: 'http://p4.music.126.net/qS2ZOZAGRQ3SqT2xaiiWpA==/109951164677677467.jpg', ),
  SongItem(title: 'One and Only', artist: '木村拓哉', imgSrc: 'http://p4.music.126.net/vgmX6CKt7lrKddCqFXwqiQ==/109951164603537194.jpg', ),
  SongItem(title: '赤脚追光', artist: 'R1SE', imgSrc: 'http://p4.music.126.net/is4Px5MA6HtH8cUbbVzsYA==/109951164616512026.jpg', ),
  SongItem(title: '羡慕', artist: '许嵩', imgSrc: 'http://p3.music.126.net/z3iaVvR-7_DLxzktOu5I3g==/109951164594343426.jpg', ),
  SongItem(title: '无感', artist: '王一博', imgSrc: 'http://p4.music.126.net/ScRMRdZUmqs7v0KDq_wE5A==/109951164587873827.jpg', ),
  SongItem(title: '陪陪我', artist: '王齐铭WatchMe,Gosh Music', imgSrc: 'http://p3.music.126.net/z4cBZXR-82oae0eBkMbdRA==/109951164590844332.jpg', ),
  SongItem(title: '因为宠爱', artist: '金玟岐', imgSrc: 'http://p3.music.126.net/IrkDUhmAJC8eyJqHtV6DqA==/109951164591747721.jpg', ),
  SongItem(title: '摩天动物园', artist: 'G.E.M.邓紫棋', imgSrc: 'http://p4.music.126.net/KTo5oSxH3CPA5PBTeFKDyA==/109951164581432409.jpg', ),
  SongItem(title: '到时见', artist: '尤长靖', imgSrc: 'http://p4.music.126.net/qMVY8PeI-8mhjcDeAhuQUw==/109951164581081488.jpg', ),
  SongItem(title: '能解答一切的答案', artist: '周深', imgSrc: 'http://p4.music.126.net/4kViRJjVlKWJ--1TVsbY-w==/109951164579189143.jpg', ),
  SongItem(title: '如果云知道', artist: '黄轩', imgSrc: 'http://p4.music.126.net/UPm4yVGiqnpkgyilmbjTwQ==/109951164579504051.jpg', ),
  SongItem(title: '东北民谣', artist: '毛不易', imgSrc: 'http://p3.music.126.net/XPPeIZu7wgcGXZ0666mfFg==/109951164640697307.jpg', ),
  SongItem(title: '老友记', artist: '李荣浩', imgSrc: 'http://p4.music.126.net/a0jjOlv-61XLSoIiMjjGgA==/109951164566000641.jpg', ),
  SongItem(title: '听说', artist: '王博文', imgSrc: 'http://p4.music.126.net/3GHmHAptBo8KqE-ogSqYMg==/109951164569030723.jpg', ),
  SongItem(title: '不群', artist: '恋恋故人难,周深', imgSrc: 'http://p3.music.126.net/LxU9_5pnBO-1ViHEXVJd1g==/109951164569062875.jpg', ),
  SongItem(title: 'FXXKBOY2.0', artist: '队长,黄礼格', imgSrc: 'http://p3.music.126.net/g0lD5dcao2i-WRy9Ajzhgg==/109951164544188033.jpg', ),
  SongItem(title: '漂', artist: '马頔', imgSrc: 'http://p4.music.126.net/t27-G71EOXTl1HTbveeC9A==/109951164554706909.jpg', ),
  SongItem(title: '因“我”而起', artist: '张韶涵', imgSrc: 'http://p4.music.126.net/6X1e4gqCX3NoA_Xm6SiavQ==/109951164553007725.jpg', ),
  SongItem(title: '水乡', artist: '毛不易', imgSrc: 'http://p3.music.126.net/XPPeIZu7wgcGXZ0666mfFg==/109951164640697307.jpg', ),
  SongItem(title: '漂', artist: '阿肆', imgSrc: 'http://p3.music.126.net/rpmM1egdWmrqY8IBBo2yeQ==/109951164548502116.jpg', ),
  SongItem(title: 'Beautiful Love', artist: '钱正昊', imgSrc: 'http://p4.music.126.net/h5vet-ukZGyRedvHRpuR6g==/109951164544771138.jpg', ),
  SongItem(title: '假装没变过', artist: '颜人中', imgSrc: 'http://p4.music.126.net/8DkTnzi7jdjWGYl4qbwLCg==/109951164517295956.jpg', ),
  SongItem(title: '念念有词', artist: '周深', imgSrc: 'http://p4.music.126.net/mZ5RWq6M9QERNw5HdFih3w==/109951164531739668.jpg', ),
  SongItem(title: '好想爱这个世界啊', artist: '华晨宇', imgSrc: 'http://p3.music.126.net/3-y4J1CayZI0k2NkNkTmDw==/109951164525748216.jpg', ),
  SongItem(title: '麻雀', artist: '李荣浩', imgSrc: 'http://p4.music.126.net/TzlSVBiNtpRD2b7MT2Hi-w==/109951164527590793.jpg', ),
  SongItem(title: '二零三', artist: '毛不易', imgSrc: 'http://p3.music.126.net/XPPeIZu7wgcGXZ0666mfFg==/109951164640697307.jpg', ),
  SongItem(title: 'Christmas Tree Farm', artist: 'Taylor Swift', imgSrc: 'http://p3.music.126.net/pwBUhbhPZTijTc3gobOa7g==/109951164531577097.jpg', ),
];
//endregion

//region MV列表
List<Widget> mvList = [
  MvItem(title: '时间教会我们的事', artist: '魏妙如', imgSrc: 'http://p1.music.126.net/pI7lrYBRUXP2GObW-M4ATw==/109951164928610206.jpg', ),
  MvItem(title: '우리 만남이 (But I\'ll Miss You)', artist: 'Paul Kim', imgSrc: 'http://p1.music.126.net/e-3FytH8gXxxu60lqP5IEA==/109951164928898753.jpg', ),
  MvItem(title: '乡巴佬', artist: 'Melo', imgSrc: 'http://p1.music.126.net/75so8i5ZjlAc8gWUItN5GQ==/109951164925872942.jpg', ),
  MvItem(title: '基地 FOUNDATION', artist: '邱比（CHIU PI）', imgSrc: 'http://p1.music.126.net/-RMdpDNYmp_Di3PEKRwD4A==/109951164900721913.jpg', ),
  MvItem(title: '心之所向', artist: '轩辕剑', imgSrc: 'http://p1.music.126.net/Jt2ydf3BXMdH-_ldlwsk7w==/109951164912360032.jpg', ),
  MvItem(title: '그대만이 (You)', artist: '张德澈', imgSrc: 'http://p1.music.126.net/fMIhMoIIS6u9S4GZdicSug==/109951164910099959.jpg', ),
  MvItem(title: '恋爱手册', artist: '宗赢', imgSrc: 'http://p1.music.126.net/Rvgqr4FEtG3Anp7zDD0l7Q==/109951164903290218.jpg', ),
  MvItem(title: '虫洞诗', artist: '原子邦妮', imgSrc: 'http://p1.music.126.net/C8dWZ99AFDBWbXi_lVmVpQ==/109951164887303361.jpg', ),
  MvItem(title: '让我守护妳', artist: '邱胜翊', imgSrc: 'http://p1.music.126.net/ndbTVKA1ilBE8tGqOXeNFA==/109951164900215395.jpg', ),
  MvItem(title: '덤더럼(Dumhdurum)', artist: 'Apink', imgSrc: 'http://p1.music.126.net/1N4ZVvQeQH-hDPF6pAuYZQ==/109951164900536711.jpg', ),
];
//endregion

//region 电台列表
List<Widget> radioList = [
MvItem(title: '时间教会我们的事', artist: '魏妙如', imgSrc: 'http://p1.music.126.net/pI7lrYBRUXP2GObW-M4ATw==/109951164928610206.jpg', ),
MvItem(title: '우리 만남이 (But I\'ll Miss You)', artist: 'Paul Kim', imgSrc: 'http://p1.music.126.net/e-3FytH8gXxxu60lqP5IEA==/109951164928898753.jpg', ),
MvItem(title: '乡巴佬', artist: 'Melo', imgSrc: 'http://p1.music.126.net/75so8i5ZjlAc8gWUItN5GQ==/109951164925872942.jpg', ),
MvItem(title: '基地 FOUNDATION', artist: '邱比（CHIU PI）', imgSrc: 'http://p1.music.126.net/-RMdpDNYmp_Di3PEKRwD4A==/109951164900721913.jpg', ),
MvItem(title: '心之所向', artist: '轩辕剑', imgSrc: 'http://p1.music.126.net/Jt2ydf3BXMdH-_ldlwsk7w==/109951164912360032.jpg', ),
MvItem(title: '그대만이 (You)', artist: '张德澈', imgSrc: 'http://p1.music.126.net/fMIhMoIIS6u9S4GZdicSug==/109951164910099959.jpg', ),
];