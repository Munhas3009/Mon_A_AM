/*
Navicat MySQL Data Transfer

Source Server         : phpmyadmin
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : mo_av_am

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-01 15:51:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for campanhas
-- ----------------------------
DROP TABLE IF EXISTS `campanhas`;
CREATE TABLE `campanhas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidade_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `desc_campanha` varchar(255) NOT NULL,
  `dose` int(10) NOT NULL,
  `unidade_sanitaria` int(10) NOT NULL,
  `brigada_movel` int(10) NOT NULL,
  `agente_comun_saude` int(10) NOT NULL,
  `interv_idade` varchar(10) NOT NULL,
  `mulheres_p_parto` int(10) NOT NULL,
  `comentario` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of campanhas
-- ----------------------------

-- ----------------------------
-- Table structure for classificacaos
-- ----------------------------
DROP TABLE IF EXISTS `classificacaos`;
CREATE TABLE `classificacaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `comentarios` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of classificacaos
-- ----------------------------
INSERT INTO `classificacaos` VALUES ('1', 'Hospital Central', 'Geralmente podem ser centros de ensino e especializa??o', null, '2019-05-11 18:25:40');
INSERT INTO `classificacaos` VALUES ('2', 'Hospital Geral', 'Para o ensino e especializado', '2019-05-11 18:29:17', '2019-05-11 18:29:17');
INSERT INTO `classificacaos` VALUES ('3', 'Centro de Sa?de', 'Pode ser de local de resid?ncia e trabalho', '2019-05-11 18:33:11', '2019-05-11 18:33:11');
INSERT INTO `classificacaos` VALUES ('4', 'Posto de Sa?de', 'Pode ser de local de resid?ncia e de trabalho', '2019-05-11 18:36:33', '2019-05-11 18:36:33');
INSERT INTO `classificacaos` VALUES ('5', 'Cl?nica m?dica', 'Local de presta??o de cuidados de sa?de ', '2019-05-11 18:43:10', '2019-05-11 18:43:10');
INSERT INTO `classificacaos` VALUES ('6', 'Consult?rio m?dico', '', '2019-05-11 18:44:13', '2019-05-11 18:44:13');
INSERT INTO `classificacaos` VALUES ('7', 'Centro de reabilita??o f?sica e ps?quica', 'Local de reabilita??o de doentes toxico dependentes', '2019-05-11 18:50:42', '2019-05-11 18:50:42');
INSERT INTO `classificacaos` VALUES ('8', 'Posto de enfermagem', '', '2019-05-11 18:52:21', '2019-05-27 09:39:57');
INSERT INTO `classificacaos` VALUES ('9', 'Centro de diagn?stico', '', '2019-05-11 18:53:48', '2019-05-11 18:53:48');
INSERT INTO `classificacaos` VALUES ('10', 'Centro de forma??o de sa?de', '', '2019-05-11 18:54:57', '2019-05-11 18:54:57');
INSERT INTO `classificacaos` VALUES ('11', 'Centro de transporte de doente', '', '2019-05-11 18:55:55', '2019-05-11 18:55:55');
INSERT INTO `classificacaos` VALUES ('12', 'Assist?ncia m?dica ao domic?lio ', '', '2019-05-11 18:59:01', '2019-05-11 18:59:01');
INSERT INTO `classificacaos` VALUES ('13', 'Centro de enfermagem', '', '2019-05-11 19:03:47', '2019-05-11 19:03:47');

-- ----------------------------
-- Table structure for diagnosticos
-- ----------------------------
DROP TABLE IF EXISTS `diagnosticos`;
CREATE TABLE `diagnosticos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sintoma` varchar(255) DEFAULT NULL,
  `metodo` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of diagnosticos
-- ----------------------------
INSERT INTO `diagnosticos` VALUES ('1', 'Malaria', 'Dores nas articula??es, calafrios  ', 'Laborat?rio', '2019-05-03 23:02:24', '2019-05-03 23:02:24');
INSERT INTO `diagnosticos` VALUES ('2', 'Bronquite', 'Ma respira??o, dores no diafragma e infec??o no pulm?o', 'Laborat?rio', '2019-05-03 23:04:28', '2019-05-03 23:04:28');

-- ----------------------------
-- Table structure for distritos
-- ----------------------------
DROP TABLE IF EXISTS `distritos`;
CREATE TABLE `distritos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `comentarios` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of distritos
-- ----------------------------
INSERT INTO `distritos` VALUES ('1', 'Distrito Municipal KaMpfumo', 'Distrito Municipal 1 - Distrito Municipal KaMpfumo.', null, null);
INSERT INTO `distritos` VALUES ('2', 'Distrito Municipal KaNhlamankulu', 'Distrito Municipal 2 - Distrito Municipal de Nhlamankulu.', null, null);
INSERT INTO `distritos` VALUES ('3', 'Distrito Municipal KaMaxakeni', 'Distrito Municipal 3 - Distrito Municipal KaMaxakeni', null, null);
INSERT INTO `distritos` VALUES ('4', 'Distrito Municipal KaMavota', 'Distrito Municipal 4. - Distrito Municipal KaMavota.', null, null);
INSERT INTO `distritos` VALUES ('5', 'Distrito Municipal KaMabukwana', 'Distrito Municipal 5 - Distrito Municipal KaMabukwana.', null, null);
INSERT INTO `distritos` VALUES ('6', 'Distrito Municipal KaTembe', 'Distrito Municpal da Catembe - Distrito Municipal Ka Tembe.', null, null);
INSERT INTO `distritos` VALUES ('7', 'Distrito Municipal KaNyaka', 'Distrito Municipal de Inhaca - Distrito Municipal KaNyaka.', null, null);

-- ----------------------------
-- Table structure for especialidades
-- ----------------------------
DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE `especialidades` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of especialidades
-- ----------------------------
INSERT INTO `especialidades` VALUES ('1', 'Medicina', '');
INSERT INTO `especialidades` VALUES ('2', 'Dermatologia', '');
INSERT INTO `especialidades` VALUES ('3', 'Ortopedia', '');

-- ----------------------------
-- Table structure for pacientes
-- ----------------------------
DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `area_trabalho` varchar(255) DEFAULT NULL,
  `residencia` varchar(255) DEFAULT NULL,
  `genero` varchar(25) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `contacto` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contacto` (`contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pacientes
-- ----------------------------
INSERT INTO `pacientes` VALUES ('1', 'Antonio de Amaral Magalh?es', 'Eng. Constru??o Civil', 'Matola Godinho', 'Masculino', '42', '856958695', '2019-05-22 12:54:50', '2019-05-25 08:58:15');
INSERT INTO `pacientes` VALUES ('2', 'Jorge da Costa Baute', 'T?cnico de Informatica', 'Bairro 25 de Junho \"A\" Rua 8', 'Masculino', '30', '878564231', '2019-05-22 12:56:58', '2019-05-25 08:58:42');
INSERT INTO `pacientes` VALUES ('3', 'Andre Magaia', 'Militar', 'Bairro da Maxaquene', 'Masculino', '35', '859635874', '2019-05-22 16:07:29', '2019-05-25 08:59:09');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Super', 'Possui autoriza??o de super admin', '2019-05-08 20:16:30', '2019-05-08 20:16:30');
INSERT INTO `roles` VALUES ('2', 'Admin', 'Gest?o da aplica??o', '2019-05-08 20:19:29', '2019-05-08 20:19:29');
INSERT INTO `roles` VALUES ('3', 'Medico', 'Tem autoriza??o para acessar a ?rea m?dica', '2019-05-08 20:28:55', '2019-05-22 09:36:38');
INSERT INTO `roles` VALUES ('4', 'Tecnico de Sa?de', 'Tem autoriza??o para acessar a ?rea m?dica', '2019-05-08 20:30:02', '2019-05-22 09:37:11');
INSERT INTO `roles` VALUES ('5', 'Tecnico Admin', 'Gest?o de relat?rios e ?reas administrativas', '2019-05-08 20:31:56', '2019-05-08 20:31:56');

-- ----------------------------
-- Table structure for tratamentos
-- ----------------------------
DROP TABLE IF EXISTS `tratamentos`;
CREATE TABLE `tratamentos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unidade_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `especialidade_id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `contador` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `diagnostico_id` int(11) DEFAULT NULL,
  `tratamento` varchar(255) DEFAULT NULL,
  `svacinacao` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tratamentos
-- ----------------------------
INSERT INTO `tratamentos` VALUES ('1', '1', '1', '1', '1', '1', 'Altamente febrio', '1', 'medicacao de Malaria', 'adulto', 'Sinais de desidrata??o', '2019-05-28 21:29:19', '2019-05-28 21:29:19');

-- ----------------------------
-- Table structure for unidades
-- ----------------------------
DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `nuit` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `data_fundacao` date NOT NULL,
  `classificacao_id` int(11) NOT NULL,
  `distrito_id` int(11) NOT NULL,
  `numero_camas` int(3) NOT NULL,
  `endereco` text NOT NULL,
  `comentarios` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `unidade_esta_num_distrito` (`distrito_id`) USING BTREE,
  KEY `unidade_possui_uma_classificacao` (`classificacao_id`) USING BTREE,
  CONSTRAINT `unidade_esta_num_distrito` FOREIGN KEY (`distrito_id`) REFERENCES `distritos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `unidade_possui_uma_classificacao` FOREIGN KEY (`classificacao_id`) REFERENCES `classificacaos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of unidades
-- ----------------------------
INSERT INTO `unidades` VALUES ('1', 'Cl?nica Sommechild', 'O nosso maior valor ? a vida.', '12345678', 'info@sommechild.co.mz', '1999-12-06', '5', '1', '20', 'Av. Karl Max, N? 1234', 'Est? clinica trata todo tipo de doen?as com m?quina.', null, '2019-05-27 11:22:20');
INSERT INTO `unidades` VALUES ('2', 'ClineCare', 'O nosso maior valor e a vida', '145687598', 'clincare@unidade.mz', '2014-07-05', '5', '1', '50', 'Bairro da Sommerchild, Av. Armando Tivane ', 'Clinica especializada em tratamento de diversas doen?as', '2019-05-03 22:36:23', '2019-05-11 20:06:25');
INSERT INTO `unidades` VALUES ('3', '222', 'O nosso maior valor e a vida', '12345678', '222@clinica.mz', '2002-06-25', '5', '1', '30', 'Bairro da Coop Q 20 n 124', 'Especializada no tratamento de varias doen?as ', '2019-05-26 20:37:52', '2019-05-26 20:37:52');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `apelido` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `passkey` varchar(13) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `photo_dir` varchar(255) DEFAULT NULL,
  `timeout` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Gimo', 'Munhas', 'gimo.munhas@gmail.com', 'Munhas', '$2y$10$W7yJo6OwWkd6EdwUtNKxMeffjjiboSQgT0nAz2UZe3/5e6ELiBDZi', 'Super', 'gimo.jpg', '', '2019-05-20 13:41:00', '0', '2019-05-20 08:05:33', '2019-05-20 11:42:27');
INSERT INTO `users` VALUES ('2', 'Ana de Sousa', 'Gon?alves', 'ana.g@gmail.com', 'Ana.Sousa', '$2y$10$Ibu8fWsCDHOcXffzvFjo2Okypt2Ig8mxMxgOk5.4OjfzEhQQhpa9G', 'Admin', 'avatar3.png', null, null, '0', '2019-05-22 16:20:08', '2019-05-22 16:20:08');
INSERT INTO `users` VALUES ('3', 'Paulo', 'Barbosa', 'paulo.barbosa@gmail.com', 'pauloB', '$2y$10$eBzXfYKzHZqWHjxMgxRqv.BhS.F.pZimCWEQyQrPISdNbCDHZILFm', 'medico', 'avatar04.png', null, null, '0', '2019-05-22 16:32:40', '2019-05-22 16:33:48');
INSERT INTO `users` VALUES ('4', 'Joana de Magalh?es', 'Matavela', 'j.matavela@gmail.com', 'j.matavela', '$2y$10$25NMB6envnk2r4UEnKoSLeaXU8VsrTNMjIqf18scsFIF6O87mzDVa', 'Medico', 'avatar2.png', null, null, '0', '2019-05-22 16:46:40', '2019-05-22 16:46:40');
