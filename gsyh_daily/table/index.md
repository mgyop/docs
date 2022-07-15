### 产品下载发布浏览等统计数据（statistic_product_total）
```sql
CREATE TABLE `statistic_product_total` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期 也就是统计日期',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '数据更新时间',
  `datemark` int(11) DEFAULT '20190102' COMMENT '更新时间标志',
  `product_id` bigint(20) NOT NULL COMMENT '产品ID',
  `category_id` bigint(20) NOT NULL COMMENT '产品类目ID',
  `ip_num` int(11) DEFAULT NULL COMMENT '独立IP访问数量',
  `pv_num` int(11) DEFAULT '0' COMMENT '产品PV数',
  `publish_num` int(11) DEFAULT NULL COMMENT '产品发布数量',
  `publish_weixin_num` int(11) DEFAULT '0' COMMENT '发布到微信数量',
  `publish_vdian_num` int(11) DEFAULT '0' COMMENT '发布到微店数量',
  `publish_ali_num` int(11) DEFAULT '0' COMMENT '发布到阿里数量',
  `publish_taobao_num` int(11) DEFAULT '0' COMMENT '发布到淘宝数量',
  `download_num` int(11) DEFAULT NULL COMMENT '产品下载数量',
  `c_publish_num` int(11) DEFAULT '0' COMMENT 'jia数据',
  `c_download_num` int(11) DEFAULT '0' COMMENT 'jia数据',
  `share_num` int(11) DEFAULT NULL COMMENT '产品分享数量',
  `collect_num` int(11) DEFAULT NULL COMMENT '收藏数量',
  `shop_card_num` int(11) DEFAULT NULL COMMENT '选货单数',
  `session_num` int(11) DEFAULT NULL COMMENT 'session浏览数量',
  `npv_num` int(11) DEFAULT NULL COMMENT '正常访问pv数',
  `sales_volume` int(10) DEFAULT '0' COMMENT '商品销量',
  `c_pv_num` int(11) DEFAULT '0' COMMENT '虚假pv',
  `c_collect_num` int(11) DEFAULT '0' COMMENT 'jia收藏数',
  `download_video_num` int(11) DEFAULT '0' COMMENT 'video的下载数目',
  `active_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2820205 DEFAULT CHARSET=utf8;
