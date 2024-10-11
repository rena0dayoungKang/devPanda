-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        10.11.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- devpanda 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS devpanda;
CREATE DATABASE IF NOT EXISTS devpanda /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE devpanda;

-- 테이블 devpanda.auction 구조 내보내기
DROP TABLE IF EXISTS auction;
CREATE TABLE IF NOT EXISTS auction (
  auctionNum int(11) NOT NULL AUTO_INCREMENT,
  id varchar(255) DEFAULT NULL,
  title varchar(255) NOT NULL,
  startDate varchar(255) NOT NULL,
  endDate varchar(255) NOT NULL,
  state varchar(255) NOT NULL,
  startPrice int(11) NOT NULL,
  minSalary int(11) NOT NULL,
  maxSalary int(11) NOT NULL,
  bidMaxPrice int(11) NOT NULL,
  occupation varchar(255) DEFAULT NULL,
  period varchar(255) DEFAULT NULL,
  education varchar(255) DEFAULT NULL,
  employmentType varchar(255) DEFAULT NULL,
  stack varchar(255) DEFAULT NULL,
  certification varchar(255) DEFAULT NULL,
  location varchar(255) DEFAULT NULL,
  portfolio varchar(255) DEFAULT NULL,
  PRIMARY KEY (auctionNum)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.auction:~43 rows (대략적) 내보내기
DELETE FROM auction;
INSERT INTO auction (auctionNum, id, title, startDate, endDate, state, startPrice, minSalary, maxSalary, bidMaxPrice, occupation, period, education, employmentType, stack, certification, location, portfolio) VALUES
	(1, 'abc001', '자바언어 할 수 있는 신입 뽑아가세요 ', '2024-09-25', '2024-12-31 12:00', 'processing', 30000000, 30000000, 35000000, 31000000, '백엔드', '신입', '학사', '정규직,인턴', 'JAVA,html,css,js,springboot', '토익700↑,토플700↑', '서울,경/인', 'Virtoo by LG 사용 안내.pdf'),
	(2, 'abc001', '자바 단기 파트타임 구합니다.', '2024-09-25', '2024-10-31 12:00', 'processing', 1000000, 1000000, 2000000, 1100000, '백엔드,웹', '신입', '학력무관', '계약직3개월,계약직6개월,프리랜서', 'JAVA', '정보처리기사', '서울,경/인,강원,경남,경북,전남,전북,충남,충북,제주', 'Virtoo by LG 사용 안내1.pdf'),
	(3, 'abc001', '자바 백엔드 프리랜서 잡 구합니다.', '2024-09-25', '2024-09-30 12:00', 'processing', 500000, 500000, 1000000, 510000, '백엔드,프론트엔드,웹', '신입', '학력무관', '프리랜서', 'JAVA', '', '서울,경/인,강원,경남,경북,전남,전북,충남', 'Virtoo by LG 사용 안내2.pdf'),
	(4, 'abc001', '프론트엔드 간단 아르바이트 구합니다.', '2024-09-25', '2024-09-25', 'success', 100000, 100000, 300000, 300000, '프론트엔드,웹', '신입', '학력무관', '프리랜서', 'JAVA,html,css,js', '', '서울', 'Virtoo by LG 사용 안내3.pdf'),
	(5, 'abc001', '홈페이지 저렴하게 만들어드립니다.', '2024-09-25', '2024-09-28 12:00', 'processing', 300000, 300000, 1000000, 0, '백엔드,프론트엔드,웹', '신입', '학력무관', '프리랜서', 'JAVA,html,css,js,springboot', '', '서울,경/인,강원,경남,경북,전남,전북,충남,충북,제주', 'Virtoo by LG 사용 안내4.pdf'),
	(6, 'abc002', '웹퍼블리셔 프리랜서 구직', '2024-09-25', '2024-09-30 14:00', 'success', 500000, 500000, 1000000, 1000000, '웹,웹퍼블리셔', '경력', '학사', '프리랜서', 'html,css,js', '기타', '서울', 'Virtoo by LG 사용 안내5.pdf'),
	(7, 'abc002', '웹퍼블리셔 정규직 구직원합니다.', '2024-09-25', '2024-09-30 14:00', 'processing', 28000000, 28000000, 33000000, 28000000, '웹,앱,웹퍼블리셔', '경력', '학사', '계약직3개월,프리랜서', 'react', '기타', '충남,제주', 'Virtoo by LG 사용 안내6.pdf'),
	(8, 'abc002', '디자이너 및 웹퍼블리셔 계약직', '2024-09-25', '2024-09-01 14:00', 'unprocessing', 500000, 500000, 1200000, 0, '프론트엔드,웹,웹퍼블리셔', '경력', '학력무관', '계약직3개월,프리랜서', 'html,css,js', '기타', '서울,경/인,제주', 'Virtoo by LG 사용 안내7.pdf'),
	(9, 'abc002', '디자이너 구직합니다.', '2024-09-25', '2024-08-01 14:08', 'unprocessing', 1200000, 1200000, 2200000, 0, '웹,앱,웹퍼블리셔', '신입,경력', '학력무관', '계약직3개월,프리랜서', 'ios,android,mariadb', '기타', '서울,충남,제주', 'Virtoo by LG 사용 안내8.pdf'),
	(10, 'abc002', '프론트엔드 경력 (앱)', '2024-09-25', '2024-12-31 14:09', 'processing', 3300000, 3300000, 5000000, 3300000, '프론트엔드,앱', '경력', '학력무관', '계약직3개월,계약직6개월,프리랜서', 'html,css,js,kotlin,react,flutter,ios,android', '기타', '서울,경/인,전북', 'Virtoo by LG 사용 안내9.pdf'),
	(11, 'abc002', '프론트엔드 리액트 웹 ', '2024-09-25', '2024-11-16 14:11', 'processing', 35000000, 35000000, 38000000, 35000000, '프론트엔드,웹', '신입', '학력무관', '정규직', 'html,css,js,react,vue,mysql,mariadb', 'SQLD', '서울,경/인,강원', 'Virtoo by LG 사용 안내10.pdf'),
	(12, 'abc003', '시스템엔지니어 정규직 구직', '2024-09-25', '2024-12-25 14:12', 'processing', 38000000, 38000000, 40000000, 0, '시스템엔지니어', '경력', '학사,학력무관', '정규직', 'JAVA,Python,C,C++,C#', '기타', '서울,경/인,제주', 'Virtoo by LG 사용 안내11.pdf'),
	(13, 'abc003', '시스템 엔지니어 단기 계약 구직합니다.', '2024-09-25', '2024-06-01 14:13', 'unprocessing', 8000000, 8000000, 10000000, 0, '시스템엔지니어', '경력', '학사,학력무관', '계약직3개월,계약직6개월,프리랜서', 'JAVA,Python,C,C++,C#', '토익700↑,토플700↑', '서울,경/인,강원', 'Virtoo by LG 사용 안내12.pdf'),
	(14, 'abc003', '파이썬 능력자 고수 데려가세요 ', '2024-09-25', '2024-05-01 14:14', 'unprocessing', 50000000, 50000000, 6000000, 0, '백엔드,프론트엔드,웹', '경력', '학력무관', '정규직', 'JAVA,Python', '토익700↑,토플700↑,토스IL↑,정보처리기사,SQLD,SQLP,리눅스마스터,AWS자격증,기타', '서울,경/인,강원', 'Virtoo by LG 사용 안내13.pdf'),
	(15, 'abc003', '파이썬 언어 가능자 프리랜서 ', '2024-09-25', '2024-09-30 14:15', 'processing', 2000000, 2000000, 3000000, 2000000, '백엔드,프론트엔드', '경력', '학사,학력무관', '프리랜서', 'Python', '토플700↑,토스IL↑,기타', '경/인,경북,전남,제주', 'Virtoo by LG 사용 안내14.pdf'),
	(16, 'abc003', '제주도만 근무가능합니다 (파이썬,자바)', '2024-09-25', '2024-09-30 14:19', 'success', 30000000, 30000000, 40000000, 40000000, '백엔드,프론트엔드,웹', '경력', '학력무관', '정규직', 'JAVA,Python', '기타', '제주', 'Virtoo by LG 사용 안내15.pdf'),
	(17, 'abc004', '네트워크 엔지니어 프리랜서 구직', '2024-09-25', '2024-10-01 14:20', 'processing', 5000000, 5000000, 6000000, 5000000, '네트워크엔지니어', '경력', '학사', '프리랜서', 'C,C++,C#,html,css,js,Go,aws,oracle,redis', '정보처리기사,리눅스마스터,AWS자격증', '서울,경/인', 'Virtoo by LG 사용 안내16.pdf'),
	(18, 'abc004', '네트워크 엔지니어 경력직 구직', '2024-09-25', '2024-07-31 14:18', 'unprocessing', 50000000, 50000000, 60000000, 0, '네트워크엔지니어', '경력', '학력무관', '정규직', 'JAVA,Python,C,C++,C#,html,css,js,Go,kotlin,aws', '정보처리기사,리눅스마스터,AWS자격증', '서울,경/인,강원,전남', NULL),
	(19, 'abc005', '보안엔지니어 정규직 구직합니다.', '2024-09-25', '2024-09-30 14:23', 'processing', 5000000, 5000000, 6000000, 5000000, '보안엔지니어', '경력', '학력무관', '계약직6개월,정규직', 'swift,oracle,redis,mysql,nosql,mariadb', '리눅스마스터,기타', '서울,경북,전남', 'Virtoo by LG 사용 안내17.pdf'),
	(20, 'abc005', '보안엔지니어 프리랜서 건당', '2024-09-25', '2024-10-12 14:26', 'processing', 1000000, 1000000, 2000000, 0, '보안엔지니어', '경력', '고졸,초대졸,학사', '프리랜서', 'JAVA,Python,C,C++,C#,html,css,js,Go,kotlin,aws,springboot,react,vue,django,tensorflow,flutter,ios,android,swift,oracle,redis,mysql,nosql,mariadb', '정보처리기사,SQLD,SQLP,리눅스마스터,AWS자격증,기타', '서울,경/인,경남,경북', NULL),
	(21, 'abc006', '게임 개발 인턴 구직', '2024-09-25', '2024-11-21 14:26', 'processing', 2000000, 2000000, 3000000, 2000000, '게임 개발', '신입', '학력무관', '인턴', 'C,C++,C#,html,css,js,Go,kotlin,aws,springboot,react,vue', '', '경/인', 'Virtoo by LG 사용 안내18.pdf'),
	(22, 'abc006', '게임개발 퍼플리싱 프리랜서 건당 구직', '2024-09-25', '2024-09-28 14:26', 'processing', 300000, 300000, 500000, 0, '웹,앱,게임 개발', '경력', '학력무관', '프리랜서', 'springboot,react,vue,django,tensorflow,flutter', '기타', '서울,경/인', NULL),
	(23, 'abc006', '게임개발  정규직 구직', '2024-09-25', '2024-06-01 14:29', 'unprocessing', 30000000, 30000000, 40000000, 0, '게임 개발', '', '', '', '', '', '', NULL),
	(24, 'abc006', '게임개발 모두  다 합니다.', '2024-09-25', '2024-03-29 14:30', 'unprocessing', 50000000, 50000000, 60000000, 0, '게임 개발', '경력', '학사,학력무관', '정규직', '', '기타', '서울,경/인', 'Virtoo by LG 사용 안내19.pdf'),
	(25, 'abc007', '클라우드 엔지니어 정규직 구직 (연봉)', '2024-09-25', '2024-09-25', 'success', 40000000, 40000000, 50000000, 50000000, '클라우드엔지니어', '경력', '학사,석사,학력무관', '정규직', '', '기타', '서울,경/인,강원,경남,경북,전남,전북,충남,충북,제주', NULL),
	(26, 'abc007', '클라우드 엔지니어 프리랜서 건당', '2024-09-25', '2024-10-10 14:32', 'processing', 2000000, 2000000, 3000000, 0, '클라우드엔지니어', '경력', '학력무관', '프리랜서', 'JAVA,Python,C,C++,C#,html,css,js', 'AWS자격증,기타', '서울,경/인,강원,경남', NULL),
	(27, 'abc007', '클라우드 엔지니어 프리랜서 건당 구직', '2024-09-25', '2024-03-30 14:33', 'unprocessing', 5000000, 5000000, 6000000, 0, '데이터엔지니어,클라우드엔지니어', '경력', '학력무관', '프리랜서', '', 'AWS자격증', '서울,경/인,강원', NULL),
	(28, 'abc008', '파이썬 자바 C 합니다 프리랜서 건당구직', '2024-09-25', '2024-06-29 14:35', 'unprocessing', 4000000, 4000000, 5000000, 0, '백엔드', '경력', '학력무관', '프리랜서', 'JAVA,Python,C', '기타', '서울,경/인,강원', NULL),
	(29, 'abc008', '백엔드 정규직 구직 원합니다.연봉', '2024-09-25', '2024-07-10 14:35', 'unprocessing', 3000000, 3000000, 40000000, 0, '백엔드,웹', '신입', '학력무관', '정규직', 'JAVA,Python', '', '서울,경/인,강원,경남,경북,전남,전북,충남,충북,제주', NULL),
	(30, 'abc008', '백엔드 프론트엔드 둘가 가능합니다. 프리랜서', '2024-09-25', '2024-05-16 14:36', 'unprocessing', 5000000, 5000000, 6000000, 0, '백엔드,프론트엔드,웹,앱', '경력', '학사,학력무관', '프리랜서', 'JAVA,Python,html,css,js,react,vue', '기타', '서울,경/인,강원,경남', 'Virtoo by LG 사용 안내20.pdf'),
	(31, 'abc008', '프리랜서 퍼블리싱 가능합니다.', '2024-09-25', '2024-10-18 14:37', 'processing', 5000000, 5000000, 6000000, 0, '프론트엔드,웹,웹퍼블리셔', '경력', '학력무관', '프리랜서', 'springboot,react,vue', '기타', '서울,경/인,강원', 'Virtoo by LG 사용 안내21.pdf'),
	(32, 'abc008', '백엔드 및 프론트엔드 가능합니다 정규직 구직', '2024-09-25', '2024-11-01 14:38', 'processing', 5000000, 5000000, 6000000, 0, '백엔드,프론트엔드,웹,앱', '신입', '학력무관', '정규직', 'JAVA,Python,C,C++', '기타', '서울,경/인,강원,경남', 'Virtoo by LG 사용 안내22.pdf'),
	(33, 'abc008', '백엔드 경력자 프리랜서 구직', '2024-09-25', '2024-06-13 14:39', 'unprocessing', 55000000, 55000000, 6000000, 0, '백엔드', '경력', '학력무관', '프리랜서', 'JAVA,Python,C,C++,C#', '기타', '강원,경남,경북,전남', 'Virtoo by LG 사용 안내23.pdf'),
	(34, 'abc009', '머신러닝, AI 개발자  프리랜서 건당 구직합니다.', '2024-09-25', '2024-09-30 14:40', 'processing', 6000000, 6000000, 8000000, 0, '머신러닝,AI,블록체인 개발', '경력', '석사', '프리랜서', 'Python,C,html,css,js,Go', '기타', '서울,경/인,강원,경남,경북,전남,전북,충남', 'Virtoo by LG 사용 안내24.pdf'),
	(35, 'abc009', 'AI개발자 구직합니다 연봉 ', '2024-09-25', '2024-06-29 14:41', 'unprocessing', 55000000, 55000000, 80000000, 0, '머신러닝,AI,블록체인 개발', '경력', '박사,학력무관', '정규직', 'springboot,react,vue,django,tensorflow', '', '경/인,강원,경남', NULL),
	(36, 'abc009', '머신러닝 개발자 연구원(연봉)', '2024-09-25', '2024-10-31 14:42', 'processing', 70000000, 70000000, 80000000, 0, '머신러닝,AI,블록체인 개발', '경력', '학력무관', '정규직', 'Go,kotlin,aws,django,tensorflow', '기타', '서울,경/인', NULL),
	(37, 'abc010', '임베디드 개발 정규직 구직원함', '2024-09-25', '2024-10-08 14:46', 'processing', 40000000, 40000000, 45000000, 0, '임베디드 개발', '신입', '학사,학력무관', '정규직', 'C,C++,C#,redis,mysql,nosql,mariadb', '기타', '서울,경/인,강원,경남,경북', 'Virtoo by LG 사용 안내25.pdf'),
	(38, 'abc010', '임베디드 개발자 프리랜서 건당 구직', '2024-09-25', '2024-05-09 14:44', 'unprocessing', 5000000, 5000000, 6000000, 0, '임베디드 개발', '경력', '학력무관', '프리랜서', 'C,C++,C#', '기타', '서울,경/인,강원', 'Virtoo by LG 사용 안내26.pdf'),
	(39, 'abc010', '임베디드 개발자 인턴 구함', '2024-09-25', '2024-06-01 14:45', 'unprocessing', 3000000, 3000000, 4000000, 0, '임베디드 개발', '신입', '학사', '인턴', 'C,C++,C#', '', '경/인', NULL),
	(40, 'abc001', '웹 개발자 풀스텍 프리랜서 구직★', '2024-09-25', '2024-10-12 15:31', 'processing', 3300000, 3300000, 5500000, 0, '백엔드,프론트엔드,웹', '경력', '학력무관', '프리랜서', 'JAVA,Python', '기타', '서울,경/인', 'Virtoo by LG 사용 안내27.pdf'),
	(41, 'abc001', '웹개발 백엔드 개발자 구직 프리랜서 건당', '2024-09-25', '2024-11-08 15:32', 'processing', 1000000, 1000000, 2000000, 0, '백엔드,웹', '경력', '초대졸', '프리랜서', 'JAVA,Python,html,css,js,springboot', '기타', '서울,강원', 'Virtoo by LG 사용 안내28.pdf'),
	(42, 'abc001', '자바언어 개발자 구직', '2024-09-25', '2024-05-10 15:33', 'unprocessing', 3000000, 3000000, 5000000, 0, '백엔드', '경력', '학력무관', '계약직6개월,정규직', 'JAVA', '기타', '서울,경/인,강원', 'Virtoo by LG 사용 안내29.pdf'),
	(43, 'abc001', '경매등록합니다.', '2024-09-25', '2024-09-28 17:09', 'processing', 10000000, 10000000, 20000000, 0, '', '', '', '인턴', '', '', '서울', 'Virtoo by LG 사용 안내.pdf');

-- 테이블 devpanda.bid 구조 내보내기
DROP TABLE IF EXISTS bid;
CREATE TABLE IF NOT EXISTS bid (
  bidNum int(11) NOT NULL AUTO_INCREMENT,
  buyerId varchar(255) DEFAULT NULL,
  buyPersonId varchar(255) DEFAULT NULL,
  auctionNum int(11) DEFAULT NULL,
  sellerId varchar(255) DEFAULT NULL,
  bidDate varchar(255) NOT NULL,
  bidPrice int(11) NOT NULL,
  bidState int(11) NOT NULL,
  memType varchar(255) NOT NULL,
  PRIMARY KEY (bidNum),
  KEY FK_Company_TO_Bid_1 (buyerId),
  KEY FK_Auction_TO_Bid_1 (auctionNum),
  KEY FK_Person_TO_Bid_1 (sellerId),
  KEY FK_Person_TO_Bid_2 (buyPersonId),
  CONSTRAINT FK_Auction_TO_Bid_1 FOREIGN KEY (auctionNum) REFERENCES auction (auctionNum),
  CONSTRAINT FK_Company_TO_Bid_1 FOREIGN KEY (buyerId) REFERENCES company (id),
  CONSTRAINT FK_Person_TO_Bid_1 FOREIGN KEY (sellerId) REFERENCES person (id),
  CONSTRAINT FK_Person_TO_Bid_2 FOREIGN KEY (buyPersonId) REFERENCES person (id)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.bid:~17 rows (대략적) 내보내기
DELETE FROM bid;
INSERT INTO bid (bidNum, buyerId, buyPersonId, auctionNum, sellerId, bidDate, bidPrice, bidState, memType) VALUES
	(1, NULL, 'abc010', 1, 'abc001', '2024-09-25', 30000000, 0, 'person'),
	(2, NULL, 'abc001', 6, 'abc002', '2024-09-25', 1000000, 0, 'person'),
	(3, NULL, 'abc001', 25, 'abc007', '2024-09-25', 40000000, 0, 'person'),
	(4, NULL, 'abc001', 16, 'abc003', '2024-09-25', 30000000, 0, 'person'),
	(5, NULL, 'abc001', 15, 'abc003', '2024-09-25', 2000000, 0, 'person'),
	(6, NULL, 'abc001', 7, 'abc002', '2024-09-25', 28000000, 0, 'person'),
	(7, NULL, 'abc001', 10, 'abc002', '2024-09-25', 3300000, 0, 'person'),
	(8, NULL, 'abc001', 11, 'abc002', '2024-09-25', 35000000, 0, 'person'),
	(9, NULL, 'abc001', 17, 'abc004', '2024-09-25', 5000000, 0, 'person'),
	(10, NULL, 'abc001', 19, 'abc005', '2024-09-25', 5000000, 0, 'person'),
	(11, NULL, 'abc001', 21, 'abc006', '2024-09-25', 2000000, 0, 'person'),
	(12, NULL, 'abc001', 25, 'abc007', '2024-09-25', 50000000, 0, 'person'),
	(13, 'comp001', NULL, 16, 'abc003', '2024-09-25', 40000000, 3, 'company'),
	(14, 'comp001', NULL, 1, 'abc001', '2024-09-25', 31000000, 1, 'company'),
	(15, 'comp001', NULL, 2, 'abc001', '2024-09-25', 1100000, 1, 'company'),
	(16, 'comp001', NULL, 3, 'abc001', '2024-09-25', 510000, 1, 'company'),
	(17, 'comp001', NULL, 4, 'abc001', '2024-09-25', 300000, 3, 'company');

-- 테이블 devpanda.blacklist 구조 내보내기
DROP TABLE IF EXISTS blacklist;
CREATE TABLE IF NOT EXISTS blacklist (
  blackNum int(11) NOT NULL AUTO_INCREMENT,
  declPerson varchar(255) DEFAULT NULL,
  declCom varchar(255) DEFAULT NULL,
  transactionNum int(11) DEFAULT NULL,
  bidNum int(11) DEFAULT NULL,
  blackPerson varchar(255) DEFAULT NULL,
  blackCom varchar(255) DEFAULT NULL,
  title varchar(255) NOT NULL,
  content varchar(255) NOT NULL,
  reportDate varchar(255) DEFAULT NULL,
  roleType varchar(255) NOT NULL,
  PRIMARY KEY (blackNum),
  KEY FK_Person_TO_BLACKLIST_1 (declPerson),
  KEY FK_Company_TO_BLACKLIST_1 (declCom),
  KEY FK_Transaction_TO_BLACKLIST_1 (transactionNum),
  CONSTRAINT FK_Company_TO_BLACKLIST_1 FOREIGN KEY (declCom) REFERENCES company (id),
  CONSTRAINT FK_Person_TO_BLACKLIST_1 FOREIGN KEY (declPerson) REFERENCES person (id),
  CONSTRAINT FK_Transaction_TO_BLACKLIST_1 FOREIGN KEY (transactionNum) REFERENCES transaction (transactionNum)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.blacklist:~2 rows (대략적) 내보내기
DELETE FROM blacklist;
INSERT INTO blacklist (blackNum, declPerson, declCom, transactionNum, bidNum, blackPerson, blackCom, title, content, reportDate, roleType) VALUES
	(1, 'abc001', NULL, 1, 2, 'abc002', NULL, '클라이언트가 너무해요 ', '간식을 안줬음', '2024-09-25', 'B'),
	(2, NULL, 'comp001', 4, 17, 'abc001', NULL, '이사람 별로였음', '회사에서 자꾸 간식을 찾음', '2024-09-25', 'B');

-- 테이블 devpanda.company 구조 내보내기
DROP TABLE IF EXISTS company;
CREATE TABLE IF NOT EXISTS company (
  id varchar(255) NOT NULL,
  companyName varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  address varchar(255) NOT NULL,
  companyNum varchar(255) NOT NULL,
  companyImage varchar(255) NOT NULL,
  status varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.company:~22 rows (대략적) 내보내기
DELETE FROM company;
INSERT INTO company (id, companyName, email, password, address, companyNum, companyImage, status) VALUES
	('comp001', 'Tech 이노베이션', 'dayoungrenakang@gmail.com', '1234', '서울시 강남구', 'C0012345678', 'cat1.jpg', 'active'),
	('comp002', 'Future 엔터프라이즈', 'info@futureenterprises.com', '1234', '부산시 해운대구', 'C0023456789', 'company.png', 'active'),
	('comp003', 'Global 솔루션', 'support@globalsolutions.com', '1234', '인천시 남동구', 'C0034567890', 'company.png', 'active'),
	('comp004', 'Digital 호라이즌', 'service@digitalhorizons.com', '1234', '대구시 수성구', 'C0045678901', 'company.png', 'active'),
	('comp005', 'Alpha 산업', 'sales@alphaindustries.com', '1234', '광주시 북구', 'C0056789012', 'company.png', 'active'),
	('comp006', 'NextGen 테크놀러지', 'hello@nextgentech.com', '1234', '대전시 유성구', 'C0067890123', 'company.png', 'active'),
	('comp007', 'Innovative 솔루션', 'admin@innovativesolutions.com', '1234', '울산시 남구', 'C0078901234', 'company.png', 'active'),
	('comp008', 'Smart 시스템즈', 'info@smartsystems.com', '1234', '서울시 종로구', 'C0089012345', 'company.png', 'active'),
	('comp009', 'Creative 시스템', 'contact@creativeminds.com', '1234', '서울시 마포구', 'C0090123456', 'company.png', 'active'),
	('comp010', 'Tech 파인테크', 'info@techpioneers.com', '1234', '수원시 팔달구', 'C0101234567', 'company.png', 'active'),
	('comp011', 'Pioneer 테크놀러지', 'info@pioneertechnology.com', '1234', '서울시 서초구', 'C0112345678', 'company.png', 'active'),
	('comp012', 'Quantum 솔루션', 'support@quantumsolutions.com', '1234', '대구시 달서구', 'C0123456789', 'company.png', 'active'),
	('comp013', 'Visionary 시스템즈', 'service@visionarysystems.com', '1234', '인천시 연수구', 'C0134567890', 'company.png', 'active'),
	('comp014', 'Frontier 엔지니어링', 'contact@frontierengineering.com', '1234', '대전시 중구', 'C0145678901', 'company.png', 'active'),
	('comp015', 'Dynamic 인더스트리', 'info@dynamicindustries.com', '1234', '광주시 서구', 'C0156789012', 'company.png', 'active'),
	('comp016', 'Elite 테크', 'support@elitetech.com', '1234', '부산시 남구', 'C0167890123', 'company.png', 'active'),
	('comp017', 'Prime 시스템즈', 'admin@primesystems.com', '1234', '서울시 용산구', 'C0178901234', 'company.png', 'active'),
	('comp018', 'Secure 인프라', 'hello@secureinfra.com', '1234', '울산시 동구', 'C0189012345', 'company.png', 'active'),
	('comp019', 'Optimus 솔루션', 'info@optimussolutions.com', '1234', '서울시 강북구', 'C0190123456', 'company.png', 'active'),
	('comp020', 'Infinity 테크', 'contact@infinitytech.com', '1234', '수원시 영통구', 'C0201234567', 'company.png', 'active'),
	('company01', 'company01', 'company01@gmail.com', '1234', '서울시 금천구 ', '123456789', 'cat1.jpg', 'active'),
	('company02', '회사이름', 'company02@gmail.com', '1234', '서울시 금천구', '123456789', 'cat1.jpg', 'active');

-- 테이블 devpanda.emailcertification 구조 내보내기
DROP TABLE IF EXISTS emailcertification;
CREATE TABLE IF NOT EXISTS emailcertification (
  emailcertificationNum int(11) NOT NULL AUTO_INCREMENT,
  email varchar(255) NOT NULL,
  id varchar(255) DEFAULT NULL,
  certification varchar(255) NOT NULL,
  PRIMARY KEY (emailcertificationNum)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.emailcertification:~0 rows (대략적) 내보내기
DELETE FROM emailcertification;

-- 테이블 devpanda.notice 구조 내보내기
DROP TABLE IF EXISTS notice;
CREATE TABLE IF NOT EXISTS notice (
  noticNum int(11) NOT NULL AUTO_INCREMENT,
  individualId varchar(255) DEFAULT NULL,
  companyId varchar(255) DEFAULT NULL,
  status varchar(255) NOT NULL,
  content varchar(255) NOT NULL,
  PRIMARY KEY (noticNum),
  KEY FK_Person_TO_Notice_1 (individualId),
  KEY FK_Company_TO_Notice_1 (companyId),
  CONSTRAINT FK_Company_TO_Notice_1 FOREIGN KEY (companyId) REFERENCES company (id),
  CONSTRAINT FK_Person_TO_Notice_1 FOREIGN KEY (individualId) REFERENCES person (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.notice:~0 rows (대략적) 내보내기
DELETE FROM notice;

-- 테이블 devpanda.person 구조 내보내기
DROP TABLE IF EXISTS person;
CREATE TABLE IF NOT EXISTS person (
  id varchar(255) NOT NULL,
  nickName varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  address varchar(255) NOT NULL,
  sex varchar(255) NOT NULL,
  age varchar(255) NOT NULL,
  personImage varchar(255) NOT NULL,
  status varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.person:~24 rows (대략적) 내보내기
DELETE FROM person;
INSERT INTO person (id, nickName, email, password, address, sex, age, personImage, status) VALUES
	('abc001', 'abc001', 'ellie.sy1992@gmail.com', '1234', '서울시 금천구 독산동', '남성', '20', 'image1.png', 'active'),
	('abc002', 'abc002', 'abc002@kosta.co.kr', '1234', '서울시 금천구 독산동', '남성', '30', 'image1.png', 'active'),
	('abc003', 'abc003', 'abc003@kosta.co.kr', '1234', '서울시 강남구 서초동', '여성', '40', 'image1.png', 'active'),
	('abc004', 'abc004', 'abc004@kosta.co.kr', '1234', '서울시 강남구 서초동', '남성', '50', 'image1.png', 'active'),
	('abc005', 'abc005', 'abc005@kosta.co.kr', '1234', '서울시 강서구 화양동', '남성', '60', 'image1.png', 'active'),
	('abc006', 'abc006', 'abc006@kosta.co.kr', '1234', '서울시 강서구 화양동', '여성', '30', 'image6.png', 'active'),
	('abc007', 'abc007', 'abc007@kosta.co.kr', '1234', '서울시 강남구 수서동', '남성', '20', 'image1.png', 'active'),
	('abc008', 'abc008', 'abc008@kosta.co.kr', '1234', '경기도 안양시 석수동', '남성', '30', 'image1.png', 'active'),
	('abc009', 'abc009', 'abc009@kosta.co.kr', '1234', '서울시 관악구 봉천동', '여성', '40', 'image1.png', 'active'),
	('abc010', 'abc010', 'abc010@kosta.co.kr', '1234', '경기도 수지구 동천동', '남성', '50', 'image1.png', 'active'),
	('abc011', 'abc011', 'abc011@kosta.co.kr', '1234', '서울시 송파구 잠실동', '여성', '60', 'image1.png', 'active'),
	('abc012', 'abc012', 'abc012@kosta.co.kr', '1234', '서울시 노원구 상계동', '남성', '50', 'image1.png', 'active'),
	('abc013', 'abc013', 'abc013@kosta.co.kr', '1234', '서울시 은평구 불광동', '여성', '20', 'image1.png', 'active'),
	('abc014', 'abc014', 'abc014@kosta.co.kr', '1234', '서울시 동대문구 답십리동', '남성', '30', 'image1.png', 'active'),
	('abc015', 'abc015', 'abc015@kosta.co.kr', '1234', '서울시 중랑구 망우동', '여성', '40', 'image1.png', 'active'),
	('abc016', 'abc016', 'abc016@kosta.co.kr', '1234', '서울시 마포구 연남동', '남성', '50', 'image1.png', 'active'),
	('abc017', 'abc017', 'abc017@kosta.co.kr', '1234', '서울시 영등포구 여의도동', '여성', '60', 'image1.png', 'active'),
	('abc018', 'abc018', 'abc018@kosta.co.kr', '1234', '경기도 부천시 상동', '남성', '30', 'image1.png', 'active'),
	('abc019', 'abc019', 'abc019@kosta.co.kr', '1234', '서울시 성북구 정릉동', '여성', '20', 'image1.png', 'active'),
	('abc020', 'abc020', 'abc020@kosta.co.kr', '1234', '서울시 서대문구 홍은동', '남성', '30', 'image1.png', 'active'),
	('person01', 'person01', 'dayoungrenakang@gmail.com', '1234', '서울시 금천구', '남자', '100', 'mail-svgrepo-com.svg', 'active'),
	('person02', 'person02', 'person02@gmail.com', '1234', '서울시 금천구', '여성', '500', 'cat1.jpg', 'active'),
	('person03', 'person03', 'person03@gmail.com', '1234', '서울시 금천구', '남성', '111', 'cat1.jpg', 'active'),
	('person04', 'person04', 'person04@gmail.com', '1234', '서울시 금천구', '여성', '111', 'cat1.jpg', 'active');

-- 테이블 devpanda.searchcondition 구조 내보내기
DROP TABLE IF EXISTS searchcondition;
CREATE TABLE IF NOT EXISTS searchcondition (
  searchConditionNum int(11) NOT NULL AUTO_INCREMENT,
  id varchar(255) DEFAULT NULL,
  Occuptaion varchar(255) NOT NULL,
  period varchar(255) NOT NULL,
  education varchar(255) NOT NULL,
  employmentType varchar(255) NOT NULL,
  stack varchar(255) NOT NULL,
  certification varchar(255) NOT NULL,
  location varchar(255) NOT NULL,
  PRIMARY KEY (searchConditionNum),
  KEY FK_Person_TO_searchCondition_1 (id),
  CONSTRAINT FK_Person_TO_searchCondition_1 FOREIGN KEY (id) REFERENCES person (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.searchcondition:~0 rows (대략적) 내보내기
DELETE FROM searchcondition;

-- 테이블 devpanda.transaction 구조 내보내기
DROP TABLE IF EXISTS transaction;
CREATE TABLE IF NOT EXISTS transaction (
  transactionNum int(11) NOT NULL AUTO_INCREMENT,
  sellerId varchar(255) DEFAULT NULL,
  auctionNum int(11) DEFAULT NULL,
  bidNum int(11) DEFAULT NULL,
  buyerId varchar(255) NOT NULL,
  date varchar(255) NOT NULL,
  price int(11) NOT NULL,
  state varchar(255) NOT NULL,
  memType varchar(255) NOT NULL,
  PRIMARY KEY (transactionNum),
  KEY FK_Person_TO_Transaction_1 (sellerId),
  KEY FK_Auction_TO_Transaction_1 (auctionNum),
  KEY FK_Bid_TO_Transaction_1 (bidNum),
  CONSTRAINT FK_Auction_TO_Transaction_1 FOREIGN KEY (auctionNum) REFERENCES auction (auctionNum),
  CONSTRAINT FK_Bid_TO_Transaction_1 FOREIGN KEY (bidNum) REFERENCES bid (bidNum),
  CONSTRAINT FK_Person_TO_Transaction_1 FOREIGN KEY (sellerId) REFERENCES person (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 devpanda.transaction:~4 rows (대략적) 내보내기
DELETE FROM transaction;
INSERT INTO transaction (transactionNum, sellerId, auctionNum, bidNum, buyerId, date, price, state, memType) VALUES
	(1, 'abc002', 6, 2, 'abc001', '2024-09-25', 1000000, 'i', 'person'),
	(2, 'abc007', 25, 12, 'abc001', '2024-09-25', 50000000, 'i', 'person'),
	(3, 'abc003', 16, 13, 'comp001', '2024-09-25', 40000000, 'i', 'company'),
	(4, 'abc001', 4, 17, 'company01', '2024-09-25', 300000, 'i', 'company');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
