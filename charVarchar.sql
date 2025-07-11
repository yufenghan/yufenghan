#演示字符串类型使用char varchar
#注释的快捷键 shift+ctrl+c  ,取消注释shift+ctrl+r
-- char(size)固定长度字符串，最大长度255字符
-- varchar(size) 0~65535字节
-- 注意以上2种长度，char是字符，varchar是字节（字节和编码有关）
-- varchar可变长度字符串，最大65532字节【utf-8编码最大21844字符，1-3个字节用于记录大小】
-- 如果表的编码格式是utf8,varchar(size)  size=(65535-3)/3=21844
-- 如果表的编码格式是gbk,VARCHAR(size)  size=(65535-3)/2=32766
CREATE TABLE t6 (`name` CHAR(256));
CREATE TABLE t7 (`name` VARCHAR(21844)) CHARSET utf8;

#如果varchar不够用，可以考虑使用text、mediumtext、longtext
CREATE TABLE t8 (content1 TEXT, context2 MEDIUMTEXT, context3 LONGTEXT);
INSERT INTO t8 VALUES('韩顺平教育','韩顺平教育100','韩顺平教育10000***');
SELECT * FROM t8;
