import 'package:appleneteasemusic/widget/AlbumImgItem.dart';
import 'package:appleneteasemusic/widget/AlbumLargeItem.dart';
import 'package:appleneteasemusic/widget/ArtistAvatar.dart';
import 'package:appleneteasemusic/widget/MusicStyle.dart';
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
  AlbumLargeItem(
    key: Key('4'),
    albumType: '新单曲',
    title: '아무도 모른다 OST',
    subTitle: 'V.A.',
    imgSrc: 'http://p1.music.126.net/r46Yx_4pVF1XgoQNS4_fIg==/109951164922833531.jpg?param=177y177',
  ),
  AlbumLargeItem(
    key: Key('5'),
    albumType: '新专辑',
    title: 'IVORY',
    subTitle: '沈圭善',
    imgSrc: 'http://p1.music.126.net/KsO32EFqwyptOMqA1hYGFQ==/109951164922653118.jpg?param=177y177',
  ),
  AlbumLargeItem(
    key: Key('11'),
    albumType: '推荐歌单',
    title: '新世界NEW WORLD',
    subTitle: '华晨宇',
    imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=177y177',
  ),
  AlbumLargeItem(
    key: Key('12'),
    albumType: '推荐专辑',
    title: '100 Ways',
    subTitle: '王嘉尔',
    imgSrc: 'http://p2.music.126.net/bZxfyuY58soD71VGxv6BDQ==/109951164814715844.jpg?param=177y177',
  ),
  AlbumLargeItem(
    key: Key('13'),
    albumType: '新专辑',
    title: '从M到W的高速公路',
    subTitle: 'Lil Ghost小鬼',
    imgSrc: 'http://p2.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg?param=177y177',
  ),
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