-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-12-12 01:21:52
-- 服务器版本： 8.0.12
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `selfstudy`
--

-- --------------------------------------------------------

--
-- 表的结构 `config`
--

CREATE TABLE `config` (
  `idnum` int(11) NOT NULL,
  `usernum` int(11) NOT NULL,
  `pnum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `config`
--

INSERT INTO `config` (`idnum`, `usernum`, `pnum`) VALUES
(79, 0, 9);

-- --------------------------------------------------------

--
-- 表的结构 `participants`
--

CREATE TABLE `participants` (
  `pid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `pmessage` text NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `participants`
--

INSERT INTO `participants` (`pid`, `pname`, `pmessage`, `tid`) VALUES
(5, '啦啦啦', 'hello', 40),
(6, '啦啦啦', 'hello', 40),
(7, '啦啦啦', 'hello', 40),
(8, '啦啦啦', 'hello', 40),
(9, '啦啦啦', 'hello', 40);

-- --------------------------------------------------------

--
-- 表的结构 `records`
--

CREATE TABLE `records` (
  `tid` int(11) NOT NULL,
  `username` text NOT NULL,
  `stime` int(11) NOT NULL,
  `etime` int(11) NOT NULL,
  `location` text NOT NULL,
  `remarks` text NOT NULL,
  `joined` int(11) NOT NULL DEFAULT '0',
  `finished` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `records`
--

INSERT INTO `records` (`tid`, `username`, `stime`, `etime`, `location`, `remarks`, `joined`, `finished`) VALUES
(74, '王一', 1607440260, 1607440260, '博学楼', '早安打工人', 0, 0),
(75, '王五', 1607137920, 1607325300, '博学楼205', '午安打工人', 0, 0),
(76, '张三', 1606885920, 1607328900, '34号楼404', '晚安打工人', 0, 0),
(77, '李四', 1607231520, 1607501700, '34号楼418', '早安模电人', 0, 0),
(78, '王五', 1606367520, 1606464900, '31号楼404', '早安实验人', 0, 0),
(79, '王五', 1609218720, 1609316100, '31号楼404', '早安实验人', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