```
### 产品（product）

```sql
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) DEFAULT NULL COMMENT '厂家/摄影的用户ID',
  `category_id` smallint(6) DEFAULT NULL COMMENT ' ',
  `article_number` varchar(50) DEFAULT NULL COMMENT '货号',
  `code` varchar(30) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '标题，未使用',
  `characters` varchar(200) DEFAULT NULL COMMENT '特征',
  `summary` varchar(200) DEFAULT NULL COMMENT '简介，未使用',
  `label_id` tinyint(3) unsigned DEFAULT '0',
  `color` varchar(200) DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL,
  `index_image` varchar(200) DEFAULT NULL COMMENT '首图',
  `supplier_index_image` varchar(200) DEFAULT NULL COMMENT '厂家设置的首图',
  `seller_index_image` varchar(200) DEFAULT NULL COMMENT '卖家设置的首图',
  `index_images` varchar(800) DEFAULT NULL COMMENT '首图（多张），未使用',
  `price` float DEFAULT '0',
  `whole_price` float DEFAULT NULL,
  `whole_price_desc` varchar(200) DEFAULT NULL COMMENT '整拿价说明',
  `retail_price` float DEFAULT '0' COMMENT '建议零售价',
  `min_sale_price` float DEFAULT '0' COMMENT '最低售价',
  `file` varchar(200) DEFAULT NULL COMMENT '图片压缩包地址',
  `file_info` varchar(400) DEFAULT NULL COMMENT '产品数据包信息',
  `description` text COMMENT '产品描述',
  `props` text COMMENT '产品属性（淘宝）',
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '产品关键词',
  `propsinit` int(11) DEFAULT '0',
  `lock_props` tinyint(1) DEFAULT '0',
  `check_props_time` datetime DEFAULT NULL COMMENT 'mid',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间（厂家后台刷新产品时更新）',
  `refer_product_id` int(11) DEFAULT NULL,
  `cameraman_user_id` int(11) DEFAULT NULL,
  `cameraman_title` varchar(200) DEFAULT NULL COMMENT '云仓商品货号',
  `is_block` tinyint(1) DEFAULT '0' COMMENT '是否被屏蔽，屏蔽的产品将不会显示在前端',
  `block_time` datetime DEFAULT NULL,
  `is_lightning_consignment` tinyint(1) DEFAULT NULL COMMENT '是否云仓商品',
  `is_showcase` tinyint(1) DEFAULT '0' COMMENT '是否在橱窗位显示（每个商家目前默认只支持1个橱窗位）',
  `is_unique` tinyint(1) DEFAULT '0' COMMENT '是否独款',
  `is_highlight` tinyint(1) DEFAULT '0' COMMENT '是否关联（目前厂家最多能设置5个产品），作为关联广告显示',
  `is_hide_stats` tinyint(1) DEFAULT '0' COMMENT '是否隐藏统计，隐藏统计后前台产品详情页将不会显示下载和发布到淘宝的数据',
  `is_show_comment` tinyint(1) DEFAULT '1' COMMENT '是否显示商品的淘宝评论，2为强制显示，0为强制不显示，1为按用户的全局设置显示，默认为1',
  `is_direct_sale` tinyint(1) DEFAULT '0',
  `is_adequate` tinyint(1) DEFAULT '0' COMMENT '是否大货',
  `is_hide` tinyint(1) DEFAULT '0' COMMENT '是否隐藏0否1是',
  `is_treasure` tinyint(1) DEFAULT '0' COMMENT '是否是镇店之宝，1表示是，0表示否',
  `weight` int(11) DEFAULT '1' COMMENT '权重，非商品重量',
  `state` tinyint(1) DEFAULT '0' COMMENT 'outlock',
  `unique_state` tinyint(1) DEFAULT '0',
  `unique_start_time` datetime DEFAULT NULL,
  `unique_end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_outer` int(11) DEFAULT NULL COMMENT '0(go2内网) 1(go2外网) 2(bag8内网) 3(bag8外网) 4(3e3e内网) 5(3e3e外网) 6(2mm内网) 7(2mm外网)',
  `is_vip` tinyint(4) DEFAULT '0' COMMENT '是否只对VIP会员可见',
  `category_nid` int(11) DEFAULT NULL COMMENT '新产品类目ID',
  `video_url` varchar(200) DEFAULT NULL COMMENT '视频地址',
  `video_thumbnail_url` varchar(1200) DEFAULT NULL,
  `flv_url` varchar(200) DEFAULT NULL,
  `video_type` tinyint(4) DEFAULT '0' COMMENT '0为图片压缩视频，1为本地上传视频',
  `update_file` varchar(200) DEFAULT NULL COMMENT '增量包（更新包|附加包）地址',
  `update_img` varchar(1000) DEFAULT NULL COMMENT '增量包中的图片地址  用,隔开',
  `change_days` int(11) DEFAULT NULL COMMENT '承诺换货时间',
  `return_days` int(11) DEFAULT NULL COMMENT '承诺退货时间',
  `source` varchar(10) DEFAULT 'go2',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `index3` (`category_id`),
  KEY `index7` (`price`),
  KEY `index9` (`refer_product_id`),
  KEY `index10` (`cameraman_user_id`),
  KEY `index18` (`weight`),
  KEY `label_id` (`label_id`),
  KEY `ix_product_update_time` (`update_time`),
  KEY `findpagelist` (`create_time`,`state`,`id`,`category_id`,`article_number`,`title`,`update_time`),
  KEY `index19` (`state`,`category_id`,`refer_product_id`),
  KEY `article_no` (`article_number`),
  KEY `category_nid_soure_state` (`category_nid`,`source`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=3111942 DEFAULT CHARSET=utf8
```