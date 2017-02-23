<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'catid' => 'smallint',
    'content' => 'mediumtext',
    'lianjie' => 'varchar',
    'zhongwenmingcheng' => 'varchar',
    'yingwenmingcheng' => 'varchar',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'catid',
    2 => 'content',
    3 => 'lianjie',
    4 => 'zhongwenmingcheng',
    5 => 'yingwenmingcheng',
  ),
  'primary_key' => 'id',
);