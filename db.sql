-- 创建数据库
CREATE DATABASE drools_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 使用数据库
USE drools_db;

-- 创建规则表
CREATE TABLE drools_rule (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    rule_name VARCHAR(255) NOT NULL UNIQUE COMMENT '规则名称',
    rule_content TEXT NOT NULL COMMENT '规则内容',
    description TEXT COMMENT '规则描述',
    deleted TINYINT(1) DEFAULT 0 COMMENT '逻辑删除标记',
    enabled BOOLEAN DEFAULT TRUE COMMENT '是否启用',
    version VARCHAR(50) DEFAULT '1.0' COMMENT '版本号',
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) COMMENT='Drools规则表';