/*
 Navicat Premium Data Transfer

 Source Server         : localhost2
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : senatiangela

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 25/05/2019 11:42:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cursos
-- ----------------------------
DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos`  (
  `CODIGO_CUR` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `NOMBRE_CUR` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `DESCRIPCION` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `DURACION_HORAS_CUR` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `COSTO_CUR` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO_CUR`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cursos
-- ----------------------------
INSERT INTO `cursos` VALUES ('1', 'Desarrollo', '.....', '24H', '500');
INSERT INTO `cursos` VALUES ('2', 'Redes', '......', '24H', '600');
INSERT INTO `cursos` VALUES ('3', 'Web', '......', '24H', '200');

-- ----------------------------
-- Table structure for detalle_curso
-- ----------------------------
DROP TABLE IF EXISTS `detalle_curso`;
CREATE TABLE `detalle_curso`  (
  `CODIGO_CUR` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `CODIGO_PER` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `CODIGO_LOC` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `FECHA_INICIO` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `FECHA_FIN` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `FRECUENCIA` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `HORA` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  INDEX `FK_DET_CUR`(`CODIGO_CUR`) USING BTREE,
  INDEX `FK_DET_PER`(`CODIGO_PER`) USING BTREE,
  INDEX `FK_DET_LOC`(`CODIGO_LOC`) USING BTREE,
  CONSTRAINT `FK_DET_CUR` FOREIGN KEY (`CODIGO_CUR`) REFERENCES `cursos` (`CODIGO_CUR`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_DET_LOC` FOREIGN KEY (`CODIGO_LOC`) REFERENCES `locales` (`CODIGO_LOC`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_DET_PER` FOREIGN KEY (`CODIGO_PER`) REFERENCES `personal` (`CODIGO_PER`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for locales
-- ----------------------------
DROP TABLE IF EXISTS `locales`;
CREATE TABLE `locales`  (
  `CODIGO_LOC` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `DIRECCION_LOC` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `DISTRITO_LOC` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `REFERENCIA_LOC` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `TELEFONO` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO_LOC`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of locales
-- ----------------------------
INSERT INTO `locales` VALUES ('1', 'av. jajjajaj', 'S.J.L', 'SUBIENDO', '555555');
INSERT INTO `locales` VALUES ('2', 'AV. MEJOR NO ', 'INDEPENDENCIA', 'BAJANDO', '444444');
INSERT INTO `locales` VALUES ('3', 'Av. Moreno', 'Los Olivos', 'Doblando la esquina', '888888');

-- ----------------------------
-- Table structure for personal
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal`  (
  `CODIGO_PER` varchar(3) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `NOMBRE_PER` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `APELLIDO_PER` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `DIRECCION_PER` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `TELEFONO_PER` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `DNI` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `FECHA_NAC` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `PROFESION` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `NACIONALIDAD` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `SEXO` varchar(2) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `COSTOXHORA` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO_PER`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personal
-- ----------------------------
INSERT INTO `personal` VALUES ('1', 'Simon', 'Espinosa', 'Av. Ya llego', '888888', '457945123', '19/01/1992', 'profe', 'peru', 'M', '24');

SET FOREIGN_KEY_CHECKS = 1;
