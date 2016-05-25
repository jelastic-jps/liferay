-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 29 2015 г., 05:16
-- Версия сервера: 5.7.5-m15
-- Версия PHP: 5.4.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `lportal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Account_`
--

CREATE TABLE IF NOT EXISTS `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Account_`
--

INSERT INTO `Account_` (`accountId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `parentAccountId`, `name`, `legalName`, `legalId`, `legalType`, `sicCode`, `tickerSymbol`, `industry`, `type_`, `size_`) VALUES
(20157, 20155, 0, '', '2015-04-29 05:13:51', '2015-04-29 05:13:51', 0, 'Liferay', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `Address`
--

CREATE TABLE IF NOT EXISTS `Address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AnnouncementsDelivery`
--

CREATE TABLE IF NOT EXISTS `AnnouncementsDelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AnnouncementsEntry`
--

CREATE TABLE IF NOT EXISTS `AnnouncementsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AnnouncementsFlag`
--

CREATE TABLE IF NOT EXISTS `AnnouncementsFlag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetCategory`
--

CREATE TABLE IF NOT EXISTS `AssetCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetCategoryProperty`
--

CREATE TABLE IF NOT EXISTS `AssetCategoryProperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetEntries_AssetCategories`
--

CREATE TABLE IF NOT EXISTS `AssetEntries_AssetCategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetEntries_AssetTags`
--

CREATE TABLE IF NOT EXISTS `AssetEntries_AssetTags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetEntry`
--

CREATE TABLE IF NOT EXISTS `AssetEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `AssetEntry`
--

INSERT INTO `AssetEntry` (`entryId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `classNameId`, `classPK`, `classUuid`, `classTypeId`, `visible`, `startDate`, `endDate`, `publishDate`, `expirationDate`, `mimeType`, `title`, `description`, `summary`, `url`, `layoutUuid`, `height`, `width`, `priority`, `viewCount`) VALUES
(20180, 20173, 20155, 20159, '', '2015-04-29 05:13:53', '2015-04-29 05:13:53', 20116, 20178, 'c0bf6399-7f76-4ae0-934b-148f04bc79e6', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20176', '', '', '', '', 0, 0, 0, 0),
(20189, 20182, 20155, 20159, '', '2015-04-29 05:13:55', '2015-04-29 05:13:55', 20116, 20187, 'e05d9b7e-600a-4572-b631-0eda7af8d146', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20185', '', '', '', '', 0, 0, 0, 0),
(20205, 20195, 20155, 20199, 'Test Test', '2015-04-29 05:13:56', '2015-04-29 05:13:56', 20005, 20199, '7bd887b8-a7a2-447b-9fff-b9af1ad510ff', 0, 0, NULL, NULL, NULL, NULL, '', 'Test Test', '', '', '', '', 0, 0, 0, 0),
(20326, 20318, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20116, 20323, '941e6e6d-2e82-455a-ac1e-7784e235e7d9', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20321', '', '', '', '', 0, 0, 0, 0),
(20337, 20330, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20116, 20335, 'faaa7974-2b0d-411c-9340-bc2a03e9aa1c', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20333', '', '', '', '', 0, 0, 0, 0),
(20347, 20340, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:03', 20116, 20345, '37a6e918-1133-44ca-bc0a-e635a43e3611', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20343', '', '', '', '', 0, 0, 0, 0),
(20366, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20116, 20364, 'ada77fdb-2525-4945-9274-cb977d9d2a5f', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20362', '', '', '', '', 0, 0, 0, 0),
(20374, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20116, 20372, 'dffe44f5-00dc-4fa7-adac-43c128ce2541', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20370', '', '', '', '', 0, 0, 0, 0),
(20392, 20377, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20116, 20390, 'e0684ef4-020b-4b27-b6c2-ccaad78ddba9', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20388', '', '', '', '', 0, 0, 0, 0),
(20401, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20116, 20399, '13d6f4d3-24ff-49cc-ac90-5e295868ddff', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20397', '', '', '', '', 0, 0, 0, 0),
(20409, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20116, 20407, '619fa239-0847-4c8f-9c8a-f9fc6618735b', 0, 0, NULL, NULL, NULL, NULL, 'text/html', '20405', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `AssetLink`
--

CREATE TABLE IF NOT EXISTS `AssetLink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetTag`
--

CREATE TABLE IF NOT EXISTS `AssetTag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetTagProperty`
--

CREATE TABLE IF NOT EXISTS `AssetTagProperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetTagStats`
--

CREATE TABLE IF NOT EXISTS `AssetTagStats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `AssetVocabulary`
--

CREATE TABLE IF NOT EXISTS `AssetVocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `AssetVocabulary`
--

INSERT INTO `AssetVocabulary` (`uuid_`, `vocabularyId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `name`, `title`, `description`, `settings_`) VALUES
('9b8456d2-bca9-43e3-a980-c4891c262482', 20325, 20195, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 'Topic', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Title language-id="en_US">Topic</Title></root>', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `BackgroundTask`
--

CREATE TABLE IF NOT EXISTS `BackgroundTask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `BlogsEntry`
--

CREATE TABLE IF NOT EXISTS `BlogsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `BlogsStatsUser`
--

CREATE TABLE IF NOT EXISTS `BlogsStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `BookmarksEntry`
--

CREATE TABLE IF NOT EXISTS `BookmarksEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `BookmarksFolder`
--

CREATE TABLE IF NOT EXISTS `BookmarksFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `BrowserTracker`
--

CREATE TABLE IF NOT EXISTS `BrowserTracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `CalEvent`
--

CREATE TABLE IF NOT EXISTS `CalEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ClassName_`
--

CREATE TABLE IF NOT EXISTS `ClassName_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `ClassName_`
--

INSERT INTO `ClassName_` (`classNameId`, `value`) VALUES
(20017, 'com.liferay.counter.model.Counter'),
(20423, 'com.liferay.portal.kernel.repository.model.FileEntry'),
(20018, 'com.liferay.portal.kernel.workflow.WorkflowTask'),
(20019, 'com.liferay.portal.model.Account'),
(20020, 'com.liferay.portal.model.Address'),
(20021, 'com.liferay.portal.model.BackgroundTask'),
(20022, 'com.liferay.portal.model.BrowserTracker'),
(20023, 'com.liferay.portal.model.ClassName'),
(20024, 'com.liferay.portal.model.ClusterGroup'),
(20025, 'com.liferay.portal.model.Company'),
(20026, 'com.liferay.portal.model.Contact'),
(20027, 'com.liferay.portal.model.Country'),
(20028, 'com.liferay.portal.model.EmailAddress'),
(20001, 'com.liferay.portal.model.Group'),
(20029, 'com.liferay.portal.model.Image'),
(20002, 'com.liferay.portal.model.Layout'),
(20030, 'com.liferay.portal.model.LayoutBranch'),
(20031, 'com.liferay.portal.model.LayoutFriendlyURL'),
(20032, 'com.liferay.portal.model.LayoutPrototype'),
(20033, 'com.liferay.portal.model.LayoutRevision'),
(20034, 'com.liferay.portal.model.LayoutSet'),
(20035, 'com.liferay.portal.model.LayoutSetBranch'),
(20036, 'com.liferay.portal.model.LayoutSetPrototype'),
(20037, 'com.liferay.portal.model.ListType'),
(20038, 'com.liferay.portal.model.Lock'),
(20039, 'com.liferay.portal.model.MembershipRequest'),
(20003, 'com.liferay.portal.model.Organization'),
(20040, 'com.liferay.portal.model.OrgGroupRole'),
(20041, 'com.liferay.portal.model.OrgLabor'),
(20042, 'com.liferay.portal.model.PasswordPolicy'),
(20043, 'com.liferay.portal.model.PasswordPolicyRel'),
(20044, 'com.liferay.portal.model.PasswordTracker'),
(20045, 'com.liferay.portal.model.Phone'),
(20046, 'com.liferay.portal.model.PluginSetting'),
(20047, 'com.liferay.portal.model.PortalPreferences'),
(20048, 'com.liferay.portal.model.Portlet'),
(20049, 'com.liferay.portal.model.PortletItem'),
(20050, 'com.liferay.portal.model.PortletPreferences'),
(20051, 'com.liferay.portal.model.Region'),
(20052, 'com.liferay.portal.model.Release'),
(20053, 'com.liferay.portal.model.Repository'),
(20054, 'com.liferay.portal.model.RepositoryEntry'),
(20055, 'com.liferay.portal.model.ResourceAction'),
(20056, 'com.liferay.portal.model.ResourceBlock'),
(20057, 'com.liferay.portal.model.ResourceBlockPermission'),
(20058, 'com.liferay.portal.model.ResourcePermission'),
(20059, 'com.liferay.portal.model.ResourceTypePermission'),
(20004, 'com.liferay.portal.model.Role'),
(20060, 'com.liferay.portal.model.ServiceComponent'),
(20061, 'com.liferay.portal.model.Shard'),
(20062, 'com.liferay.portal.model.Subscription'),
(20063, 'com.liferay.portal.model.SystemEvent'),
(20064, 'com.liferay.portal.model.Team'),
(20065, 'com.liferay.portal.model.Ticket'),
(20005, 'com.liferay.portal.model.User'),
(20006, 'com.liferay.portal.model.UserGroup'),
(20066, 'com.liferay.portal.model.UserGroupGroupRole'),
(20067, 'com.liferay.portal.model.UserGroupRole'),
(20068, 'com.liferay.portal.model.UserIdMapper'),
(20069, 'com.liferay.portal.model.UserNotificationDelivery'),
(20070, 'com.liferay.portal.model.UserNotificationEvent'),
(20191, 'com.liferay.portal.model.UserPersonalSite'),
(20071, 'com.liferay.portal.model.UserTracker'),
(20072, 'com.liferay.portal.model.UserTrackerPath'),
(20073, 'com.liferay.portal.model.VirtualHost'),
(20074, 'com.liferay.portal.model.WebDAVProps'),
(20075, 'com.liferay.portal.model.Website'),
(20076, 'com.liferay.portal.model.WorkflowDefinitionLink'),
(20077, 'com.liferay.portal.model.WorkflowInstanceLink'),
(20078, 'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),
(20079, 'com.liferay.portlet.announcements.model.AnnouncementsEntry'),
(20080, 'com.liferay.portlet.announcements.model.AnnouncementsFlag'),
(20081, 'com.liferay.portlet.asset.model.AssetCategory'),
(20082, 'com.liferay.portlet.asset.model.AssetCategoryProperty'),
(20083, 'com.liferay.portlet.asset.model.AssetEntry'),
(20084, 'com.liferay.portlet.asset.model.AssetLink'),
(20085, 'com.liferay.portlet.asset.model.AssetTag'),
(20086, 'com.liferay.portlet.asset.model.AssetTagProperty'),
(20087, 'com.liferay.portlet.asset.model.AssetTagStats'),
(20088, 'com.liferay.portlet.asset.model.AssetVocabulary'),
(20007, 'com.liferay.portlet.blogs.model.BlogsEntry'),
(20089, 'com.liferay.portlet.blogs.model.BlogsStatsUser'),
(20008, 'com.liferay.portlet.bookmarks.model.BookmarksEntry'),
(20009, 'com.liferay.portlet.bookmarks.model.BookmarksFolder'),
(20010, 'com.liferay.portlet.calendar.model.CalEvent'),
(20090, 'com.liferay.portlet.documentlibrary.model.DLContent'),
(20011, 'com.liferay.portlet.documentlibrary.model.DLFileEntry'),
(20091, 'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),
(20092, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),
(20093, 'com.liferay.portlet.documentlibrary.model.DLFileRank'),
(20094, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),
(20095, 'com.liferay.portlet.documentlibrary.model.DLFileVersion'),
(20012, 'com.liferay.portlet.documentlibrary.model.DLFolder'),
(20096, 'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),
(20315, 'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),
(20097, 'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),
(20098, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),
(20099, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),
(20100, 'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),
(20101, 'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),
(20102, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),
(20103, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),
(20104, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),
(20105, 'com.liferay.portlet.expando.model.ExpandoColumn'),
(20106, 'com.liferay.portlet.expando.model.ExpandoRow'),
(20107, 'com.liferay.portlet.expando.model.ExpandoTable'),
(20108, 'com.liferay.portlet.expando.model.ExpandoValue'),
(20109, 'com.liferay.portlet.journal.model.JournalArticle'),
(20110, 'com.liferay.portlet.journal.model.JournalArticleImage'),
(20111, 'com.liferay.portlet.journal.model.JournalArticleResource'),
(20112, 'com.liferay.portlet.journal.model.JournalContentSearch'),
(20113, 'com.liferay.portlet.journal.model.JournalFeed'),
(20013, 'com.liferay.portlet.journal.model.JournalFolder'),
(20114, 'com.liferay.portlet.messageboards.model.MBBan'),
(20115, 'com.liferay.portlet.messageboards.model.MBCategory'),
(20116, 'com.liferay.portlet.messageboards.model.MBDiscussion'),
(20117, 'com.liferay.portlet.messageboards.model.MBMailingList'),
(20014, 'com.liferay.portlet.messageboards.model.MBMessage'),
(20118, 'com.liferay.portlet.messageboards.model.MBStatsUser'),
(20015, 'com.liferay.portlet.messageboards.model.MBThread'),
(20119, 'com.liferay.portlet.messageboards.model.MBThreadFlag'),
(20120, 'com.liferay.portlet.mobiledevicerules.model.MDRAction'),
(20121, 'com.liferay.portlet.mobiledevicerules.model.MDRRule'),
(20122, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),
(20123, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),
(20124, 'com.liferay.portlet.polls.model.PollsChoice'),
(20125, 'com.liferay.portlet.polls.model.PollsQuestion'),
(20126, 'com.liferay.portlet.polls.model.PollsVote'),
(20127, 'com.liferay.portlet.ratings.model.RatingsEntry'),
(20128, 'com.liferay.portlet.ratings.model.RatingsStats'),
(20129, 'com.liferay.portlet.shopping.model.ShoppingCart'),
(20130, 'com.liferay.portlet.shopping.model.ShoppingCategory'),
(20131, 'com.liferay.portlet.shopping.model.ShoppingCoupon'),
(20132, 'com.liferay.portlet.shopping.model.ShoppingItem'),
(20133, 'com.liferay.portlet.shopping.model.ShoppingItemField'),
(20134, 'com.liferay.portlet.shopping.model.ShoppingItemPrice'),
(20135, 'com.liferay.portlet.shopping.model.ShoppingOrder'),
(20136, 'com.liferay.portlet.shopping.model.ShoppingOrderItem'),
(20137, 'com.liferay.portlet.social.model.SocialActivity'),
(20138, 'com.liferay.portlet.social.model.SocialActivityAchievement'),
(20139, 'com.liferay.portlet.social.model.SocialActivityCounter'),
(20140, 'com.liferay.portlet.social.model.SocialActivityLimit'),
(20141, 'com.liferay.portlet.social.model.SocialActivitySet'),
(20142, 'com.liferay.portlet.social.model.SocialActivitySetting'),
(20143, 'com.liferay.portlet.social.model.SocialRelation'),
(20144, 'com.liferay.portlet.social.model.SocialRequest'),
(20145, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),
(20146, 'com.liferay.portlet.softwarecatalog.model.SCLicense'),
(20147, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),
(20148, 'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),
(20149, 'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),
(20150, 'com.liferay.portlet.trash.model.TrashEntry'),
(20151, 'com.liferay.portlet.trash.model.TrashVersion'),
(20152, 'com.liferay.portlet.wiki.model.WikiNode'),
(20016, 'com.liferay.portlet.wiki.model.WikiPage'),
(20153, 'com.liferay.portlet.wiki.model.WikiPageResource');

-- --------------------------------------------------------

--
-- Структура таблицы `ClusterGroup`
--

CREATE TABLE IF NOT EXISTS `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Company`
--

CREATE TABLE IF NOT EXISTS `Company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Company`
--

INSERT INTO `Company` (`companyId`, `accountId`, `webId`, `key_`, `mx`, `homeURL`, `logoId`, `system`, `maxUsers`, `active_`) VALUES
(20155, 20157, 'liferay.com', 'rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABC1WV3WRGZqIg7MWAN8+LOk', 'liferay.com', '', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Contact_`
--

CREATE TABLE IF NOT EXISTS `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Contact_`
--

INSERT INTO `Contact_` (`contactId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `classNameId`, `classPK`, `accountId`, `parentContactId`, `emailAddress`, `firstName`, `middleName`, `lastName`, `prefixId`, `suffixId`, `male`, `birthday`, `smsSn`, `aimSn`, `facebookSn`, `icqSn`, `jabberSn`, `msnSn`, `mySpaceSn`, `skypeSn`, `twitterSn`, `ymSn`, `employeeStatusId`, `employeeNumber`, `jobTitle`, `jobClass`, `hoursOfOperation`) VALUES
(20160, 20155, 20159, '', '2015-04-29 05:13:51', '2015-04-29 05:13:51', 20005, 20159, 20157, 0, 'default@liferay.com', '', '', '', 0, 0, 1, '2015-04-29 05:13:51', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20200, 20155, 20199, '', '2015-04-29 05:13:56', '2015-04-29 05:13:56', 20005, 20199, 20157, 0, 'test@liferay.com', 'Test', '', 'Test', 0, 0, 1, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `Counter`
--

CREATE TABLE IF NOT EXISTS `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Counter`
--

INSERT INTO `Counter` (`name`, `currentId`) VALUES
('com.liferay.counter.model.Counter', 20500),
('com.liferay.portal.model.Layout#20173#true', 1),
('com.liferay.portal.model.Layout#20182#false', 1),
('com.liferay.portal.model.Layout#20318#true', 1),
('com.liferay.portal.model.Layout#20330#true', 1),
('com.liferay.portal.model.Layout#20340#true', 1),
('com.liferay.portal.model.Layout#20351#true', 2),
('com.liferay.portal.model.Layout#20377#true', 3),
('com.liferay.portal.model.ResourceAction', 1100),
('com.liferay.portal.model.ResourcePermission', 500);

-- --------------------------------------------------------

--
-- Структура таблицы `Country`
--

CREATE TABLE IF NOT EXISTS `Country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Country`
--

INSERT INTO `Country` (`countryId`, `name`, `a2`, `a3`, `number_`, `idd_`, `zipRequired`, `active_`) VALUES
(1, 'canada', 'CA', 'CAN', '124', '001', 1, 1),
(2, 'china', 'CN', 'CHN', '156', '086', 1, 1),
(3, 'france', 'FR', 'FRA', '250', '033', 1, 1),
(4, 'germany', 'DE', 'DEU', '276', '049', 1, 1),
(5, 'hong-kong', 'HK', 'HKG', '344', '852', 1, 1),
(6, 'hungary', 'HU', 'HUN', '348', '036', 1, 1),
(7, 'israel', 'IL', 'ISR', '376', '972', 1, 1),
(8, 'italy', 'IT', 'ITA', '380', '039', 1, 1),
(9, 'japan', 'JP', 'JPN', '392', '081', 0, 1),
(10, 'south-korea', 'KR', 'KOR', '410', '082', 1, 1),
(11, 'netherlands', 'NL', 'NLD', '528', '031', 1, 1),
(12, 'portugal', 'PT', 'PRT', '620', '351', 1, 1),
(13, 'russia', 'RU', 'RUS', '643', '007', 1, 1),
(14, 'singapore', 'SG', 'SGP', '702', '065', 1, 1),
(15, 'spain', 'ES', 'ESP', '724', '034', 1, 1),
(16, 'turkey', 'TR', 'TUR', '792', '090', 1, 1),
(17, 'vietnam', 'VN', 'VNM', '704', '084', 1, 1),
(18, 'united-kingdom', 'GB', 'GBR', '826', '044', 1, 1),
(19, 'united-states', 'US', 'USA', '840', '001', 1, 1),
(20, 'afghanistan', 'AF', 'AFG', '4', '093', 1, 1),
(21, 'albania', 'AL', 'ALB', '8', '355', 1, 1),
(22, 'algeria', 'DZ', 'DZA', '12', '213', 1, 1),
(23, 'american-samoa', 'AS', 'ASM', '16', '684', 1, 1),
(24, 'andorra', 'AD', 'AND', '20', '376', 1, 1),
(25, 'angola', 'AO', 'AGO', '24', '244', 0, 1),
(26, 'anguilla', 'AI', 'AIA', '660', '264', 1, 1),
(27, 'antarctica', 'AQ', 'ATA', '10', '672', 1, 1),
(28, 'antigua-barbuda', 'AG', 'ATG', '28', '268', 0, 1),
(29, 'argentina', 'AR', 'ARG', '32', '054', 1, 1),
(30, 'armenia', 'AM', 'ARM', '51', '374', 1, 1),
(31, 'aruba', 'AW', 'ABW', '533', '297', 0, 1),
(32, 'australia', 'AU', 'AUS', '36', '061', 1, 1),
(33, 'austria', 'AT', 'AUT', '40', '043', 1, 1),
(34, 'azerbaijan', 'AZ', 'AZE', '31', '994', 1, 1),
(35, 'bahamas', 'BS', 'BHS', '44', '242', 0, 1),
(36, 'bahrain', 'BH', 'BHR', '48', '973', 1, 1),
(37, 'bangladesh', 'BD', 'BGD', '50', '880', 1, 1),
(38, 'barbados', 'BB', 'BRB', '52', '246', 1, 1),
(39, 'belarus', 'BY', 'BLR', '112', '375', 1, 1),
(40, 'belgium', 'BE', 'BEL', '56', '032', 1, 1),
(41, 'belize', 'BZ', 'BLZ', '84', '501', 0, 1),
(42, 'benin', 'BJ', 'BEN', '204', '229', 0, 1),
(43, 'bermuda', 'BM', 'BMU', '60', '441', 1, 1),
(44, 'bhutan', 'BT', 'BTN', '64', '975', 1, 1),
(45, 'bolivia', 'BO', 'BOL', '68', '591', 1, 1),
(46, 'bosnia-herzegovina', 'BA', 'BIH', '70', '387', 1, 1),
(47, 'botswana', 'BW', 'BWA', '72', '267', 0, 1),
(48, 'brazil', 'BR', 'BRA', '76', '055', 1, 1),
(49, 'british-virgin-islands', 'VG', 'VGB', '92', '284', 1, 1),
(50, 'brunei', 'BN', 'BRN', '96', '673', 1, 1),
(51, 'bulgaria', 'BG', 'BGR', '100', '359', 1, 1),
(52, 'burkina-faso', 'BF', 'BFA', '854', '226', 0, 1),
(53, 'burma-myanmar', 'MM', 'MMR', '104', '095', 1, 1),
(54, 'burundi', 'BI', 'BDI', '108', '257', 0, 1),
(55, 'cambodia', 'KH', 'KHM', '116', '855', 1, 1),
(56, 'cameroon', 'CM', 'CMR', '120', '237', 1, 1),
(57, 'cape-verde-island', 'CV', 'CPV', '132', '238', 1, 1),
(58, 'cayman-islands', 'KY', 'CYM', '136', '345', 1, 1),
(59, 'central-african-republic', 'CF', 'CAF', '140', '236', 0, 1),
(60, 'chad', 'TD', 'TCD', '148', '235', 1, 1),
(61, 'chile', 'CL', 'CHL', '152', '056', 1, 1),
(62, 'christmas-island', 'CX', 'CXR', '162', '061', 1, 1),
(63, 'cocos-islands', 'CC', 'CCK', '166', '061', 1, 1),
(64, 'colombia', 'CO', 'COL', '170', '057', 1, 1),
(65, 'comoros', 'KM', 'COM', '174', '269', 0, 1),
(66, 'republic-of-congo', 'CD', 'COD', '180', '242', 0, 1),
(67, 'democratic-republic-of-congo', 'CG', 'COG', '178', '243', 0, 1),
(68, 'cook-islands', 'CK', 'COK', '184', '682', 0, 1),
(69, 'costa-rica', 'CR', 'CRI', '188', '506', 1, 1),
(70, 'croatia', 'HR', 'HRV', '191', '385', 1, 1),
(71, 'cuba', 'CU', 'CUB', '192', '053', 1, 1),
(72, 'cyprus', 'CY', 'CYP', '196', '357', 1, 1),
(73, 'czech-republic', 'CZ', 'CZE', '203', '420', 1, 1),
(74, 'denmark', 'DK', 'DNK', '208', '045', 1, 1),
(75, 'djibouti', 'DJ', 'DJI', '262', '253', 0, 1),
(76, 'dominica', 'DM', 'DMA', '212', '767', 0, 1),
(77, 'dominican-republic', 'DO', 'DOM', '214', '809', 1, 1),
(78, 'ecuador', 'EC', 'ECU', '218', '593', 1, 1),
(79, 'egypt', 'EG', 'EGY', '818', '020', 1, 1),
(80, 'el-salvador', 'SV', 'SLV', '222', '503', 1, 1),
(81, 'equatorial-guinea', 'GQ', 'GNQ', '226', '240', 0, 1),
(82, 'eritrea', 'ER', 'ERI', '232', '291', 0, 1),
(83, 'estonia', 'EE', 'EST', '233', '372', 1, 1),
(84, 'ethiopia', 'ET', 'ETH', '231', '251', 1, 1),
(85, 'faeroe-islands', 'FO', 'FRO', '234', '298', 1, 1),
(86, 'falkland-islands', 'FK', 'FLK', '238', '500', 1, 1),
(87, 'fiji-islands', 'FJ', 'FJI', '242', '679', 0, 1),
(88, 'finland', 'FI', 'FIN', '246', '358', 1, 1),
(89, 'french-guiana', 'GF', 'GUF', '254', '594', 1, 1),
(90, 'french-polynesia', 'PF', 'PYF', '258', '689', 1, 1),
(91, 'gabon', 'GA', 'GAB', '266', '241', 1, 1),
(92, 'gambia', 'GM', 'GMB', '270', '220', 0, 1),
(93, 'georgia', 'GE', 'GEO', '268', '995', 1, 1),
(94, 'ghana', 'GH', 'GHA', '288', '233', 0, 1),
(95, 'gibraltar', 'GI', 'GIB', '292', '350', 1, 1),
(96, 'greece', 'GR', 'GRC', '300', '030', 1, 1),
(97, 'greenland', 'GL', 'GRL', '304', '299', 1, 1),
(98, 'grenada', 'GD', 'GRD', '308', '473', 0, 1),
(99, 'guadeloupe', 'GP', 'GLP', '312', '590', 1, 1),
(100, 'guam', 'GU', 'GUM', '316', '671', 1, 1),
(101, 'guatemala', 'GT', 'GTM', '320', '502', 1, 1),
(102, 'guinea', 'GN', 'GIN', '324', '224', 0, 1),
(103, 'guinea-bissau', 'GW', 'GNB', '624', '245', 1, 1),
(104, 'guyana', 'GY', 'GUY', '328', '592', 0, 1),
(105, 'haiti', 'HT', 'HTI', '332', '509', 1, 1),
(106, 'honduras', 'HN', 'HND', '340', '504', 1, 1),
(107, 'iceland', 'IS', 'ISL', '352', '354', 1, 1),
(108, 'india', 'IN', 'IND', '356', '091', 1, 1),
(109, 'indonesia', 'ID', 'IDN', '360', '062', 1, 1),
(110, 'iran', 'IR', 'IRN', '364', '098', 1, 1),
(111, 'iraq', 'IQ', 'IRQ', '368', '964', 1, 1),
(112, 'ireland', 'IE', 'IRL', '372', '353', 0, 1),
(113, 'ivory-coast', 'CI', 'CIV', '384', '225', 1, 1),
(114, 'jamaica', 'JM', 'JAM', '388', '876', 1, 1),
(115, 'jordan', 'JO', 'JOR', '400', '962', 1, 1),
(116, 'kazakhstan', 'KZ', 'KAZ', '398', '007', 1, 1),
(117, 'kenya', 'KE', 'KEN', '404', '254', 1, 1),
(118, 'kiribati', 'KI', 'KIR', '408', '686', 0, 1),
(119, 'kuwait', 'KW', 'KWT', '414', '965', 1, 1),
(120, 'north-korea', 'KP', 'PRK', '408', '850', 0, 1),
(121, 'kyrgyzstan', 'KG', 'KGZ', '471', '996', 1, 1),
(122, 'laos', 'LA', 'LAO', '418', '856', 1, 1),
(123, 'latvia', 'LV', 'LVA', '428', '371', 1, 1),
(124, 'lebanon', 'LB', 'LBN', '422', '961', 1, 1),
(125, 'lesotho', 'LS', 'LSO', '426', '266', 1, 1),
(126, 'liberia', 'LR', 'LBR', '430', '231', 1, 1),
(127, 'libya', 'LY', 'LBY', '434', '218', 1, 1),
(128, 'liechtenstein', 'LI', 'LIE', '438', '423', 1, 1),
(129, 'lithuania', 'LT', 'LTU', '440', '370', 1, 1),
(130, 'luxembourg', 'LU', 'LUX', '442', '352', 1, 1),
(131, 'macau', 'MO', 'MAC', '446', '853', 0, 1),
(132, 'macedonia', 'MK', 'MKD', '807', '389', 1, 1),
(133, 'madagascar', 'MG', 'MDG', '450', '261', 1, 1),
(134, 'malawi', 'MW', 'MWI', '454', '265', 0, 1),
(135, 'malaysia', 'MY', 'MYS', '458', '060', 1, 1),
(136, 'maldives', 'MV', 'MDV', '462', '960', 1, 1),
(137, 'mali', 'ML', 'MLI', '466', '223', 0, 1),
(138, 'malta', 'MT', 'MLT', '470', '356', 1, 1),
(139, 'marshall-islands', 'MH', 'MHL', '584', '692', 1, 1),
(140, 'martinique', 'MQ', 'MTQ', '474', '596', 1, 1),
(141, 'mauritania', 'MR', 'MRT', '478', '222', 0, 1),
(142, 'mauritius', 'MU', 'MUS', '480', '230', 0, 1),
(143, 'mayotte-island', 'YT', 'MYT', '175', '269', 1, 1),
(144, 'mexico', 'MX', 'MEX', '484', '052', 1, 1),
(145, 'micronesia', 'FM', 'FSM', '583', '691', 1, 1),
(146, 'moldova', 'MD', 'MDA', '498', '373', 1, 1),
(147, 'monaco', 'MC', 'MCO', '492', '377', 1, 1),
(148, 'mongolia', 'MN', 'MNG', '496', '976', 1, 1),
(149, 'montenegro', 'ME', 'MNE', '499', '382', 1, 1),
(150, 'montserrat', 'MS', 'MSR', '500', '664', 0, 1),
(151, 'morocco', 'MA', 'MAR', '504', '212', 1, 1),
(152, 'mozambique', 'MZ', 'MOZ', '508', '258', 1, 1),
(153, 'namibia', 'NA', 'NAM', '516', '264', 1, 1),
(154, 'nauru', 'NR', 'NRU', '520', '674', 0, 1),
(155, 'nepal', 'NP', 'NPL', '524', '977', 1, 1),
(156, 'netherlands-antilles', 'AN', 'ANT', '530', '599', 1, 1),
(157, 'new-caledonia', 'NC', 'NCL', '540', '687', 1, 1),
(158, 'new-zealand', 'NZ', 'NZL', '554', '064', 1, 1),
(159, 'nicaragua', 'NI', 'NIC', '558', '505', 1, 1),
(160, 'niger', 'NE', 'NER', '562', '227', 1, 1),
(161, 'nigeria', 'NG', 'NGA', '566', '234', 1, 1),
(162, 'niue', 'NU', 'NIU', '570', '683', 0, 1),
(163, 'norfolk-island', 'NF', 'NFK', '574', '672', 1, 1),
(164, 'norway', 'NO', 'NOR', '578', '047', 1, 1),
(165, 'oman', 'OM', 'OMN', '512', '968', 1, 1),
(166, 'pakistan', 'PK', 'PAK', '586', '092', 1, 1),
(167, 'palau', 'PW', 'PLW', '585', '680', 1, 1),
(168, 'palestine', 'PS', 'PSE', '275', '970', 1, 1),
(169, 'panama', 'PA', 'PAN', '591', '507', 1, 1),
(170, 'papua-new-guinea', 'PG', 'PNG', '598', '675', 1, 1),
(171, 'paraguay', 'PY', 'PRY', '600', '595', 1, 1),
(172, 'peru', 'PE', 'PER', '604', '051', 1, 1),
(173, 'philippines', 'PH', 'PHL', '608', '063', 1, 1),
(174, 'poland', 'PL', 'POL', '616', '048', 1, 1),
(175, 'puerto-rico', 'PR', 'PRI', '630', '787', 1, 1),
(176, 'qatar', 'QA', 'QAT', '634', '974', 0, 1),
(177, 'reunion-island', 'RE', 'REU', '638', '262', 1, 1),
(178, 'romania', 'RO', 'ROU', '642', '040', 1, 1),
(179, 'rwanda', 'RW', 'RWA', '646', '250', 0, 1),
(180, 'st-helena', 'SH', 'SHN', '654', '290', 1, 1),
(181, 'st-kitts', 'KN', 'KNA', '659', '869', 0, 1),
(182, 'st-lucia', 'LC', 'LCA', '662', '758', 0, 1),
(183, 'st-pierre-miquelon', 'PM', 'SPM', '666', '508', 1, 1),
(184, 'st-vincent', 'VC', 'VCT', '670', '784', 1, 1),
(185, 'san-marino', 'SM', 'SMR', '674', '378', 1, 1),
(186, 'sao-tome-principe', 'ST', 'STP', '678', '239', 0, 1),
(187, 'saudi-arabia', 'SA', 'SAU', '682', '966', 1, 1),
(188, 'senegal', 'SN', 'SEN', '686', '221', 1, 1),
(189, 'serbia', 'RS', 'SRB', '688', '381', 1, 1),
(190, 'seychelles', 'SC', 'SYC', '690', '248', 0, 1),
(191, 'sierra-leone', 'SL', 'SLE', '694', '249', 0, 1),
(192, 'slovakia', 'SK', 'SVK', '703', '421', 1, 1),
(193, 'slovenia', 'SI', 'SVN', '705', '386', 1, 1),
(194, 'solomon-islands', 'SB', 'SLB', '90', '677', 0, 1),
(195, 'somalia', 'SO', 'SOM', '706', '252', 0, 1),
(196, 'south-africa', 'ZA', 'ZAF', '710', '027', 1, 1),
(197, 'sri-lanka', 'LK', 'LKA', '144', '094', 1, 1),
(198, 'sudan', 'SD', 'SDN', '736', '095', 1, 1),
(199, 'suriname', 'SR', 'SUR', '740', '597', 0, 1),
(200, 'swaziland', 'SZ', 'SWZ', '748', '268', 1, 1),
(201, 'sweden', 'SE', 'SWE', '752', '046', 1, 1),
(202, 'switzerland', 'CH', 'CHE', '756', '041', 1, 1),
(203, 'syria', 'SY', 'SYR', '760', '963', 0, 1),
(204, 'taiwan', 'TW', 'TWN', '158', '886', 1, 1),
(205, 'tajikistan', 'TJ', 'TJK', '762', '992', 1, 1),
(206, 'tanzania', 'TZ', 'TZA', '834', '255', 0, 1),
(207, 'thailand', 'TH', 'THA', '764', '066', 1, 1),
(208, 'togo', 'TG', 'TGO', '768', '228', 1, 1),
(209, 'tonga', 'TO', 'TON', '776', '676', 0, 1),
(210, 'trinidad-tobago', 'TT', 'TTO', '780', '868', 0, 1),
(211, 'tunisia', 'TN', 'TUN', '788', '216', 1, 1),
(212, 'turkmenistan', 'TM', 'TKM', '795', '993', 1, 1),
(213, 'turks-caicos', 'TC', 'TCA', '796', '649', 1, 1),
(214, 'tuvalu', 'TV', 'TUV', '798', '688', 0, 1),
(215, 'uganda', 'UG', 'UGA', '800', '256', 0, 1),
(216, 'ukraine', 'UA', 'UKR', '804', '380', 1, 1),
(217, 'united-arab-emirates', 'AE', 'ARE', '784', '971', 0, 1),
(218, 'uruguay', 'UY', 'URY', '858', '598', 1, 1),
(219, 'uzbekistan', 'UZ', 'UZB', '860', '998', 1, 1),
(220, 'vanuatu', 'VU', 'VUT', '548', '678', 0, 1),
(221, 'vatican-city', 'VA', 'VAT', '336', '039', 1, 1),
(222, 'venezuela', 'VE', 'VEN', '862', '058', 1, 1),
(223, 'wallis-futuna', 'WF', 'WLF', '876', '681', 1, 1),
(224, 'western-samoa', 'WS', 'WSM', '882', '685', 1, 1),
(225, 'yemen', 'YE', 'YEM', '887', '967', 0, 1),
(226, 'zambia', 'ZM', 'ZMB', '894', '260', 1, 1),
(227, 'zimbabwe', 'ZW', 'ZWE', '716', '263', 0, 1),
(228, 'aland-islands', 'AX', 'ALA', '248', '359', 1, 1),
(229, 'bonaire-st-eustatius-saba', 'BQ', 'BES', '535', '599', 1, 1),
(230, 'bouvet-island', 'BV', 'BVT', '74', '047', 1, 1),
(231, 'british-indian-ocean-territory', 'IO', 'IOT', '86', '246', 1, 1),
(232, 'curacao', 'CW', 'CUW', '531', '599', 1, 1),
(233, 'french-southern-territories', 'TF', 'ATF', '260', '033', 0, 1),
(234, 'guernsey', 'GG', 'GGY', '831', '044', 1, 1),
(235, 'heard-island-mcdonald-islands', 'HM', 'HMD', '334', '061', 1, 1),
(236, 'isle-of-man', 'IM', 'IMN', '833', '044', 1, 1),
(237, 'jersey', 'JE', 'JEY', '832', '044', 1, 1),
(238, 'northern-mariana-islands', 'MP', 'MNP', '580', '670', 1, 1),
(239, 'pitcairn', 'PN', 'PCN', '612', '649', 1, 1),
(240, 'south-georgia-south-sandwich-islands', 'GS', 'SGS', '239', '044', 1, 1),
(241, 'south-sudan', 'SS', 'SSD', '728', '211', 1, 1),
(242, 'sint-maarten', 'SX', 'SXM', '534', '721', 1, 1),
(243, 'st-barthelemy', 'BL', 'BLM', '652', '590', 1, 1),
(244, 'st-martin', 'MF', 'MAF', '663', '590', 1, 1),
(245, 'tokelau', 'TK', 'TKL', '772', '690', 0, 1),
(246, 'timor-leste', 'TL', 'TLS', '626', '670', 1, 1),
(247, 'united-states-minor-outlying-islands', 'UM', 'UMI', '581', '699', 1, 1),
(248, 'united-states-virgin-islands', 'VI', 'VIR', '850', '340', 1, 1),
(249, 'western-sahara', 'EH', 'ESH', '732', '212', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `CyrusUser`
--

CREATE TABLE IF NOT EXISTS `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `CyrusVirtual`
--

CREATE TABLE IF NOT EXISTS `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DDLRecord`
--

CREATE TABLE IF NOT EXISTS `DDLRecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DDLRecordSet`
--

CREATE TABLE IF NOT EXISTS `DDLRecordSet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DDLRecordVersion`
--

CREATE TABLE IF NOT EXISTS `DDLRecordVersion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DDMContent`
--

CREATE TABLE IF NOT EXISTS `DDMContent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DDMStorageLink`
--

CREATE TABLE IF NOT EXISTS `DDMStorageLink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DDMStructure`
--

CREATE TABLE IF NOT EXISTS `DDMStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `DDMStructure`
--

INSERT INTO `DDMStructure` (`uuid_`, `structureId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `parentStructureId`, `classNameId`, `structureKey`, `name`, `description`, `xsd`, `storageType`, `type_`) VALUES
('0ba8becc-ec2e-46b3-ba6a-c6a5c8bb76c5', 20304, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 0, 20091, 'LEARNING MODULE METADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Learning Module Metadata</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Learning Module Metadata</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select2235" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="home_edition" type="option" value="HE">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="business_edition" type="option" value="BE">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="enterprise_edition" type="option" value="EE">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Product]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select3212" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="1_0" type="option" value="1">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="2_0" type="option" value="2">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="3_0" type="option" value="3">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Version]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select4115" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="administration" type="option" value="admin">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="installation" type="option" value="install">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="configuration" type="option" value="config">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Topics]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select5069" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="beginner" type="option" value="beginner">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="intermediate" type="option" value="intermediate">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="advanced" type="option" value="advanced">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Level]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('07a2cd5a-0ff7-434c-a4f2-64e06c1cac76', 20305, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 0, 20091, 'MARKETING CAMPAIGN THEME METADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Marketing Campaign Theme Metadata</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Marketing Campaign Theme Metadata</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select2305" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="strong_company" type="option" value="strong">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="new_product_launch" type="option" value="product">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="company_philosophy" type="option" value="philosophy">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Select]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select3229" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="your_trusted_advisor" type="option" value="advisor">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="10_years_of_customer_solutions" type="option" value="solutions">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="making_a_difference" type="option" value="difference">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Campaign Theme]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select4282" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="awareness" type="option" value="awareness">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="lead_generation" type="option" value="leads">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="customer_service" type="option" value="service">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Business Goal]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('4bdadb85-ca0e-4370-8b44-97c8bfb9da3e', 20306, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 0, 20091, 'MEETING METADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Meeting Metadata</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Metadata for meeting</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="date" fieldNamespace="ddm" indexType="keyword" name="ddm-date3054" readOnly="false" required="false" showLabel="true" type="ddm-date" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text2217" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Meeting Name]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text4569" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Time]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text5638" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Location]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="text" name="textarea6584" readOnly="false" required="false" showLabel="true" type="textarea" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Description]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="text" name="textarea7502" readOnly="false" required="false" showLabel="true" type="textarea" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Participants]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('8a743736-29f2-45f0-aecb-f9eb1dabbdcc', 20308, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 0, 20091, 'AUTO_726D4E27-5CB3-4E7C-A387-4AAE1837A3AC', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Contract</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Contract</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="date" fieldNamespace="ddm" indexType="keyword" name="ddm-date18949" readOnly="false" required="false" showLabel="true" type="ddm-date" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Effective Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="date" fieldNamespace="ddm" indexType="keyword" name="ddm-date20127" readOnly="false" required="false" showLabel="true" type="ddm-date" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Expiration Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select10264" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="nda" type="option" value="NDA">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="msa" type="option" value="MSA">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="license_agreement" type="option" value="License">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Contract Type]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select4893" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="draft" type="option" value="Draft">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="in_review" type="option" value="Review">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="suspended" type="option" value="Suspended">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="signed" type="option" value="Signed">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Status]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text14822" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Legal Reviewer]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text17700" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Signing Authority]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text2087" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Deal Name]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 1),
('4588ffcc-654c-4c1e-b98d-cee9b55178bf', 20310, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 0, 20091, 'AUTO_0749EC04-A3FC-43D9-98A1-81EB2EACB791', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Marketing Banner</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Marketing Banner</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" indexType="keyword" name="radio5547" readOnly="false" required="false" showLabel="true" type="radio">\n		<dynamic-element name="yes" type="option" value="yes">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="no" type="option" value="no">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Needs Legal Review]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text2033" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Banner Name]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="text" name="textarea2873" readOnly="false" required="false" showLabel="true" type="textarea" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Description]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 1),
('e529ca6b-5462-4d6e-b441-5dc12c02644b', 20312, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 0, 20091, 'AUTO_987D2CDD-2A98-4947-B78F-3B5E7CE1FB58', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Online Training</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Online Training</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" indexType="keyword" name="text2082" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Lesson Title]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text2979" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Author]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 1),
('b60c2f2e-07a4-48df-8564-351c5bd040b8', 20314, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 0, 20091, 'AUTO_FE018220-1CC6-4641-A2B0-6F0B6A2C762A', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Sales Presentation</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Sales Presentation</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select2890" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="home_edition" type="option" value="HE">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="business_edition" type="option" value="BE">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="enterprise_edition" type="option" value="EE">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Product]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select3864" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="1_0" type="option" value="1">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="2_0" type="option" value="2">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="3_0" type="option" value="3">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Version]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select4831" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="website" type="option" value="website">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="collaboration" type="option" value="collaboration">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="intranet" type="option" value="intranet">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Areas of Interest]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select5929" readOnly="false" required="false" showLabel="true" type="select">\n		<dynamic-element name="acme" type="option" value="acme">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="sevencogs" type="option" value="sevencogs">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="freeplus" type="option" value="freeplus">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Competitors]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" indexType="keyword" name="text1993" readOnly="false" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Prospect Name]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 1);
INSERT INTO `DDMStructure` (`uuid_`, `structureId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `parentStructureId`, `classNameId`, `structureKey`, `name`, `description`, `xsd`, `storageType`, `type_`) VALUES
('50e75e42-3393-4075-86a0-f6c30b5c3f8f', 20316, 20195, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 0, 20315, 'TIKARAWMETADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">TIKARAWMETADATA</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">TIKARAWMETADATA</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" name="ClimateForcast_PROGRAM_ID" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_COMMAND_LINE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_HISTORY" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_TABLE_ID" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_INSTITUTION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_SOURCE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_CONTACT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_PROJECT_ID" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_CONVENTIONS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_REFERENCES" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_ACKNOWLEDGEMENT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_REALIZATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_EXPERIMENT_ID" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_COMMENT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="ClimateForcast_MODEL_NAME_ENGLISH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="CreativeCommons_LICENSE_URL" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="CreativeCommons_LICENSE_LOCATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="CreativeCommons_WORK_TYPE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_NAMESPACE_URI_DC" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_NAMESPACE_URI_DC_TERMS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_PREFIX_DC" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_PREFIX_DC_TERMS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_FORMAT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.FORMAT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_IDENTIFIER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_MODIFIED" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.MODIFIED]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_CONTRIBUTOR" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_COVERAGE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.COVERAGE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_CREATOR" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.CREATOR]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_CREATED" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.CREATED]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_DESCRIPTION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_LANGUAGE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_PUBLISHER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_RELATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.RELATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_RIGHTS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.RIGHTS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_SOURCE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.SOURCE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_SUBJECT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.SUBJECT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_TITLE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.TITLE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="DublinCore_TYPE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.DublinCore.TYPE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Geographic_LATITUDE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Geographic.LATITUDE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Geographic_LONGITUDE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Geographic.LONGITUDE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Geographic_ALTITUDE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Geographic.ALTITUDE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_CONTENT_ENCODING" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_CONTENT_LANGUAGE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_CONTENT_LENGTH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_CONTENT_LOCATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_CONTENT_DISPOSITION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_CONTENT_MD5" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_CONTENT_TYPE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_LAST_MODIFIED" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="HttpHeaders_LOCATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Message_MESSAGE_RECIPIENT_ADDRESS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Message_MESSAGE_FROM" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Message_MESSAGE_TO" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Message.MESSAGE_TO]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Message_MESSAGE_CC" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Message.MESSAGE_CC]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="Message_MESSAGE_BCC" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_KEYWORDS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_COMMENTS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.COMMENTS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_LAST_AUTHOR" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_AUTHOR" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.AUTHOR]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_APPLICATION_NAME" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_REVISION_NUMBER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_TEMPLATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_TOTAL_TIME" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_PRESENTATION_FORMAT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_NOTES" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.NOTES]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_MANAGER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.MANAGER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_APPLICATION_VERSION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_VERSION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.VERSION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_CONTENT_STATUS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_CATEGORY" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.CATEGORY]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_COMPANY" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.COMPANY]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_SECURITY" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.SECURITY]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_SLIDE_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_PAGE_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_PARAGRAPH_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_LINE_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_WORD_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_CHARACTER_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_CHARACTER_COUNT_WITH_SPACES" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_TABLE_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_IMAGE_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_OBJECT_COUNT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_EDIT_TIME" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_CREATION_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_LAST_SAVED" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_LAST_PRINTED" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="MSOffice_USER_DEFINED_METADATA_NAME_PREFIX" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_BITS_PER_SAMPLE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_IMAGE_LENGTH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_IMAGE_WIDTH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_SAMPLES_PER_PIXEL" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_FLASH_FIRED" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_EXPOSURE_TIME" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_F_NUMBER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.F_NUMBER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_FOCAL_LENGTH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_ISO_SPEED_RATINGS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_EQUIPMENT_MAKE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_EQUIPMENT_MODEL" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_SOFTWARE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.SOFTWARE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_ORIENTATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.ORIENTATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_RESOLUTION_HORIZONTAL" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_RESOLUTION_VERTICAL" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_RESOLUTION_UNIT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TIFF_ORIGINAL_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TikaMetadataKeys_RESOURCE_NAME_KEY" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TikaMetadataKeys_PROTECTED" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TikaMimeKeys_TIKA_MIME_FILE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="TikaMimeKeys_MIME_TYPE_MAGIC" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_DURATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.DURATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_ABS_PEAK_AUDIO_FILE_PATH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_ALBUM" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.ALBUM]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_ALT_TAPE_NAME" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_ARTIST" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.ARTIST]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_AUDIO_MOD_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_AUDIO_SAMPLE_RATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_AUDIO_SAMPLE_TYPE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_AUDIO_CHANNEL_TYPE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_AUDIO_COMPRESSOR" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_COMPOSER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.COMPOSER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_COPYRIGHT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_ENGINEER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.ENGINEER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_FILE_DATA_RATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_GENRE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.GENRE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_INSTRUMENT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_KEY" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.KEY]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_LOG_COMMENT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_LOOP" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.LOOP]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_NUMBER_OF_BEATS" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_METADATA_MOD_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_PULL_DOWN" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_RELEASE_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_SCALE_TYPE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_SCENE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.SCENE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_SHOT_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_SHOT_LOCATION" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_SHOT_NAME" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_SPEAKER_PLACEMENT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_STRETCH_MODE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_TAPE_NAME" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_TEMPO" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.TEMPO]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_TIME_SIGNATURE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_TRACK_NUMBER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_ALPHA_MODE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_COLOR_SPACE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_COMPRESSOR" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_FIELD_ORDER" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_FRAME_RATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_MOD_DATE" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_PIXEL_DEPTH" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="XMPDM_VIDEO_PIXEL_ASPECT_RATIO" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0);
INSERT INTO `DDMStructure` (`uuid_`, `structureId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `parentStructureId`, `classNameId`, `structureKey`, `name`, `description`, `xsd`, `storageType`, `type_`) VALUES
('3deb67fb-e43e-4e22-8a21-221b419e6324', 20413, 20182, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 0, 20098, 'CONTACTS', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Contacts</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Contacts</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" name="company" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Company]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="email" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Email]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="firstName" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[First Name]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" multiple="false" name="imService" required="false" showLabel="true" type="select">\n		<dynamic-element name="aol" type="option" value="aol">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[AOL]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="yahoo" type="option" value="yahoo">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="gtalk" type="option" value="gtalk">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name="predefinedValue"><![CDATA[["gtalk"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="imUserName" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Instant Messenger]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="jobTitle" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Job Title]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="lastName" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Last Name]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="notes" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Notes]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="phoneMobile" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="phoneOffice" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Phone (Office)]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('d228f8a6-d431-4ec1-b35f-545eff39efb1', 20414, 20182, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 0, 20098, 'EVENTS', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Events</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Events</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Attachment]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="double" fieldNamespace="ddm" name="cost" required="false" showLabel="true" type="ddm-number" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Cost]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Description]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="date" fieldNamespace="ddm" name="eventDate" required="false" showLabel="true" type="ddm-date" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="eventName" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Event Name]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="eventTime" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Time]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="location" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Location]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('b490044f-64a1-4c9c-80d3-b79bba820095', 20415, 20182, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 0, 20098, 'INVENTORY', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Inventory</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Inventory</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Description]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="style"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="item" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Item]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="style"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="location" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Location]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="style"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="date" fieldNamespace="ddm" name="purchaseDate" required="false" showLabel="true" type="ddm-date" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Purchase Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="style"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="double" fieldNamespace="ddm" name="purchasePrice" required="false" showLabel="true" type="ddm-number" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Purchase Price]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="double" fieldNamespace="ddm" name="quantity" required="false" showLabel="true" type="ddm-number" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Quantity]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('264fbab7-a226-48b8-b7ca-2978ff62cc22', 20416, 20182, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 0, 20098, 'ISSUES TRACKING', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Issues Tracking</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Issue Tracking</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" name="assignedTo" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Assigned To]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Attachment]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="comments" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Comments]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Description]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="date" fieldNamespace="ddm" name="dueDate" required="false" showLabel="true" type="ddm-date">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Due Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="issueId" required="false" showLabel="true" type="text" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Issue ID]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" multiple="false" name="severity" required="false" showLabel="true" type="select">\n		<dynamic-element name="critical" type="option" value="critical">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="major" type="option" value="major">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="minor" type="option" value="minor">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="trivial" type="option" value="trivial">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Severity]]></entry>\n			<entry name="predefinedValue"><![CDATA[["minor"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" multiple="false" name="status" required="false" showLabel="true" type="select">\n		<dynamic-element name="open" type="option" value="open">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="pending" type="option" value="pending">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="completed" type="option" value="completed">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Status]]></entry>\n			<entry name="predefinedValue"><![CDATA[["open"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="title" required="false" showLabel="true" type="text" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Title]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('34031c92-60af-4cc0-b10b-087e3715c141', 20417, 20182, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 0, 20098, 'MEETING MINUTES', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Meeting Minutes</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Meeting Minutes</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Attachment]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="author" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Author]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Description]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="duration" required="false" showLabel="true" type="text">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Meeting Duration]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="date" fieldNamespace="ddm" name="meetingDate" required="false" showLabel="true" type="ddm-date">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Meeting Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="minutes" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Minutes]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="title" required="false" showLabel="true" type="text" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Title]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0),
('2690fb9b-a543-4e3e-b74e-c667bae9eef2', 20418, 20182, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 0, 20098, 'TO DO', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">To Do</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">To Do</Description></root>', '<?xml version="1.0"?>\n\n<root available-locales="en_US" default-locale="en_US">\n	<dynamic-element dataType="string" name="assignedTo" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Assigned To]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Attachment]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="comments" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Comments]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Description]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="date" fieldNamespace="ddm" name="endDate" required="false" showLabel="true" type="ddm-date">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[End Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="integer" fieldNamespace="ddm" name="percentComplete" required="false" showLabel="true" type="ddm-integer" width="25">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[% Complete]]></entry>\n			<entry name="predefinedValue"><![CDATA[0]]></entry>\n			<entry name="tip"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" multiple="false" name="severity" required="false" showLabel="true" type="select">\n		<dynamic-element name="critical" type="option" value="critical">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="major" type="option" value="major">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="minor" type="option" value="minor">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="trivial" type="option" value="trivial">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Severity]]></entry>\n			<entry name="predefinedValue"><![CDATA[["minor"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="date" fieldNamespace="ddm" name="startDate" required="false" showLabel="true" type="ddm-date">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Start Date]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" multiple="false" name="status" required="false" showLabel="true" type="select">\n		<dynamic-element name="open" type="option" value="open">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="pending" type="option" value="pending">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name="completed" type="option" value="completed">\n			<meta-data locale="en_US">\n				<entry name="label"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Status]]></entry>\n			<entry name="predefinedValue"><![CDATA[["open"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType="string" name="title" required="false" showLabel="true" type="text" width="50">\n		<meta-data locale="en_US">\n			<entry name="label"><![CDATA[Title]]></entry>\n			<entry name="predefinedValue"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>', 'xml', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `DDMStructureLink`
--

CREATE TABLE IF NOT EXISTS `DDMStructureLink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DDMTemplate`
--

CREATE TABLE IF NOT EXISTS `DDMTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `DDMTemplate`
--

INSERT INTO `DDMTemplate` (`uuid_`, `templateId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `classNameId`, `classPK`, `templateKey`, `name`, `description`, `type_`, `mode_`, `language`, `script`, `cacheable`, `smallImage`, `smallImageId`, `smallImageURL`) VALUES
('4ecb5d76-d0a7-4ceb-ba6f-ae0d41e8d1c9', 20419, 20195, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20016, 0, 'WIKI-SOCIAL-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Social</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>', 'display', '', 'ftl', '<#assign liferay_ui = taglibLiferayHash["/WEB-INF/tld/liferay-ui.tld"] />\n\n<#assign wikiPageClassName = "com.liferay.portlet.wiki.model.WikiPage" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class="taglib-header">\n	<h1 class="header-title">${entry.getTitle()}</h1>\n</div>\n\n<div style="float: right;">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class="wiki-body">\n	<div class="wiki-info">\n		<span class="stats">${assetEntry.getViewCount()} <@liferay.language key="views" /></span> |\n\n		<span class="date"><@liferay.language key="last-modified" /> ${dateUtil.getDate(entry.getModifiedDate(), "dd MMM yyyy - HH:mm:ss", locale)}</span>\n\n		<span class="author"><@liferay.language key="by" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class="wiki-content">\n		<@liferay_ui["social-bookmarks"]\n			displayStyle="normal"\n			target="_blank"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		${formattedContent}\n	</div>\n\n	<div class="page-actions">\n		<div class="article-actions">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass="page-ratings" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class="page-categorization">\n	<div class="page-categories">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		${viewCategorizedPagesURL.setParameter("struts_action", "/wiki/view_categorized_pages")}\n		${viewCategorizedPagesURL.setParameter("nodeId", entry.getNodeId()?string)}\n\n		<@liferay_ui["asset-categories-summary"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class="page-tags">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		${viewTaggedPagesURL.setParameter("struts_action", "/wiki/view_tagged_pages")}\n		${viewTaggedPagesURL.setParameter("nodeId", entry.getNodeId()?string)}\n\n		<@liferay_ui["asset-tags-summary"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class="child-pages">\n		<h2><@liferay.language key="children-pages" /></h2>\n\n		<table class="taglib-search-iterator">\n			<tr class="portlet-section-header results-header">\n				<th>\n					<@liferay.language key="page" />\n				</th>\n				<th>\n					<@liferay.language key="last-modified" />\n				</th>\n				<th>\n					<@liferay.language key="ratings" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class="results-row">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					${viewPageURL.setParameter("struts_action", "/wiki/view")}\n\n					<#assign childNode = childPage.getNode() />\n\n					${viewPageURL.setParameter("nodeName", childNode.getName())}\n					${viewPageURL.setParameter("title", childPage.getTitle())}\n\n					<td>\n						<a href="${viewPageURL}">${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href="${viewPageURL}">${dateUtil.getDate(childPage.getModifiedDate(),"dd MMM yyyy - HH:mm:ss", locale)} <@liferay.language key="by" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass="child-ratings" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		${addPageURL.setParameter("struts_action", "/wiki/edit_page")}\n		${addPageURL.setParameter("redirect", currentURL)}\n		${addPageURL.setParameter("nodeId", entry.getNodeId()?string)}\n		${addPageURL.setParameter("title", "")}\n		${addPageURL.setParameter("editTitle", "1")}\n		${addPageURL.setParameter("parentTitle", entry.getTitle())}\n\n		<@liferay_ui["icon"]\n			image="add_article"\n			label=true\n			message="add-child-page"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	${viewPageAttachmentsURL.setParameter("struts_action", "/wiki/view_page_attachments") }\n\n	<@liferay_ui["icon"]\n		image="clip"\n		label=true\n		message=''${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, "attachments")}''\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == "true")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter("struts_action", "/wiki/" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui["discussion"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName="fm2"\n			ratingsEnabled=enableCommentRatings == "true"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		${editPageURL.setParameter("struts_action", "/wiki/edit_page")}\n		${editPageURL.setParameter("redirect", currentURL)}\n		${editPageURL.setParameter("nodeId", entry.getNodeId()?string)}\n		${editPageURL.setParameter("title", entry.getTitle())}\n\n		<@liferay_ui["icon"]\n			image="edit"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	${viewPageDetailsURL.setParameter("struts_action", "/wiki/view_page_details")}\n	${viewPageDetailsURL.setParameter("redirect", currentURL)}\n\n	<@liferay_ui["icon"]\n		image="history"\n		message="details"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	${printURL.setParameter("viewMode", "print")}\n	${printURL.setWindowState("pop_up")}\n\n	<#assign title = languageUtil.format(locale, "print-x-x", ["hide-accessible", htmlUtil.escape(assetRenderer.getTitle(locale))]) />\n	<#assign taglibPrintURL = "javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:''" + renderResponse.getNamespace() + "printAsset'', title: ''" + title + "'', uri: ''" + htmlUtil.escapeURL(printURL.toString()) + "''});" />\n\n	<@liferay_ui["icon"]\n		image="print"\n		message="print"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == "true">\n		<div class="${cssClass}">\n			<@liferay_ui["ratings"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == "true")>\n		<@liferay_ui["asset-links"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>', 0, 0, 20420, ''),
('ffa1d49d-5eeb-4d6b-86b6-7a1bc536e85e', 20421, 20195, 20155, 20159, '', '2015-04-29 05:14:06', '2015-04-29 05:14:06', 20081, 0, 'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Multi Column Layout</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary''s top level categories listed underneath.</Description></root>', 'display', '', 'ftl', '<#assign aui = taglibLiferayHash["/WEB-INF/tld/aui.tld"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class="results-header">\n					<h3>\n						${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class="categories">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					${categoryURL.setParameter("resetCur", "true")}\n					${categoryURL.setParameter("categoryId", category.getCategoryId()?string)}\n\n					<a href="${categoryURL}">${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService("com.liferay.portlet.asset.service.AssetCategoryService")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>', 0, 0, 20422, ''),
('ca4a566e-8feb-4ccc-a0d1-72f3e941430f', 20424, 20195, 20155, 20159, '', '2015-04-29 05:14:06', '2015-04-29 05:14:06', 20423, 0, 'DOCUMENTLIBRARY-CAROUSEL-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Carousel</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays images in a carousel.</Description></root>', 'display', '', 'ftl', '<#assign aui = taglibLiferayHash["/WEB-INF/tld/aui.tld"] />\n<#assign liferay_portlet = taglibLiferayHash["/WEB-INF/tld/liferay-portlet.tld"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id="<@liferay_portlet.namespace />carousel">\n		<#assign imageMimeTypes = propsUtil.getArray("dl.file.entry.preview.image.mime.types") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class="carousel-item">\n					<img src="${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, "")}" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use="aui-carousel">\n		new A.Carousel(\n			{\n				contentBox: ''#<@liferay_portlet.namespace />carousel'',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>', 0, 0, 20425, ''),
('e08c1a08-d9e6-4f81-95cf-7092e0f314a8', 20426, 20195, 20155, 20159, '', '2015-04-29 05:14:06', '2015-04-29 05:14:06', 20083, 0, 'ASSET-PUBLISHER-RICH-SUMMARY-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Rich Summary</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>', 'display', '', 'ftl', '<#assign liferay_ui = taglibLiferayHash["/WEB-INF/tld/liferay-ui.tld"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != "showFullContent">\n		<#assign viewURL = assetPublisherHelperImpl.getAssetViewURL(renderRequest, renderResponse, entry, true) />\n	</#if>\n\n	<div class="asset-abstract">\n		<div class="lfr-meta-actions asset-actions">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class="asset-title">\n			<a href="${viewURL}"><img alt="" src="${assetRenderer.getIconPath(renderRequest)}" />${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName="tags" />\n\n		<@getMetadataField fieldName="create-date" />\n\n		<@getMetadataField fieldName="view-count" />\n\n		<div class="asset-content">\n			<@getSocialBookmarks />\n\n			<div class="asset-summary">\n				<@getMetadataField fieldName="author" />\n\n				${htmlUtil.escape(assetRenderer.getSummary(locale))}\n\n				<a href="${viewURL}"><@liferay.language key="read-more" /><span class="hide-accessible"><@liferay.language key="about" />${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == "true")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter("struts_action", "/asset_publisher/" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui["discussion"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName="fm" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == "true"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		${redirectURL.setParameter("struts_action", "/asset_publisher/add_asset_redirect")}\n		${redirectURL.setWindowState("pop_up")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState("pop_up"), redirectURL)!"" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, "edit-x", entryTitle) />\n\n			<@liferay_ui["icon"]\n				image="edit"\n				message=title\n				url="javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:''" + renderResponse.getNamespace() + "editAsset'', title: ''" + title + "'', uri:''" + htmlUtil.escapeURL(editPortletURL.toString()) + "''});"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == "true">\n		<@liferay_ui["flags"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class="metadata-entry metadata-"${fieldName}">\n			<#assign dateFormat = "dd MMM yyyy - HH:mm:ss" />\n\n			<#if fieldName == "author">\n				<@liferay.language key="by" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == "categories">\n				<@liferay_ui["asset-categories-summary"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == "create-date">\n				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == "expiration-date">\n				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == "modified-date">\n				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == "priority">\n				${entry.getPriority()}\n			<#elseif fieldName == "publish-date">\n				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == "tags">\n				<@liferay_ui["asset-tags-summary"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == "view-count">\n				<@liferay_ui["icon"]\n					image="history"\n				/>\n\n				${entry.getViewCount()} <@liferay.language key="views" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == "true" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		${printURL.setParameter("struts_action", "/asset_publisher/view_content")}\n		${printURL.setParameter("assetEntryId", entry.getEntryId()?string)}\n		${printURL.setParameter("viewMode", "print")}\n		${printURL.setParameter("type", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				${printURL.setParameter("groupId", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			${printURL.setParameter("urlTitle", assetRenderer.getUrlTitle())}\n		</#if>\n\n		${printURL.setWindowState("pop_up")}\n\n		<@liferay_ui["icon"]\n			image="print"\n			message="print"\n			url="javascript:Liferay.Util.openWindow({id:''" + renderResponse.getNamespace() + "printAsset'', title: ''" + languageUtil.format(locale, "print-x-x", ["hide-accessible", entryTitle]) + "'', uri: ''" + htmlUtil.escapeURL(printURL.toString()) + "''});"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == "true")>\n		<div class="asset-ratings">\n			<@liferay_ui["ratings"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == "true">\n		<@liferay_ui["asset-links"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == "true">\n		<@liferay_ui["social-bookmarks"]\n			displayStyle="${socialBookmarksDisplayStyle}"\n			target="_blank"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>', 0, 0, 20427, ''),
('a0f8fb61-dbf8-4e46-9a12-673a38dc4a89', 20428, 20195, 20155, 20159, '', '2015-04-29 05:14:06', '2015-04-29 05:14:06', 20034, 0, 'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Multi Column Layout</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays a column for each top level page. Each column includes the name of a top level page with the page''s immediate children listed underneath.</Description></root>', 'display', '', 'ftl', '<#assign aui = taglibLiferayHash["/WEB-INF/tld/aui.tld"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class="results-header">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href="${layoutURL}">${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class="child-pages">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href="${pageLayoutURL}">${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>', 0, 0, 20429, ''),
('fdf96855-70aa-4a72-a9b5-7221f306f152', 20430, 20195, 20155, 20159, '', '2015-04-29 05:14:06', '2015-04-29 05:14:06', 20085, 0, 'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Color by Popularity</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>', 'display', '', 'ftl', '<#if entries?has_content>\n	<ul class="tag-items tag-list">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class="taglib-asset-tags-summary">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = "green" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = "orange" />\n				<#else>\n					<#assign color = "red" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				${tagURL.setParameter("resetCur", "true")}\n				${tagURL.setParameter("tag", entry.getName())}\n\n				<a class ="tag" style="color: ${color};" href="${tagURL}">\n					${entry.getName()}\n\n					<#if (showAssetCount == "true")>\n						<span class="tag-asset-count">(${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style="clear: both;" />\n</#if>', 0, 0, 20431, ''),
('bde01774-3619-4218-a9d7-9b60121d5d79', 20432, 20195, 20155, 20159, '', '2015-04-29 05:14:06', '2015-04-29 05:14:06', 20007, 0, 'BLOGS-BASIC-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Basic</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>', 'display', '', 'ftl', '<#assign liferay_ui = taglibLiferayHash["/WEB-INF/tld/liferay-ui.tld"] />\n\n<#list entries as entry>\n	<div class="entry">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		${viewURL.setParameter("struts_action", "/blogs/view_entry")}\n		${viewURL.setParameter("redirect", currentURL)}\n		${viewURL.setParameter("urlTitle", entry.getUrlTitle())}\n\n		<div class="entry-content">\n			<div class="entry-title">\n				<h2><a href="${viewURL}">${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class="entry-body">\n			<div class="entry-author">\n				<@liferay.language key="written-by" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href="${viewURL}"><@liferay.language key="read-more" /> <span class="hide-accessible"><@liferay.language key="about"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class="entry-footer">\n			<span class="entry-date">\n				${dateUtil.getDate(entry.getCreateDate(), "dd MMM yyyy - HH:mm:ss", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = "com.liferay.portlet.blogs.model.BlogsEntry" />\n\n			<#if (enableFlags == "true")>\n				<@liferay_ui["flags"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class="entry-categories">\n				<@liferay_ui["asset-categories-summary"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class="entry-tags">\n				<@liferay_ui["asset-tags-summary"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class="separator"><!-- --></div>\n</#list>', 0, 0, 20433, '');

-- --------------------------------------------------------

--
-- Структура таблицы `DLContent`
--

CREATE TABLE IF NOT EXISTS `DLContent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileEntry`
--

CREATE TABLE IF NOT EXISTS `DLFileEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileEntryMetadata`
--

CREATE TABLE IF NOT EXISTS `DLFileEntryMetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileEntryType`
--

CREATE TABLE IF NOT EXISTS `DLFileEntryType` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `DLFileEntryType`
--

INSERT INTO `DLFileEntryType` (`uuid_`, `fileEntryTypeId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `fileEntryTypeKey`, `name`, `description`) VALUES
('ff5fffa3-7285-4453-b3cf-3f6e530b2c5c', 0, 0, 0, 0, '', '2015-04-29 05:13:31', '2015-04-29 05:13:31', 'BASIC-DOCUMENT', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">basic-document</Name></root>', ''),
('726d4e27-5cb3-4e7c-a387-4aae1837a3ac', 20307, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 'CONTRACT', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Contract</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Contract</Description></root>'),
('0749ec04-a3fc-43d9-98a1-81eb2eacb791', 20309, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 'MARKETING BANNER', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Marketing Banner</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Marketing Banner</Description></root>'),
('987d2cdd-2a98-4947-b78f-3b5e7ce1fb58', 20311, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 'ONLINE TRAINING', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Online Training</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Online Training</Description></root>'),
('fe018220-1cc6-4641-a2b0-6f0b6a2c762a', 20313, 20195, 20155, 20159, '', '2015-04-29 05:14:01', '2015-04-29 05:14:01', 'SALES PRESENTATION', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Sales Presentation</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Sales Presentation</Description></root>');

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileEntryTypes_DDMStructures`
--

CREATE TABLE IF NOT EXISTS `DLFileEntryTypes_DDMStructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `DLFileEntryTypes_DDMStructures`
--

INSERT INTO `DLFileEntryTypes_DDMStructures` (`structureId`, `fileEntryTypeId`) VALUES
(20308, 20307),
(20305, 20309),
(20310, 20309),
(20304, 20311),
(20312, 20311),
(20306, 20313),
(20314, 20313);

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileEntryTypes_DLFolders`
--

CREATE TABLE IF NOT EXISTS `DLFileEntryTypes_DLFolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileRank`
--

CREATE TABLE IF NOT EXISTS `DLFileRank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileShortcut`
--

CREATE TABLE IF NOT EXISTS `DLFileShortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLFileVersion`
--

CREATE TABLE IF NOT EXISTS `DLFileVersion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLFolder`
--

CREATE TABLE IF NOT EXISTS `DLFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `DLSyncEvent`
--

CREATE TABLE IF NOT EXISTS `DLSyncEvent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `EmailAddress`
--

CREATE TABLE IF NOT EXISTS `EmailAddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ExpandoColumn`
--

CREATE TABLE IF NOT EXISTS `ExpandoColumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ExpandoRow`
--

CREATE TABLE IF NOT EXISTS `ExpandoRow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ExpandoTable`
--

CREATE TABLE IF NOT EXISTS `ExpandoTable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ExpandoValue`
--

CREATE TABLE IF NOT EXISTS `ExpandoValue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Groups_Orgs`
--

CREATE TABLE IF NOT EXISTS `Groups_Orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Groups_Roles`
--

CREATE TABLE IF NOT EXISTS `Groups_Roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Groups_UserGroups`
--

CREATE TABLE IF NOT EXISTS `Groups_UserGroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Group_`
--

CREATE TABLE IF NOT EXISTS `Group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Group_`
--

INSERT INTO `Group_` (`uuid_`, `groupId`, `companyId`, `creatorUserId`, `classNameId`, `classPK`, `parentGroupId`, `liveGroupId`, `treePath`, `name`, `description`, `type_`, `typeSettings`, `manualMembership`, `membershipRestriction`, `friendlyURL`, `site`, `remoteStagingGroupCount`, `active_`) VALUES
('fc987045-bab1-4699-8606-38890aa7fd4a', 20173, 20155, 20159, 20001, 20173, 0, 0, '/20173/', 'Control Panel', '', 3, '', 1, 0, '/control_panel', 0, 0, 1),
('301e6af2-85cf-4466-bf75-c51da4283f17', 20182, 20155, 20159, 20001, 20182, 0, 0, '/20182/', 'Guest', '', 1, '', 1, 0, '/guest', 1, 0, 1),
('93893be3-62f4-41c6-b3cb-59bb805133ad', 20192, 20155, 20159, 20191, 20159, 0, 0, '/20192/', 'User Personal Site', '', 3, '', 1, 0, '/personal_site', 0, 0, 1),
('2a5952b2-d0dc-494c-938f-41961cf936b1', 20195, 20155, 20159, 20025, 20155, 0, 0, '/20195/', '20155', '', 0, '', 1, 0, '/global', 1, 0, 1),
('2235cf44-1d54-4bea-b81e-f53e818123df', 20202, 20155, 20199, 20005, 20199, 0, 0, '/20202/', '20199', '', 0, '', 1, 0, '/test', 0, 0, 1),
('208661f0-08f5-4e79-8c01-11b5f91a86c3', 20318, 20155, 20159, 20032, 20317, 0, 0, '/20318/', '20317', '', 0, '', 1, 0, '/template-20317', 0, 0, 1),
('3ad05cc9-ad7d-44de-9271-c248f97efbc7', 20330, 20155, 20159, 20032, 20329, 0, 0, '/20330/', '20329', '', 0, '', 1, 0, '/template-20329', 0, 0, 1),
('1d92ac72-91b4-4c9c-babe-2505427677d2', 20340, 20155, 20159, 20032, 20339, 0, 0, '/20340/', '20339', '', 0, '', 1, 0, '/template-20339', 0, 0, 1),
('0183dc29-3a1c-4e91-bda1-9bd42360e09a', 20351, 20155, 20159, 20036, 20350, 0, 0, '/20351/', '20350', '', 0, '', 1, 0, '/template-20350', 0, 0, 1),
('06066370-5c6e-403b-aae4-04af313f45b1', 20377, 20155, 20159, 20036, 20376, 0, 0, '/20377/', '20376', '', 0, '', 1, 0, '/template-20376', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Image`
--

CREATE TABLE IF NOT EXISTS `Image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `JournalArticle`
--

CREATE TABLE IF NOT EXISTS `JournalArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `JournalArticleImage`
--

CREATE TABLE IF NOT EXISTS `JournalArticleImage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `JournalArticleResource`
--

CREATE TABLE IF NOT EXISTS `JournalArticleResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `JournalContentSearch`
--

CREATE TABLE IF NOT EXISTS `JournalContentSearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `JournalFeed`
--

CREATE TABLE IF NOT EXISTS `JournalFeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `JournalFolder`
--

CREATE TABLE IF NOT EXISTS `JournalFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Layout`
--

CREATE TABLE IF NOT EXISTS `Layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Layout`
--

INSERT INTO `Layout` (`uuid_`, `plid`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `privateLayout`, `layoutId`, `parentLayoutId`, `name`, `title`, `description`, `keywords`, `robots`, `type_`, `typeSettings`, `hidden_`, `friendlyURL`, `iconImage`, `iconImageId`, `themeId`, `colorSchemeId`, `wapThemeId`, `wapColorSchemeId`, `css`, `priority`, `layoutPrototypeUuid`, `layoutPrototypeLinkEnabled`, `sourcePrototypeLayoutUuid`) VALUES
('67248043-1da8-42c9-bcda-00277a7e6524', 20176, 20173, 20155, 20159, '', '2015-04-29 05:13:53', '2015-04-29 05:13:53', 1, 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Control Panel</Name></root>', '', '', '', '', 'control_panel', 'privateLayout=true\n', 0, '/manage', 0, 0, '', '', '', '', '', 0, '', 0, ''),
('7f049ab8-eeb4-4541-abff-5e732272bfe0', 20185, 20182, 20155, 20159, '', '2015-04-29 05:13:55', '2015-04-29 05:13:56', 0, 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Welcome</Name></root>', '', '', '', '', 'portlet', 'column-1=58,\ncolumn-2=47,\nlayout-template-id=2_columns_ii\n', 0, '/home', 0, 0, '', '', '', '', '', 0, '', 0, ''),
('ed69c0f6-5b78-4b7c-a2bc-d870772b1fdd', 20321, 20318, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 1, 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Blog</Name></root>', '', '', '', '', 'portlet', 'column-1=33,\ncolumn-2=148_INSTANCE_Z7x2UdVCL6yk,114,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n', 0, '/layout', 0, 0, '', '', '', '', '', 0, '', 0, ''),
('df40adb8-ad1e-42ff-a3a9-c78b6c2fdf57', 20333, 20330, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:03', 1, 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Content Display Page</Name></root>', '', '', '', '', 'portlet', 'column-1=141_INSTANCE_UWgfvjOeYoxa,122_INSTANCE_V8zIyK1dYL40,\ncolumn-2=3,101_INSTANCE_FMrv84eVjjtn,\ndefault-asset-publisher-portlet-id=101_INSTANCE_FMrv84eVjjtn\nlayout-template-id=2_columns_ii\nprivateLayout=true\n', 0, '/layout', 0, 0, '', '', '', '', '', 0, '', 0, ''),
('bf1d64dd-218e-406e-a949-cc5d665630d3', 20343, 20340, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:03', 1, 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Wiki</Name></root>', '', '', '', '', 'portlet', 'column-1=36,\ncolumn-2=122_INSTANCE_de4PlMR7uPNE,141_INSTANCE_Caru28tneWmg,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n', 0, '/layout', 0, 0, '', '', '', '', '', 0, '', 0, ''),
('fbce72f7-558a-4cbc-9c24-2056d3531133', 20362, 20351, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:04', 1, 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Home</Name></root>', '', '', '', '', 'portlet', 'column-1=19,\ncolumn-2=3,59_INSTANCE_IADuPQ9YUuqy,180,101_INSTANCE_MxNhOseUCVhh,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n', 0, '/home', 0, 0, '', '', '', '', '', 0, '', 0, ''),
('1ab617a5-d4db-4db8-ab8a-b67a86cfb562', 20370, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 1, 2, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Wiki</Name></root>', '', '', '', '', 'portlet', 'column-1=36,\ncolumn-2=122_INSTANCE_rrZHdNCvCMmf,148_INSTANCE_P8HDjeaORzwN,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n', 0, '/wiki', 0, 0, '', '', '', '', '', 1, '', 0, ''),
('b51748e3-ee1b-4f87-8b7f-4e7fe2e6e932', 20388, 20377, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:05', 1, 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Home</Name></root>', '', '', '', '', 'portlet', 'column-1=116,\ncolumn-2=3,82,101_INSTANCE_UhRdU2e14B9C,\nlayout-template-id=2_columns_i\nprivateLayout=true\n', 0, '/home', 0, 0, '', '', '', '', '', 0, '', 0, ''),
('a71a0fed-2485-4469-84c9-a63518750255', 20397, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 1, 2, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Documents and Media</Name></root>', '', '', '', '', 'portlet', 'column-1=20,\ncolumn-2=101_INSTANCE_RfNaDOVLn0Nq,\nlayout-template-id=1_column\nprivateLayout=true\n', 0, '/documents', 0, 0, '', '', '', '', '', 1, '', 0, ''),
('58b21059-e236-4554-8252-443f795e1254', 20405, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 1, 3, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">News</Name></root>', '', '', '', '', 'portlet', 'column-1=39_INSTANCE_LHPLsCWkeLT6,\ncolumn-2=39_INSTANCE_7SeknTsgn4p7,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n', 0, '/news', 0, 0, '', '', '', '', '', 2, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `LayoutBranch`
--

CREATE TABLE IF NOT EXISTS `LayoutBranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `LayoutFriendlyURL`
--

CREATE TABLE IF NOT EXISTS `LayoutFriendlyURL` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `LayoutFriendlyURL`
--

INSERT INTO `LayoutFriendlyURL` (`uuid_`, `layoutFriendlyURLId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `plid`, `privateLayout`, `friendlyURL`, `languageId`) VALUES
('96fc52cf-048a-443d-b44e-00b6692109dd', 20177, 20173, 20155, 20159, '', '2015-04-29 05:13:53', '2015-04-29 05:13:53', 20176, 1, '/manage', 'en_US'),
('c5d85c63-66aa-4c00-9911-58a5d3cffa52', 20186, 20182, 20155, 20159, '', '2015-04-29 05:13:55', '2015-04-29 05:13:55', 20185, 0, '/home', 'en_US'),
('4bd7e38f-dea1-4a62-a9d4-2a3e37682c37', 20322, 20318, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20321, 1, '/layout', 'en_US'),
('be083739-0496-4493-ab59-a3d043940811', 20334, 20330, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20333, 1, '/layout', 'en_US'),
('58c139cb-a121-4c37-b103-b9368a4eb906', 20344, 20340, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:03', 20343, 1, '/layout', 'en_US'),
('e5f5ead9-ecb3-4a29-a656-ad9cb393ac47', 20363, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20362, 1, '/home', 'en_US'),
('cd333d6d-a734-4738-9dc5-52ea78b61851', 20371, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20370, 1, '/wiki', 'en_US'),
('784c829d-adf9-4673-b7ed-f147edb9a1ff', 20389, 20377, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20388, 1, '/home', 'en_US'),
('4ff95184-6cf7-449c-8a80-96e9595988d2', 20398, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20397, 1, '/documents', 'en_US'),
('8d8ec322-9b44-4010-ad4f-c64b320d284c', 20406, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20405, 1, '/news', 'en_US');

-- --------------------------------------------------------

--
-- Структура таблицы `LayoutPrototype`
--

CREATE TABLE IF NOT EXISTS `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `LayoutPrototype`
--

INSERT INTO `LayoutPrototype` (`uuid_`, `layoutPrototypeId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `name`, `description`, `settings_`, `active_`) VALUES
('0eac2bd0-d855-4a0e-9adc-3db851c983d9', 20317, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Blog</Name></root>', 'Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.', '', 1),
('51c6e270-635e-488e-9e11-9e2e26f5dca3', 20329, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Content Display Page</Name></root>', 'Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.', '', 1),
('2cf7bf3c-f48b-47c3-86e0-1db41b2ef20c', 20339, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:03', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Wiki</Name></root>', 'Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `LayoutRevision`
--

CREATE TABLE IF NOT EXISTS `LayoutRevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `LayoutSet`
--

CREATE TABLE IF NOT EXISTS `LayoutSet` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `LayoutSet`
--

INSERT INTO `LayoutSet` (`layoutSetId`, `groupId`, `companyId`, `createDate`, `modifiedDate`, `privateLayout`, `logo`, `logoId`, `themeId`, `colorSchemeId`, `wapThemeId`, `wapColorSchemeId`, `css`, `pageCount`, `settings_`, `layoutSetPrototypeUuid`, `layoutSetPrototypeLinkEnabled`) VALUES
(20174, 20173, 20155, '2015-04-29 05:13:53', '2015-04-29 05:13:53', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 0),
(20175, 20173, 20155, '2015-04-29 05:13:53', '2015-04-29 05:13:53', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20183, 20182, 20155, '2015-04-29 05:13:55', '2015-04-29 05:13:55', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20184, 20182, 20155, '2015-04-29 05:13:55', '2015-04-29 05:13:55', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 0),
(20193, 20192, 20155, '2015-04-29 05:13:56', '2015-04-29 05:13:56', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20194, 20192, 20155, '2015-04-29 05:13:56', '2015-04-29 05:13:56', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20196, 20195, 20155, '2015-04-29 05:13:56', '2015-04-29 05:13:56', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20197, 20195, 20155, '2015-04-29 05:13:56', '2015-04-29 05:13:56', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20203, 20202, 20155, '2015-04-29 05:13:58', '2015-04-29 05:13:58', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20204, 20202, 20155, '2015-04-29 05:13:58', '2015-04-29 05:13:58', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20319, 20318, 20155, '2015-04-29 05:14:02', '2015-04-29 05:14:02', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 0),
(20320, 20318, 20155, '2015-04-29 05:14:02', '2015-04-29 05:14:02', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20331, 20330, 20155, '2015-04-29 05:14:02', '2015-04-29 05:14:02', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 0),
(20332, 20330, 20155, '2015-04-29 05:14:02', '2015-04-29 05:14:02', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20341, 20340, 20155, '2015-04-29 05:14:03', '2015-04-29 05:14:03', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 0),
(20342, 20340, 20155, '2015-04-29 05:14:03', '2015-04-29 05:14:03', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20352, 20351, 20155, '2015-04-29 05:14:03', '2015-04-29 05:14:04', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 2, '', '', 0),
(20353, 20351, 20155, '2015-04-29 05:14:03', '2015-04-29 05:14:03', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0),
(20378, 20377, 20155, '2015-04-29 05:14:04', '2015-04-29 05:14:05', 1, 0, 0, 'classic', '01', 'mobile', '01', '', 3, '', '', 0),
(20379, 20377, 20155, '2015-04-29 05:14:04', '2015-04-29 05:14:04', 0, 0, 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `LayoutSetBranch`
--

CREATE TABLE IF NOT EXISTS `LayoutSetBranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `LayoutSetPrototype`
--

CREATE TABLE IF NOT EXISTS `LayoutSetPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `LayoutSetPrototype`
--

INSERT INTO `LayoutSetPrototype` (`uuid_`, `layoutSetPrototypeId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `name`, `description`, `settings_`, `active_`) VALUES
('625509b7-5b79-4059-9d19-b69d62d432e8', 20350, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:04', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Community Site</Name></root>', 'Site with Forums and Wiki', 'layoutsUpdateable=true\n', 1),
('b02920bd-2247-455b-9880-4df27160f79f', 20376, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:05', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Intranet Site</Name></root>', 'Site with Documents and News', 'layoutsUpdateable=true\n', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ListType`
--

CREATE TABLE IF NOT EXISTS `ListType` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `ListType`
--

INSERT INTO `ListType` (`listTypeId`, `name`, `type_`) VALUES
(10000, 'billing', 'com.liferay.portal.model.Account.address'),
(10001, 'other', 'com.liferay.portal.model.Account.address'),
(10002, 'p-o-box', 'com.liferay.portal.model.Account.address'),
(10003, 'shipping', 'com.liferay.portal.model.Account.address'),
(10004, 'email-address', 'com.liferay.portal.model.Account.emailAddress'),
(10005, 'email-address-2', 'com.liferay.portal.model.Account.emailAddress'),
(10006, 'email-address-3', 'com.liferay.portal.model.Account.emailAddress'),
(10007, 'fax', 'com.liferay.portal.model.Account.phone'),
(10008, 'local', 'com.liferay.portal.model.Account.phone'),
(10009, 'other', 'com.liferay.portal.model.Account.phone'),
(10010, 'toll-free', 'com.liferay.portal.model.Account.phone'),
(10011, 'tty', 'com.liferay.portal.model.Account.phone'),
(10012, 'intranet', 'com.liferay.portal.model.Account.website'),
(10013, 'public', 'com.liferay.portal.model.Account.website'),
(11000, 'business', 'com.liferay.portal.model.Contact.address'),
(11001, 'other', 'com.liferay.portal.model.Contact.address'),
(11002, 'personal', 'com.liferay.portal.model.Contact.address'),
(11003, 'email-address', 'com.liferay.portal.model.Contact.emailAddress'),
(11004, 'email-address-2', 'com.liferay.portal.model.Contact.emailAddress'),
(11005, 'email-address-3', 'com.liferay.portal.model.Contact.emailAddress'),
(11006, 'business', 'com.liferay.portal.model.Contact.phone'),
(11007, 'business-fax', 'com.liferay.portal.model.Contact.phone'),
(11008, 'mobile-phone', 'com.liferay.portal.model.Contact.phone'),
(11009, 'other', 'com.liferay.portal.model.Contact.phone'),
(11010, 'pager', 'com.liferay.portal.model.Contact.phone'),
(11011, 'personal', 'com.liferay.portal.model.Contact.phone'),
(11012, 'personal-fax', 'com.liferay.portal.model.Contact.phone'),
(11013, 'tty', 'com.liferay.portal.model.Contact.phone'),
(11014, 'dr', 'com.liferay.portal.model.Contact.prefix'),
(11015, 'mr', 'com.liferay.portal.model.Contact.prefix'),
(11016, 'mrs', 'com.liferay.portal.model.Contact.prefix'),
(11017, 'ms', 'com.liferay.portal.model.Contact.prefix'),
(11020, 'ii', 'com.liferay.portal.model.Contact.suffix'),
(11021, 'iii', 'com.liferay.portal.model.Contact.suffix'),
(11022, 'iv', 'com.liferay.portal.model.Contact.suffix'),
(11023, 'jr', 'com.liferay.portal.model.Contact.suffix'),
(11024, 'phd', 'com.liferay.portal.model.Contact.suffix'),
(11025, 'sr', 'com.liferay.portal.model.Contact.suffix'),
(11026, 'blog', 'com.liferay.portal.model.Contact.website'),
(11027, 'business', 'com.liferay.portal.model.Contact.website'),
(11028, 'other', 'com.liferay.portal.model.Contact.website'),
(11029, 'personal', 'com.liferay.portal.model.Contact.website'),
(12000, 'billing', 'com.liferay.portal.model.Organization.address'),
(12001, 'other', 'com.liferay.portal.model.Organization.address'),
(12002, 'p-o-box', 'com.liferay.portal.model.Organization.address'),
(12003, 'shipping', 'com.liferay.portal.model.Organization.address'),
(12004, 'email-address', 'com.liferay.portal.model.Organization.emailAddress'),
(12005, 'email-address-2', 'com.liferay.portal.model.Organization.emailAddress'),
(12006, 'email-address-3', 'com.liferay.portal.model.Organization.emailAddress'),
(12007, 'fax', 'com.liferay.portal.model.Organization.phone'),
(12008, 'local', 'com.liferay.portal.model.Organization.phone'),
(12009, 'other', 'com.liferay.portal.model.Organization.phone'),
(12010, 'toll-free', 'com.liferay.portal.model.Organization.phone'),
(12011, 'tty', 'com.liferay.portal.model.Organization.phone'),
(12012, 'administrative', 'com.liferay.portal.model.Organization.service'),
(12013, 'contracts', 'com.liferay.portal.model.Organization.service'),
(12014, 'donation', 'com.liferay.portal.model.Organization.service'),
(12015, 'retail', 'com.liferay.portal.model.Organization.service'),
(12016, 'training', 'com.liferay.portal.model.Organization.service'),
(12017, 'full-member', 'com.liferay.portal.model.Organization.status'),
(12018, 'provisional-member', 'com.liferay.portal.model.Organization.status'),
(12019, 'intranet', 'com.liferay.portal.model.Organization.website'),
(12020, 'public', 'com.liferay.portal.model.Organization.website');

-- --------------------------------------------------------

--
-- Структура таблицы `Lock_`
--

CREATE TABLE IF NOT EXISTS `Lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MBBan`
--

CREATE TABLE IF NOT EXISTS `MBBan` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MBCategory`
--

CREATE TABLE IF NOT EXISTS `MBCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MBDiscussion`
--

CREATE TABLE IF NOT EXISTS `MBDiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `MBDiscussion`
--

INSERT INTO `MBDiscussion` (`uuid_`, `discussionId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `classNameId`, `classPK`, `threadId`) VALUES
('1674d9ba-d059-4cc4-acb2-e1d60a82b7ff', 20181, 0, 0, 20159, '', '2015-04-29 05:13:54', '2015-04-29 05:13:54', 20002, 20176, 20179),
('bb78efb6-b791-427a-ae5d-9fd779276ed3', 20190, 0, 0, 20159, '', '2015-04-29 05:13:56', '2015-04-29 05:13:56', 20002, 20185, 20188),
('bb2edadc-a0bb-42fe-bc75-4962e534ac9d', 20327, 0, 0, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20002, 20321, 20324),
('08eb35bd-48c8-413a-9fe6-013ce9237403', 20338, 0, 0, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20002, 20333, 20336),
('dc3ec05a-510c-4abb-b550-52cb71f8e72f', 20348, 0, 0, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:03', 20002, 20343, 20346),
('377a8f7f-c19a-4c8b-9232-603bb8a690c3', 20367, 0, 0, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20002, 20362, 20365),
('3f08186e-937e-431f-a440-0defaabc39f7', 20375, 0, 0, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20002, 20370, 20373),
('64e72e53-dbb7-4169-ae92-93fadb07a195', 20393, 0, 0, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20002, 20388, 20391),
('38020d6d-70e0-4659-be73-47935bfc13ca', 20402, 0, 0, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20002, 20397, 20400),
('d00f8a33-b1c5-427a-bef4-691ca583e3b7', 20410, 0, 0, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20002, 20405, 20408);

-- --------------------------------------------------------

--
-- Структура таблицы `MBMailingList`
--

CREATE TABLE IF NOT EXISTS `MBMailingList` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MBMessage`
--

CREATE TABLE IF NOT EXISTS `MBMessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `MBMessage`
--

INSERT INTO `MBMessage` (`uuid_`, `messageId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `classNameId`, `classPK`, `categoryId`, `threadId`, `rootMessageId`, `parentMessageId`, `subject`, `body`, `format`, `anonymous`, `priority`, `allowPingbacks`, `answer`, `status`, `statusByUserId`, `statusByUserName`, `statusDate`) VALUES
('c0bf6399-7f76-4ae0-934b-148f04bc79e6', 20178, 20173, 20155, 20159, '', '2015-04-29 05:13:53', '2015-04-29 05:13:53', 20002, 20176, -1, 20179, 20178, 0, '20176', '20176', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:13:53'),
('e05d9b7e-600a-4572-b631-0eda7af8d146', 20187, 20182, 20155, 20159, '', '2015-04-29 05:13:55', '2015-04-29 05:13:55', 20002, 20185, -1, 20188, 20187, 0, '20185', '20185', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:13:55'),
('941e6e6d-2e82-455a-ac1e-7784e235e7d9', 20323, 20318, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20002, 20321, -1, 20324, 20323, 0, '20321', '20321', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:02'),
('faaa7974-2b0d-411c-9340-bc2a03e9aa1c', 20335, 20330, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', 20002, 20333, -1, 20336, 20335, 0, '20333', '20333', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:02'),
('37a6e918-1133-44ca-bc0a-e635a43e3611', 20345, 20340, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:03', 20002, 20343, -1, 20346, 20345, 0, '20343', '20343', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:03'),
('ada77fdb-2525-4945-9274-cb977d9d2a5f', 20364, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20002, 20362, -1, 20365, 20364, 0, '20362', '20362', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:04'),
('dffe44f5-00dc-4fa7-adac-43c128ce2541', 20372, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20002, 20370, -1, 20373, 20372, 0, '20370', '20370', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:04'),
('e0684ef4-020b-4b27-b6c2-ccaad78ddba9', 20390, 20377, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', 20002, 20388, -1, 20391, 20390, 0, '20388', '20388', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:04'),
('13d6f4d3-24ff-49cc-ac90-5e295868ddff', 20399, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20002, 20397, -1, 20400, 20399, 0, '20397', '20397', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:05'),
('619fa239-0847-4c8f-9c8a-f9fc6618735b', 20407, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', 20002, 20405, -1, 20408, 20407, 0, '20405', '20405', 'bbcode', 1, 0, 0, 0, 0, 20159, '', '2015-04-29 05:14:05');

-- --------------------------------------------------------

--
-- Структура таблицы `MBStatsUser`
--

CREATE TABLE IF NOT EXISTS `MBStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MBThread`
--

CREATE TABLE IF NOT EXISTS `MBThread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `MBThread`
--

INSERT INTO `MBThread` (`uuid_`, `threadId`, `groupId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `categoryId`, `rootMessageId`, `rootMessageUserId`, `messageCount`, `viewCount`, `lastPostByUserId`, `lastPostDate`, `priority`, `question`, `status`, `statusByUserId`, `statusByUserName`, `statusDate`) VALUES
('c58b86ea-5401-4b38-ad71-d1dbb0e6de84', 20179, 20173, 20155, 20159, '', '2015-04-29 05:13:53', '2015-04-29 05:13:53', -1, 20178, 20159, 1, 0, 0, '2015-04-29 05:13:53', 0, 0, 0, 20159, '', '2015-04-29 05:13:53'),
('c9e6c2bf-aee2-4340-bfaa-51620426b646', 20188, 20182, 20155, 20159, '', '2015-04-29 05:13:55', '2015-04-29 05:13:55', -1, 20187, 20159, 1, 0, 0, '2015-04-29 05:13:55', 0, 0, 0, 20159, '', '2015-04-29 05:13:55'),
('00aa5dcf-787d-4203-90c4-7d7601aa88e8', 20324, 20318, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', -1, 20323, 20159, 1, 0, 0, '2015-04-29 05:14:02', 0, 0, 0, 20159, '', '2015-04-29 05:14:02'),
('2fc5dab7-ef4b-49ec-8fe3-a62933b2de0d', 20336, 20330, 20155, 20159, '', '2015-04-29 05:14:02', '2015-04-29 05:14:02', -1, 20335, 20159, 1, 0, 0, '2015-04-29 05:14:02', 0, 0, 0, 20159, '', '2015-04-29 05:14:02'),
('a0f48116-d414-4bbe-b18e-1f8adfa26bc5', 20346, 20340, 20155, 20159, '', '2015-04-29 05:14:03', '2015-04-29 05:14:03', -1, 20345, 20159, 1, 0, 0, '2015-04-29 05:14:03', 0, 0, 0, 20159, '', '2015-04-29 05:14:03'),
('8dbf644b-0fb6-4b48-9161-1b516863ec7b', 20365, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', -1, 20364, 20159, 1, 0, 0, '2015-04-29 05:14:04', 0, 0, 0, 20159, '', '2015-04-29 05:14:04'),
('59f3bad3-b08d-4b4f-9e64-54c75575b592', 20373, 20351, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', -1, 20372, 20159, 1, 0, 0, '2015-04-29 05:14:04', 0, 0, 0, 20159, '', '2015-04-29 05:14:04'),
('9f6b9cba-dccd-4fdf-99d8-96b6021eb0c3', 20391, 20377, 20155, 20159, '', '2015-04-29 05:14:04', '2015-04-29 05:14:04', -1, 20390, 20159, 1, 0, 0, '2015-04-29 05:14:04', 0, 0, 0, 20159, '', '2015-04-29 05:14:04'),
('8f3e5659-57d8-4c4d-92b8-56b4cce3bd5a', 20400, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', -1, 20399, 20159, 1, 0, 0, '2015-04-29 05:14:05', 0, 0, 0, 20159, '', '2015-04-29 05:14:05'),
('ae07341c-779c-414c-95a0-1e3c54851722', 20408, 20377, 20155, 20159, '', '2015-04-29 05:14:05', '2015-04-29 05:14:05', -1, 20407, 20159, 1, 0, 0, '2015-04-29 05:14:05', 0, 0, 0, 20159, '', '2015-04-29 05:14:05');

-- --------------------------------------------------------

--
-- Структура таблицы `MBThreadFlag`
--

CREATE TABLE IF NOT EXISTS `MBThreadFlag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MDRAction`
--

CREATE TABLE IF NOT EXISTS `MDRAction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MDRRule`
--

CREATE TABLE IF NOT EXISTS `MDRRule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MDRRuleGroup`
--

CREATE TABLE IF NOT EXISTS `MDRRuleGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MDRRuleGroupInstance`
--

CREATE TABLE IF NOT EXISTS `MDRRuleGroupInstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `MembershipRequest`
--

CREATE TABLE IF NOT EXISTS `MembershipRequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Organization_`
--

CREATE TABLE IF NOT EXISTS `Organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `OrgGroupRole`
--

CREATE TABLE IF NOT EXISTS `OrgGroupRole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `OrgLabor`
--

CREATE TABLE IF NOT EXISTS `OrgLabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `PasswordPolicy`
--

CREATE TABLE IF NOT EXISTS `PasswordPolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `PasswordPolicy`
--

INSERT INTO `PasswordPolicy` (`uuid_`, `passwordPolicyId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `defaultPolicy`, `name`, `description`, `changeable`, `changeRequired`, `minAge`, `checkSyntax`, `allowDictionaryWords`, `minAlphanumeric`, `minLength`, `minLowerCase`, `minNumbers`, `minSymbols`, `minUpperCase`, `regex`, `history`, `historyCount`, `expireable`, `maxAge`, `warningTime`, `graceLimit`, `lockout`, `maxFailure`, `lockoutDuration`, `requireUnlock`, `resetFailureCount`, `resetTicketMaxAge`) VALUES
('bee22775-bc5a-4e32-bf4d-7500e2ee0ae6', 20198, 20155, 20159, '', '2015-04-29 05:13:56', '2015-04-29 05:13:56', 1, 'Default Password Policy', 'Default Password Policy', 1, 1, 0, 0, 1, 0, 6, 0, 1, 0, 1, '(?=.{4})(?:[a-zA-Z0-9]*)', 0, 6, 0, 8640000, 86400, 0, 0, 3, 0, 1, 600, 86400);

-- --------------------------------------------------------

--
-- Структура таблицы `PasswordPolicyRel`
--

CREATE TABLE IF NOT EXISTS `PasswordPolicyRel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `PasswordPolicyRel`
--

INSERT INTO `PasswordPolicyRel` (`passwordPolicyRelId`, `passwordPolicyId`, `classNameId`, `classPK`) VALUES
(20201, 20198, 20005, 20199);

-- --------------------------------------------------------

--
-- Структура таблицы `PasswordTracker`
--

CREATE TABLE IF NOT EXISTS `PasswordTracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Phone`
--

CREATE TABLE IF NOT EXISTS `Phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `PluginSetting`
--

CREATE TABLE IF NOT EXISTS `PluginSetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `PollsChoice`
--

CREATE TABLE IF NOT EXISTS `PollsChoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `PollsQuestion`
--

CREATE TABLE IF NOT EXISTS `PollsQuestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `PollsVote`
--

CREATE TABLE IF NOT EXISTS `PollsVote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `PortalPreferences`
--

CREATE TABLE IF NOT EXISTS `PortalPreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `PortalPreferences`
--

INSERT INTO `PortalPreferences` (`portalPreferencesId`, `ownerId`, `ownerType`, `preferences`) VALUES
(20154, 0, 1, '<portlet-preferences />'),
(20161, 20155, 1, '<portlet-preferences />'),
(20434, 20159, 4, '<portlet-preferences />'),
(20435, 20159, 4, '<portlet-preferences />');

-- --------------------------------------------------------

--
-- Структура таблицы `Portlet`
--

CREATE TABLE IF NOT EXISTS `Portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Portlet`
--

INSERT INTO `Portlet` (`id_`, `companyId`, `portletId`, `roles`, `active_`) VALUES
(20206, 20155, '98', '', 0),
(20207, 20155, '66', '', 1),
(20208, 20155, '180', '', 1),
(20209, 20155, '27', '', 1),
(20210, 20155, '152', '', 1),
(20211, 20155, '183', '', 1),
(20212, 20155, '134', '', 1),
(20213, 20155, '130', '', 1),
(20214, 20155, '122', '', 1),
(20215, 20155, '36', '', 1),
(20216, 20155, '26', '', 1),
(20217, 20155, '175', '', 1),
(20218, 20155, '153', '', 1),
(20219, 20155, '64', '', 1),
(20220, 20155, '129', '', 1),
(20221, 20155, '182', '', 1),
(20222, 20155, '179', '', 1),
(20223, 20155, '173', '', 0),
(20224, 20155, '100', '', 1),
(20225, 20155, '19', '', 1),
(20226, 20155, '157', '', 1),
(20227, 20155, '128', '', 1),
(20228, 20155, '181', '', 1),
(20229, 20155, '154', '', 1),
(20230, 20155, '148', '', 1),
(20231, 20155, '11', '', 1),
(20232, 20155, '29', '', 1),
(20233, 20155, '158', '', 1),
(20234, 20155, '178', '', 1),
(20235, 20155, '58', '', 1),
(20236, 20155, '71', '', 1),
(20237, 20155, '97', '', 1),
(20238, 20155, '39', '', 1),
(20239, 20155, '85', '', 1),
(20240, 20155, '118', '', 1),
(20241, 20155, '107', '', 1),
(20242, 20155, '30', '', 1),
(20243, 20155, '184', '', 1),
(20244, 20155, '147', '', 1),
(20245, 20155, '48', '', 1),
(20246, 20155, '125', '', 1),
(20247, 20155, '161', '', 1),
(20248, 20155, '146', '', 1),
(20249, 20155, '62', '', 0),
(20250, 20155, '162', '', 1),
(20251, 20155, '176', '', 1),
(20252, 20155, '108', '', 1),
(20253, 20155, '187', '', 1),
(20254, 20155, '84', '', 1),
(20255, 20155, '101', '', 1),
(20256, 20155, '121', '', 1),
(20257, 20155, '143', '', 1),
(20258, 20155, '77', '', 1),
(20259, 20155, '167', '', 1),
(20260, 20155, '115', '', 1),
(20261, 20155, '56', '', 1),
(20262, 20155, '16', '', 1),
(20263, 20155, '3', '', 1),
(20264, 20155, '23', '', 1),
(20265, 20155, '20', '', 1),
(20266, 20155, '83', '', 1),
(20267, 20155, '99', '', 1),
(20268, 20155, '186', '', 1),
(20269, 20155, '194', '', 1),
(20270, 20155, '70', '', 1),
(20271, 20155, '164', '', 1),
(20272, 20155, '141', '', 1),
(20273, 20155, '9', '', 1),
(20274, 20155, '28', '', 1),
(20275, 20155, '137', '', 1),
(20276, 20155, '47', '', 1),
(20277, 20155, '15', '', 1),
(20278, 20155, '116', '', 1),
(20279, 20155, '82', '', 1),
(20280, 20155, '151', '', 1),
(20281, 20155, '54', '', 1),
(20282, 20155, '34', '', 1),
(20283, 20155, '169', '', 1),
(20284, 20155, '132', '', 1),
(20285, 20155, '61', '', 1),
(20286, 20155, '73', '', 1),
(20287, 20155, '31', '', 1),
(20288, 20155, '50', '', 1),
(20289, 20155, '127', '', 1),
(20290, 20155, '193', '', 1),
(20291, 20155, '25', '', 1),
(20292, 20155, '166', '', 1),
(20293, 20155, '33', '', 1),
(20294, 20155, '150', '', 1),
(20295, 20155, '114', '', 1),
(20296, 20155, '149', '', 1),
(20297, 20155, '67', '', 1),
(20298, 20155, '110', '', 1),
(20299, 20155, '59', '', 1),
(20300, 20155, '135', '', 1),
(20301, 20155, '188', '', 1),
(20302, 20155, '131', '', 1),
(20303, 20155, '102', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `PortletItem`
--

CREATE TABLE IF NOT EXISTS `PortletItem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `PortletPreferences`
--

CREATE TABLE IF NOT EXISTS `PortletPreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `PortletPreferences`
--

INSERT INTO `PortletPreferences` (`portletPreferencesId`, `ownerId`, `ownerType`, `plid`, `portletId`, `preferences`) VALUES
(20328, 0, 3, 20321, '148_INSTANCE_Z7x2UdVCL6yk', '<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>20007</value></preference><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>maxAssetTags</name><value>10</value></preference></portlet-preferences>'),
(20349, 0, 3, 20343, '141_INSTANCE_Caru28tneWmg', '<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>20016</value></preference></portlet-preferences>'),
(20368, 0, 3, 20362, '3', '<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
(20369, 0, 3, 20362, '101_INSTANCE_MxNhOseUCVhh', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
(20394, 0, 3, 20388, '3', '<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
(20395, 0, 3, 20388, '82', '<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),
(20396, 0, 3, 20388, '101_INSTANCE_UhRdU2e14B9C', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),
(20403, 0, 3, 20397, '20', '<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
(20404, 0, 3, 20397, '101_INSTANCE_RfNaDOVLn0Nq', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),
(20411, 0, 3, 20405, '39_INSTANCE_LHPLsCWkeLT6', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),
(20412, 0, 3, 20405, '39_INSTANCE_7SeknTsgn4p7', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>');

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_BLOB_TRIGGERS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_CALENDARS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_CRON_TRIGGERS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_FIRED_TRIGGERS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_JOB_DETAILS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_LOCKS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_PAUSED_TRIGGER_GRPS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_SCHEDULER_STATE`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_SIMPLE_TRIGGERS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_SIMPROP_TRIGGERS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `QUARTZ_TRIGGERS`
--

CREATE TABLE IF NOT EXISTS `QUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `RatingsEntry`
--

CREATE TABLE IF NOT EXISTS `RatingsEntry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `RatingsStats`
--

CREATE TABLE IF NOT EXISTS `RatingsStats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Region`
--

CREATE TABLE IF NOT EXISTS `Region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Region`
--

INSERT INTO `Region` (`regionId`, `countryId`, `regionCode`, `name`, `active_`) VALUES
(1001, 1, 'AB', 'Alberta', 1),
(1002, 1, 'BC', 'British Columbia', 1),
(1003, 1, 'MB', 'Manitoba', 1),
(1004, 1, 'NB', 'New Brunswick', 1),
(1005, 1, 'NL', 'Newfoundland and Labrador', 1),
(1006, 1, 'NT', 'Northwest Territories', 1),
(1007, 1, 'NS', 'Nova Scotia', 1),
(1008, 1, 'NU', 'Nunavut', 1),
(1009, 1, 'ON', 'Ontario', 1),
(1010, 1, 'PE', 'Prince Edward Island', 1),
(1011, 1, 'QC', 'Quebec', 1),
(1012, 1, 'SK', 'Saskatchewan', 1),
(1013, 1, 'YT', 'Yukon', 1),
(2001, 2, 'CN-34', 'Anhui', 1),
(2002, 2, 'CN-92', 'Aomen', 1),
(2003, 2, 'CN-11', 'Beijing', 1),
(2004, 2, 'CN-50', 'Chongqing', 1),
(2005, 2, 'CN-35', 'Fujian', 1),
(2006, 2, 'CN-62', 'Gansu', 1),
(2007, 2, 'CN-44', 'Guangdong', 1),
(2008, 2, 'CN-45', 'Guangxi', 1),
(2009, 2, 'CN-52', 'Guizhou', 1),
(2010, 2, 'CN-46', 'Hainan', 1),
(2011, 2, 'CN-13', 'Hebei', 1),
(2012, 2, 'CN-23', 'Heilongjiang', 1),
(2013, 2, 'CN-41', 'Henan', 1),
(2014, 2, 'CN-42', 'Hubei', 1),
(2015, 2, 'CN-43', 'Hunan', 1),
(2016, 2, 'CN-32', 'Jiangsu', 1),
(2017, 2, 'CN-36', 'Jiangxi', 1),
(2018, 2, 'CN-22', 'Jilin', 1),
(2019, 2, 'CN-21', 'Liaoning', 1),
(2020, 2, 'CN-15', 'Nei Mongol', 1),
(2021, 2, 'CN-64', 'Ningxia', 1),
(2022, 2, 'CN-63', 'Qinghai', 1),
(2023, 2, 'CN-61', 'Shaanxi', 1),
(2024, 2, 'CN-37', 'Shandong', 1),
(2025, 2, 'CN-31', 'Shanghai', 1),
(2026, 2, 'CN-14', 'Shanxi', 1),
(2027, 2, 'CN-51', 'Sichuan', 1),
(2028, 2, 'CN-71', 'Taiwan', 1),
(2029, 2, 'CN-12', 'Tianjin', 1),
(2030, 2, 'CN-91', 'Xianggang', 1),
(2031, 2, 'CN-65', 'Xinjiang', 1),
(2032, 2, 'CN-54', 'Xizang', 1),
(2033, 2, 'CN-53', 'Yunnan', 1),
(2034, 2, 'CN-33', 'Zhejiang', 1),
(3001, 3, 'A', 'Alsace', 1),
(3002, 3, 'B', 'Aquitaine', 1),
(3003, 3, 'C', 'Auvergne', 1),
(3004, 3, 'P', 'Basse-Normandie', 1),
(3005, 3, 'D', 'Bourgogne', 1),
(3006, 3, 'E', 'Bretagne', 1),
(3007, 3, 'F', 'Centre', 1),
(3008, 3, 'G', 'Champagne-Ardenne', 1),
(3009, 3, 'H', 'Corse', 1),
(3010, 3, 'GF', 'Guyane', 1),
(3011, 3, 'I', 'Franche Comté', 1),
(3012, 3, 'GP', 'Guadeloupe', 1),
(3013, 3, 'Q', 'Haute-Normandie', 1),
(3014, 3, 'J', 'Île-de-France', 1),
(3015, 3, 'K', 'Languedoc-Roussillon', 1),
(3016, 3, 'L', 'Limousin', 1),
(3017, 3, 'M', 'Lorraine', 1),
(3018, 3, 'MQ', 'Martinique', 1),
(3019, 3, 'N', 'Midi-Pyrénées', 1),
(3020, 3, 'O', 'Nord Pas de Calais', 1),
(3021, 3, 'R', 'Pays de la Loire', 1),
(3022, 3, 'S', 'Picardie', 1),
(3023, 3, 'T', 'Poitou-Charentes', 1),
(3024, 3, 'U', 'Provence-Alpes-Côte-d''Azur', 1),
(3025, 3, 'RE', 'Réunion', 1),
(3026, 3, 'V', 'Rhône-Alpes', 1),
(4001, 4, 'BW', 'Baden-Württemberg', 1),
(4002, 4, 'BY', 'Bayern', 1),
(4003, 4, 'BE', 'Berlin', 1),
(4004, 4, 'BB', 'Brandenburg', 1),
(4005, 4, 'HB', 'Bremen', 1),
(4006, 4, 'HH', 'Hamburg', 1),
(4007, 4, 'HE', 'Hessen', 1),
(4008, 4, 'MV', 'Mecklenburg-Vorpommern', 1),
(4009, 4, 'NI', 'Niedersachsen', 1),
(4010, 4, 'NW', 'Nordrhein-Westfalen', 1),
(4011, 4, 'RP', 'Rheinland-Pfalz', 1),
(4012, 4, 'SL', 'Saarland', 1),
(4013, 4, 'SN', 'Sachsen', 1),
(4014, 4, 'ST', 'Sachsen-Anhalt', 1),
(4015, 4, 'SH', 'Schleswig-Holstein', 1),
(4016, 4, 'TH', 'Thüringen', 1),
(8001, 8, 'AG', 'Agrigento', 1),
(8002, 8, 'AL', 'Alessandria', 1),
(8003, 8, 'AN', 'Ancona', 1),
(8004, 8, 'AO', 'Aosta', 1),
(8005, 8, 'AR', 'Arezzo', 1),
(8006, 8, 'AP', 'Ascoli Piceno', 1),
(8007, 8, 'AT', 'Asti', 1),
(8008, 8, 'AV', 'Avellino', 1),
(8009, 8, 'BA', 'Bari', 1),
(8010, 8, 'BT', 'Barletta-Andria-Trani', 1),
(8011, 8, 'BL', 'Belluno', 1),
(8012, 8, 'BN', 'Benevento', 1),
(8013, 8, 'BG', 'Bergamo', 1),
(8014, 8, 'BI', 'Biella', 1),
(8015, 8, 'BO', 'Bologna', 1),
(8016, 8, 'BZ', 'Bolzano', 1),
(8017, 8, 'BS', 'Brescia', 1),
(8018, 8, 'BR', 'Brindisi', 1),
(8019, 8, 'CA', 'Cagliari', 1),
(8020, 8, 'CL', 'Caltanissetta', 1),
(8021, 8, 'CB', 'Campobasso', 1),
(8022, 8, 'CI', 'Carbonia-Iglesias', 1),
(8023, 8, 'CE', 'Caserta', 1),
(8024, 8, 'CT', 'Catania', 1),
(8025, 8, 'CZ', 'Catanzaro', 1),
(8026, 8, 'CH', 'Chieti', 1),
(8027, 8, 'CO', 'Como', 1),
(8028, 8, 'CS', 'Cosenza', 1),
(8029, 8, 'CR', 'Cremona', 1),
(8030, 8, 'KR', 'Crotone', 1),
(8031, 8, 'CN', 'Cuneo', 1),
(8032, 8, 'EN', 'Enna', 1),
(8033, 8, 'FM', 'Fermo', 1),
(8034, 8, 'FE', 'Ferrara', 1),
(8035, 8, 'FI', 'Firenze', 1),
(8036, 8, 'FG', 'Foggia', 1),
(8037, 8, 'FC', 'Forli-Cesena', 1),
(8038, 8, 'FR', 'Frosinone', 1),
(8039, 8, 'GE', 'Genova', 1),
(8040, 8, 'GO', 'Gorizia', 1),
(8041, 8, 'GR', 'Grosseto', 1),
(8042, 8, 'IM', 'Imperia', 1),
(8043, 8, 'IS', 'Isernia', 1),
(8044, 8, 'AQ', 'L''Aquila', 1),
(8045, 8, 'SP', 'La Spezia', 1),
(8046, 8, 'LT', 'Latina', 1),
(8047, 8, 'LE', 'Lecce', 1),
(8048, 8, 'LC', 'Lecco', 1),
(8049, 8, 'LI', 'Livorno', 1),
(8050, 8, 'LO', 'Lodi', 1),
(8051, 8, 'LU', 'Lucca', 1),
(8052, 8, 'MC', 'Macerata', 1),
(8053, 8, 'MN', 'Mantova', 1),
(8054, 8, 'MS', 'Massa-Carrara', 1),
(8055, 8, 'MT', 'Matera', 1),
(8056, 8, 'MA', 'Medio Campidano', 1),
(8057, 8, 'ME', 'Messina', 1),
(8058, 8, 'MI', 'Milano', 1),
(8059, 8, 'MO', 'Modena', 1),
(8060, 8, 'MB', 'Monza e Brianza', 1),
(8061, 8, 'NA', 'Napoli', 1),
(8062, 8, 'NO', 'Novara', 1),
(8063, 8, 'NU', 'Nuoro', 1),
(8064, 8, 'OG', 'Ogliastra', 1),
(8065, 8, 'OT', 'Olbia-Tempio', 1),
(8066, 8, 'OR', 'Oristano', 1),
(8067, 8, 'PD', 'Padova', 1),
(8068, 8, 'PA', 'Palermo', 1),
(8069, 8, 'PR', 'Parma', 1),
(8070, 8, 'PV', 'Pavia', 1),
(8071, 8, 'PG', 'Perugia', 1),
(8072, 8, 'PU', 'Pesaro e Urbino', 1),
(8073, 8, 'PE', 'Pescara', 1),
(8074, 8, 'PC', 'Piacenza', 1),
(8075, 8, 'PI', 'Pisa', 1),
(8076, 8, 'PT', 'Pistoia', 1),
(8077, 8, 'PN', 'Pordenone', 1),
(8078, 8, 'PZ', 'Potenza', 1),
(8079, 8, 'PO', 'Prato', 1),
(8080, 8, 'RG', 'Ragusa', 1),
(8081, 8, 'RA', 'Ravenna', 1),
(8082, 8, 'RC', 'Reggio Calabria', 1),
(8083, 8, 'RE', 'Reggio Emilia', 1),
(8084, 8, 'RI', 'Rieti', 1),
(8085, 8, 'RN', 'Rimini', 1),
(8086, 8, 'RM', 'Roma', 1),
(8087, 8, 'RO', 'Rovigo', 1),
(8088, 8, 'SA', 'Salerno', 1),
(8089, 8, 'SS', 'Sassari', 1),
(8090, 8, 'SV', 'Savona', 1),
(8091, 8, 'SI', 'Siena', 1),
(8092, 8, 'SR', 'Siracusa', 1),
(8093, 8, 'SO', 'Sondrio', 1),
(8094, 8, 'TA', 'Taranto', 1),
(8095, 8, 'TE', 'Teramo', 1),
(8096, 8, 'TR', 'Terni', 1),
(8097, 8, 'TO', 'Torino', 1),
(8098, 8, 'TP', 'Trapani', 1),
(8099, 8, 'TN', 'Trento', 1),
(8100, 8, 'TV', 'Treviso', 1),
(8101, 8, 'TS', 'Trieste', 1),
(8102, 8, 'UD', 'Udine', 1),
(8103, 8, 'VA', 'Varese', 1),
(8104, 8, 'VE', 'Venezia', 1),
(8105, 8, 'VB', 'Verbano-Cusio-Ossola', 1),
(8106, 8, 'VC', 'Vercelli', 1),
(8107, 8, 'VR', 'Verona', 1),
(8108, 8, 'VV', 'Vibo Valentia', 1),
(8109, 8, 'VI', 'Vicenza', 1),
(8110, 8, 'VT', 'Viterbo', 1),
(11001, 11, 'DR', 'Drenthe', 1),
(11002, 11, 'FL', 'Flevoland', 1),
(11003, 11, 'FR', 'Friesland', 1),
(11004, 11, 'GE', 'Gelderland', 1),
(11005, 11, 'GR', 'Groningen', 1),
(11006, 11, 'LI', 'Limburg', 1),
(11007, 11, 'NB', 'Noord-Brabant', 1),
(11008, 11, 'NH', 'Noord-Holland', 1),
(11009, 11, 'OV', 'Overijssel', 1),
(11010, 11, 'UT', 'Utrecht', 1),
(11011, 11, 'ZE', 'Zeeland', 1),
(11012, 11, 'ZH', 'Zuid-Holland', 1),
(15001, 15, 'AN', 'Andalusia', 1),
(15002, 15, 'AR', 'Aragon', 1),
(15003, 15, 'AS', 'Asturias', 1),
(15004, 15, 'IB', 'Balearic Islands', 1),
(15005, 15, 'PV', 'Basque Country', 1),
(15006, 15, 'CN', 'Canary Islands', 1),
(15007, 15, 'CB', 'Cantabria', 1),
(15008, 15, 'CL', 'Castile and Leon', 1),
(15009, 15, 'CM', 'Castile-La Mancha', 1),
(15010, 15, 'CT', 'Catalonia', 1),
(15011, 15, 'CE', 'Ceuta', 1),
(15012, 15, 'EX', 'Extremadura', 1),
(15013, 15, 'GA', 'Galicia', 1),
(15014, 15, 'LO', 'La Rioja', 1),
(15015, 15, 'M', 'Madrid', 1),
(15016, 15, 'ML', 'Melilla', 1),
(15017, 15, 'MU', 'Murcia', 1),
(15018, 15, 'NA', 'Navarra', 1),
(15019, 15, 'VC', 'Valencia', 1),
(19001, 19, 'AL', 'Alabama', 1),
(19002, 19, 'AK', 'Alaska', 1),
(19003, 19, 'AZ', 'Arizona', 1),
(19004, 19, 'AR', 'Arkansas', 1),
(19005, 19, 'CA', 'California', 1),
(19006, 19, 'CO', 'Colorado', 1),
(19007, 19, 'CT', 'Connecticut', 1),
(19008, 19, 'DC', 'District of Columbia', 1),
(19009, 19, 'DE', 'Delaware', 1),
(19010, 19, 'FL', 'Florida', 1),
(19011, 19, 'GA', 'Georgia', 1),
(19012, 19, 'HI', 'Hawaii', 1),
(19013, 19, 'ID', 'Idaho', 1),
(19014, 19, 'IL', 'Illinois', 1),
(19015, 19, 'IN', 'Indiana', 1),
(19016, 19, 'IA', 'Iowa', 1),
(19017, 19, 'KS', 'Kansas', 1),
(19018, 19, 'KY', 'Kentucky ', 1),
(19019, 19, 'LA', 'Louisiana ', 1),
(19020, 19, 'ME', 'Maine', 1),
(19021, 19, 'MD', 'Maryland', 1),
(19022, 19, 'MA', 'Massachusetts', 1),
(19023, 19, 'MI', 'Michigan', 1),
(19024, 19, 'MN', 'Minnesota', 1),
(19025, 19, 'MS', 'Mississippi', 1),
(19026, 19, 'MO', 'Missouri', 1),
(19027, 19, 'MT', 'Montana', 1),
(19028, 19, 'NE', 'Nebraska', 1),
(19029, 19, 'NV', 'Nevada', 1),
(19030, 19, 'NH', 'New Hampshire', 1),
(19031, 19, 'NJ', 'New Jersey', 1),
(19032, 19, 'NM', 'New Mexico', 1),
(19033, 19, 'NY', 'New York', 1),
(19034, 19, 'NC', 'North Carolina', 1),
(19035, 19, 'ND', 'North Dakota', 1),
(19036, 19, 'OH', 'Ohio', 1),
(19037, 19, 'OK', 'Oklahoma ', 1),
(19038, 19, 'OR', 'Oregon', 1),
(19039, 19, 'PA', 'Pennsylvania', 1),
(19040, 19, 'PR', 'Puerto Rico', 1),
(19041, 19, 'RI', 'Rhode Island', 1),
(19042, 19, 'SC', 'South Carolina', 1),
(19043, 19, 'SD', 'South Dakota', 1),
(19044, 19, 'TN', 'Tennessee', 1),
(19045, 19, 'TX', 'Texas', 1),
(19046, 19, 'UT', 'Utah', 1),
(19047, 19, 'VT', 'Vermont', 1),
(19048, 19, 'VA', 'Virginia', 1),
(19049, 19, 'WA', 'Washington', 1),
(19050, 19, 'WV', 'West Virginia', 1),
(19051, 19, 'WI', 'Wisconsin', 1),
(19052, 19, 'WY', 'Wyoming', 1),
(32001, 32, 'ACT', 'Australian Capital Territory', 1),
(32002, 32, 'NSW', 'New South Wales', 1),
(32003, 32, 'NT', 'Northern Territory', 1),
(32004, 32, 'QLD', 'Queensland', 1),
(32005, 32, 'SA', 'South Australia', 1),
(32006, 32, 'TAS', 'Tasmania', 1),
(32007, 32, 'VIC', 'Victoria', 1),
(32008, 32, 'WA', 'Western Australia', 1),
(144001, 144, 'MX-AGS', 'Aguascalientes', 1),
(144002, 144, 'MX-BCN', 'Baja California', 1),
(144003, 144, 'MX-BCS', 'Baja California Sur', 1),
(144004, 144, 'MX-CAM', 'Campeche', 1),
(144005, 144, 'MX-CHP', 'Chiapas', 1),
(144006, 144, 'MX-CHI', 'Chihuahua', 1),
(144007, 144, 'MX-COA', 'Coahuila', 1),
(144008, 144, 'MX-COL', 'Colima', 1),
(144009, 144, 'MX-DUR', 'Durango', 1),
(144010, 144, 'MX-GTO', 'Guanajuato', 1),
(144011, 144, 'MX-GRO', 'Guerrero', 1),
(144012, 144, 'MX-HGO', 'Hidalgo', 1),
(144013, 144, 'MX-JAL', 'Jalisco', 1),
(144014, 144, 'MX-MEX', 'Mexico', 1),
(144015, 144, 'MX-MIC', 'Michoacan', 1),
(144016, 144, 'MX-MOR', 'Morelos', 1),
(144017, 144, 'MX-NAY', 'Nayarit', 1),
(144018, 144, 'MX-NLE', 'Nuevo Leon', 1),
(144019, 144, 'MX-OAX', 'Oaxaca', 1),
(144020, 144, 'MX-PUE', 'Puebla', 1),
(144021, 144, 'MX-QRO', 'Queretaro', 1),
(144023, 144, 'MX-ROO', 'Quintana Roo', 1),
(144024, 144, 'MX-SLP', 'San Luis Potosí', 1),
(144025, 144, 'MX-SIN', 'Sinaloa', 1),
(144026, 144, 'MX-SON', 'Sonora', 1),
(144027, 144, 'MX-TAB', 'Tabasco', 1),
(144028, 144, 'MX-TAM', 'Tamaulipas', 1),
(144029, 144, 'MX-TLX', 'Tlaxcala', 1),
(144030, 144, 'MX-VER', 'Veracruz', 1),
(144031, 144, 'MX-YUC', 'Yucatan', 1),
(144032, 144, 'MX-ZAC', 'Zacatecas', 1),
(164001, 164, '01', 'Østfold', 1),
(164002, 164, '02', 'Akershus', 1),
(164003, 164, '03', 'Oslo', 1),
(164004, 164, '04', 'Hedmark', 1),
(164005, 164, '05', 'Oppland', 1),
(164006, 164, '06', 'Buskerud', 1),
(164007, 164, '07', 'Vestfold', 1),
(164008, 164, '08', 'Telemark', 1),
(164009, 164, '09', 'Aust-Agder', 1),
(164010, 164, '10', 'Vest-Agder', 1),
(164011, 164, '11', 'Rogaland', 1),
(164012, 164, '12', 'Hordaland', 1),
(164013, 164, '14', 'Sogn og Fjordane', 1),
(164014, 164, '15', 'Møre of Romsdal', 1),
(164015, 164, '16', 'Sør-Trøndelag', 1),
(164016, 164, '17', 'Nord-Trøndelag', 1),
(164017, 164, '18', 'Nordland', 1),
(164018, 164, '19', 'Troms', 1),
(164019, 164, '20', 'Finnmark', 1),
(202001, 202, 'AG', 'Aargau', 1),
(202002, 202, 'AR', 'Appenzell Ausserrhoden', 1),
(202003, 202, 'AI', 'Appenzell Innerrhoden', 1),
(202004, 202, 'BL', 'Basel-Landschaft', 1),
(202005, 202, 'BS', 'Basel-Stadt', 1),
(202006, 202, 'BE', 'Bern', 1),
(202007, 202, 'FR', 'Fribourg', 1),
(202008, 202, 'GE', 'Geneva', 1),
(202009, 202, 'GL', 'Glarus', 1),
(202010, 202, 'GR', 'Graubünden', 1),
(202011, 202, 'JU', 'Jura', 1),
(202012, 202, 'LU', 'Lucerne', 1),
(202013, 202, 'NE', 'Neuchâtel', 1),
(202014, 202, 'NW', 'Nidwalden', 1),
(202015, 202, 'OW', 'Obwalden', 1),
(202016, 202, 'SH', 'Schaffhausen', 1),
(202017, 202, 'SZ', 'Schwyz', 1),
(202018, 202, 'SO', 'Solothurn', 1),
(202019, 202, 'SG', 'St. Gallen', 1),
(202020, 202, 'TG', 'Thurgau', 1),
(202021, 202, 'TI', 'Ticino', 1),
(202022, 202, 'UR', 'Uri', 1),
(202023, 202, 'VS', 'Valais', 1),
(202024, 202, 'VD', 'Vaud', 1),
(202025, 202, 'ZG', 'Zug', 1),
(202026, 202, 'ZH', 'Zürich', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Release_`
--

CREATE TABLE IF NOT EXISTS `Release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Release_`
--

INSERT INTO `Release_` (`releaseId`, `createDate`, `modifiedDate`, `servletContextName`, `buildNumber`, `buildDate`, `verified`, `state_`, `testString`) VALUES
(1, '2015-04-29 05:09:44', '2015-04-29 05:13:32', 'portal', 6203, '2015-04-16 00:00:00', 1, 0, 'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.');

-- --------------------------------------------------------

--
-- Структура таблицы `Repository`
--

CREATE TABLE IF NOT EXISTS `Repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `RepositoryEntry`
--

CREATE TABLE IF NOT EXISTS `RepositoryEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ResourceAction`
--

CREATE TABLE IF NOT EXISTS `ResourceAction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `ResourceAction`
--

INSERT INTO `ResourceAction` (`resourceActionId`, `name`, `actionId`, `bitwiseValue`) VALUES
(1, 'com.liferay.portlet.softwarecatalog', 'ADD_FRAMEWORK_VERSION', 2),
(2, 'com.liferay.portlet.softwarecatalog', 'ADD_PRODUCT_ENTRY', 4),
(3, 'com.liferay.portlet.softwarecatalog', 'PERMISSIONS', 8),
(4, 'com.liferay.portal.model.Team', 'ASSIGN_MEMBERS', 2),
(5, 'com.liferay.portal.model.Team', 'DELETE', 4),
(6, 'com.liferay.portal.model.Team', 'PERMISSIONS', 8),
(7, 'com.liferay.portal.model.Team', 'UPDATE', 16),
(8, 'com.liferay.portal.model.Team', 'VIEW', 1),
(9, 'com.liferay.portal.model.PasswordPolicy', 'ASSIGN_MEMBERS', 2),
(10, 'com.liferay.portal.model.PasswordPolicy', 'DELETE', 4),
(11, 'com.liferay.portal.model.PasswordPolicy', 'PERMISSIONS', 8),
(12, 'com.liferay.portal.model.PasswordPolicy', 'UPDATE', 16),
(13, 'com.liferay.portal.model.PasswordPolicy', 'VIEW', 1),
(14, 'com.liferay.portlet.blogs.model.BlogsEntry', 'ADD_DISCUSSION', 2),
(15, 'com.liferay.portlet.blogs.model.BlogsEntry', 'DELETE', 4),
(16, 'com.liferay.portlet.blogs.model.BlogsEntry', 'DELETE_DISCUSSION', 8),
(17, 'com.liferay.portlet.blogs.model.BlogsEntry', 'PERMISSIONS', 16),
(18, 'com.liferay.portlet.blogs.model.BlogsEntry', 'UPDATE', 32),
(19, 'com.liferay.portlet.blogs.model.BlogsEntry', 'UPDATE_DISCUSSION', 64),
(20, 'com.liferay.portlet.blogs.model.BlogsEntry', 'VIEW', 1),
(21, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'DELETE', 2),
(22, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'PERMISSIONS', 4),
(23, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'UPDATE', 8),
(24, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'VIEW', 1),
(25, 'com.liferay.portlet.journal.model.JournalFeed', 'DELETE', 2),
(26, 'com.liferay.portlet.journal.model.JournalFeed', 'PERMISSIONS', 4),
(27, 'com.liferay.portlet.journal.model.JournalFeed', 'UPDATE', 8),
(28, 'com.liferay.portlet.journal.model.JournalFeed', 'VIEW', 1),
(29, 'com.liferay.portlet.wiki.model.WikiNode', 'ADD_ATTACHMENT', 2),
(30, 'com.liferay.portlet.wiki.model.WikiNode', 'ADD_PAGE', 4),
(31, 'com.liferay.portlet.wiki.model.WikiNode', 'DELETE', 8),
(32, 'com.liferay.portlet.wiki.model.WikiNode', 'IMPORT', 16),
(33, 'com.liferay.portlet.wiki.model.WikiNode', 'PERMISSIONS', 32),
(34, 'com.liferay.portlet.wiki.model.WikiNode', 'SUBSCRIBE', 64),
(35, 'com.liferay.portlet.wiki.model.WikiNode', 'UPDATE', 128),
(36, 'com.liferay.portlet.wiki.model.WikiNode', 'VIEW', 1),
(37, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'DELETE', 2),
(38, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'UPDATE', 4),
(39, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'VIEW', 1),
(40, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'PERMISSIONS', 8),
(41, 'com.liferay.portlet.bookmarks', 'ADD_ENTRY', 2),
(42, 'com.liferay.portlet.bookmarks', 'ADD_FOLDER', 4),
(43, 'com.liferay.portlet.bookmarks', 'PERMISSIONS', 8),
(44, 'com.liferay.portlet.bookmarks', 'SUBSCRIBE', 16),
(45, 'com.liferay.portlet.bookmarks', 'VIEW', 1),
(46, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'DELETE', 2),
(47, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'PERMISSIONS', 4),
(48, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'UPDATE', 8),
(49, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'VIEW', 1),
(50, 'com.liferay.portlet.asset.model.AssetVocabulary', 'DELETE', 2),
(51, 'com.liferay.portlet.asset.model.AssetVocabulary', 'PERMISSIONS', 4),
(52, 'com.liferay.portlet.asset.model.AssetVocabulary', 'UPDATE', 8),
(53, 'com.liferay.portlet.asset.model.AssetVocabulary', 'VIEW', 1),
(54, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ACCESS', 2),
(55, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ADD_DOCUMENT', 4),
(56, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ADD_SHORTCUT', 8),
(57, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ADD_SUBFOLDER', 16),
(58, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'DELETE', 32),
(59, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'PERMISSIONS', 64),
(60, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'UPDATE', 128),
(61, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'VIEW', 1),
(62, 'com.liferay.portlet.expando.model.ExpandoColumn', 'DELETE', 2),
(63, 'com.liferay.portlet.expando.model.ExpandoColumn', 'PERMISSIONS', 4),
(64, 'com.liferay.portlet.expando.model.ExpandoColumn', 'UPDATE', 8),
(65, 'com.liferay.portlet.expando.model.ExpandoColumn', 'VIEW', 1),
(66, 'com.liferay.portlet.documentlibrary', 'ADD_DOCUMENT', 2),
(67, 'com.liferay.portlet.documentlibrary', 'ADD_DOCUMENT_TYPE', 4),
(68, 'com.liferay.portlet.documentlibrary', 'ADD_FOLDER', 8),
(69, 'com.liferay.portlet.documentlibrary', 'ADD_REPOSITORY', 16),
(70, 'com.liferay.portlet.documentlibrary', 'ADD_STRUCTURE', 32),
(71, 'com.liferay.portlet.documentlibrary', 'ADD_SHORTCUT', 64),
(72, 'com.liferay.portlet.documentlibrary', 'PERMISSIONS', 128),
(73, 'com.liferay.portlet.documentlibrary', 'SUBSCRIBE', 256),
(74, 'com.liferay.portlet.documentlibrary', 'UPDATE', 512),
(75, 'com.liferay.portlet.documentlibrary', 'VIEW', 1),
(76, 'com.liferay.portlet.calendar.model.CalEvent', 'ADD_DISCUSSION', 2),
(77, 'com.liferay.portlet.calendar.model.CalEvent', 'DELETE', 4),
(78, 'com.liferay.portlet.calendar.model.CalEvent', 'DELETE_DISCUSSION', 8),
(79, 'com.liferay.portlet.calendar.model.CalEvent', 'PERMISSIONS', 16),
(80, 'com.liferay.portlet.calendar.model.CalEvent', 'UPDATE', 32),
(81, 'com.liferay.portlet.calendar.model.CalEvent', 'UPDATE_DISCUSSION', 64),
(82, 'com.liferay.portlet.calendar.model.CalEvent', 'VIEW', 1),
(83, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'ADD_ITEM', 2),
(84, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'ADD_SUBCATEGORY', 4),
(85, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'DELETE', 8),
(86, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'PERMISSIONS', 16),
(87, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'UPDATE', 32),
(88, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'VIEW', 1),
(89, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'DELETE', 2),
(90, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'PERMISSIONS', 4),
(91, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'UPDATE', 8),
(92, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'VIEW', 1),
(93, 'com.liferay.portlet.journal', 'ADD_ARTICLE', 2),
(94, 'com.liferay.portlet.journal', 'ADD_FEED', 4),
(95, 'com.liferay.portlet.journal', 'ADD_FOLDER', 8),
(96, 'com.liferay.portlet.journal', 'ADD_STRUCTURE', 16),
(97, 'com.liferay.portlet.journal', 'ADD_TEMPLATE', 32),
(98, 'com.liferay.portlet.journal', 'SUBSCRIBE', 64),
(99, 'com.liferay.portlet.journal', 'VIEW', 1),
(100, 'com.liferay.portlet.journal', 'PERMISSIONS', 128),
(101, 'com.liferay.portlet.calendar', 'ADD_EVENT', 2),
(102, 'com.liferay.portlet.calendar', 'EXPORT_ALL_EVENTS', 4),
(103, 'com.liferay.portlet.calendar', 'PERMISSIONS', 8),
(104, 'com.liferay.portal.model.LayoutPrototype', 'DELETE', 2),
(105, 'com.liferay.portal.model.LayoutPrototype', 'PERMISSIONS', 4),
(106, 'com.liferay.portal.model.LayoutPrototype', 'UPDATE', 8),
(107, 'com.liferay.portal.model.LayoutPrototype', 'VIEW', 1),
(108, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'ADD_RECORD', 2),
(109, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'DELETE', 4),
(110, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'PERMISSIONS', 8),
(111, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'UPDATE', 16),
(112, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'VIEW', 1),
(113, 'com.liferay.portal.model.Organization', 'ADD_ORGANIZATION', 2),
(114, 'com.liferay.portal.model.Organization', 'ASSIGN_MEMBERS', 4),
(115, 'com.liferay.portal.model.Organization', 'ASSIGN_USER_ROLES', 8),
(116, 'com.liferay.portal.model.Organization', 'DELETE', 16),
(117, 'com.liferay.portal.model.Organization', 'MANAGE_ANNOUNCEMENTS', 32),
(118, 'com.liferay.portal.model.Organization', 'MANAGE_SUBORGANIZATIONS', 64),
(119, 'com.liferay.portal.model.Organization', 'MANAGE_USERS', 128),
(120, 'com.liferay.portal.model.Organization', 'PERMISSIONS', 256),
(121, 'com.liferay.portal.model.Organization', 'UPDATE', 512),
(122, 'com.liferay.portal.model.Organization', 'VIEW', 1),
(123, 'com.liferay.portal.model.Organization', 'VIEW_MEMBERS', 1024),
(124, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'DELETE', 2),
(125, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'PERMISSIONS', 4),
(126, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'UPDATE', 8),
(127, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'VIEW', 1),
(128, 'com.liferay.portlet.journal.model.JournalFolder', 'ACCESS', 2),
(129, 'com.liferay.portlet.journal.model.JournalFolder', 'ADD_ARTICLE', 4),
(130, 'com.liferay.portlet.journal.model.JournalFolder', 'ADD_SUBFOLDER', 8),
(131, 'com.liferay.portlet.journal.model.JournalFolder', 'DELETE', 16),
(132, 'com.liferay.portlet.journal.model.JournalFolder', 'PERMISSIONS', 32),
(133, 'com.liferay.portlet.journal.model.JournalFolder', 'UPDATE', 64),
(134, 'com.liferay.portlet.journal.model.JournalFolder', 'VIEW', 1),
(135, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'DELETE', 2),
(136, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'PERMISSIONS', 4),
(137, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'UPDATE', 8),
(138, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'VIEW', 1),
(139, 'com.liferay.portlet.journal.model.JournalTemplate', 'DELETE', 2),
(140, 'com.liferay.portlet.journal.model.JournalTemplate', 'PERMISSIONS', 4),
(141, 'com.liferay.portlet.journal.model.JournalTemplate', 'UPDATE', 8),
(142, 'com.liferay.portlet.journal.model.JournalTemplate', 'VIEW', 1),
(143, 'com.liferay.portlet.journal.model.JournalArticle', 'ADD_DISCUSSION', 2),
(144, 'com.liferay.portlet.journal.model.JournalArticle', 'DELETE', 4),
(145, 'com.liferay.portlet.journal.model.JournalArticle', 'DELETE_DISCUSSION', 8),
(146, 'com.liferay.portlet.journal.model.JournalArticle', 'EXPIRE', 16),
(147, 'com.liferay.portlet.journal.model.JournalArticle', 'PERMISSIONS', 32),
(148, 'com.liferay.portlet.journal.model.JournalArticle', 'UPDATE', 64),
(149, 'com.liferay.portlet.journal.model.JournalArticle', 'UPDATE_DISCUSSION', 128),
(150, 'com.liferay.portlet.journal.model.JournalArticle', 'VIEW', 1),
(151, 'com.liferay.portlet.dynamicdatalists', 'ADD_RECORD_SET', 2),
(152, 'com.liferay.portlet.dynamicdatalists', 'ADD_STRUCTURE', 4),
(153, 'com.liferay.portlet.dynamicdatalists', 'ADD_TEMPLATE', 8),
(154, 'com.liferay.portlet.dynamicdatalists', 'PERMISSIONS', 16),
(155, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'ACCESS', 2),
(156, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'ADD_ENTRY', 4),
(157, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'ADD_SUBFOLDER', 8),
(158, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'DELETE', 16),
(159, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'PERMISSIONS', 32),
(160, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'SUBSCRIBE', 64),
(161, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'UPDATE', 128),
(162, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'VIEW', 1),
(163, 'com.liferay.portal.model.Group', 'ADD_COMMUNITY', 2),
(164, 'com.liferay.portal.model.Group', 'ADD_LAYOUT', 4),
(165, 'com.liferay.portal.model.Group', 'ADD_LAYOUT_BRANCH', 8),
(166, 'com.liferay.portal.model.Group', 'ADD_LAYOUT_SET_BRANCH', 16),
(167, 'com.liferay.portal.model.Group', 'ASSIGN_MEMBERS', 32),
(168, 'com.liferay.portal.model.Group', 'ASSIGN_USER_ROLES', 64),
(169, 'com.liferay.portal.model.Group', 'CONFIGURE_PORTLETS', 128),
(170, 'com.liferay.portal.model.Group', 'DELETE', 256),
(171, 'com.liferay.portal.model.Group', 'EXPORT_IMPORT_LAYOUTS', 512),
(172, 'com.liferay.portal.model.Group', 'EXPORT_IMPORT_PORTLET_INFO', 1024),
(173, 'com.liferay.portal.model.Group', 'MANAGE_ANNOUNCEMENTS', 2048),
(174, 'com.liferay.portal.model.Group', 'MANAGE_ARCHIVED_SETUPS', 4096),
(175, 'com.liferay.portal.model.Group', 'MANAGE_LAYOUTS', 8192),
(176, 'com.liferay.portal.model.Group', 'MANAGE_STAGING', 16384),
(177, 'com.liferay.portal.model.Group', 'MANAGE_SUBGROUPS', 32768),
(178, 'com.liferay.portal.model.Group', 'MANAGE_TEAMS', 65536),
(179, 'com.liferay.portal.model.Group', 'PERMISSIONS', 131072),
(180, 'com.liferay.portal.model.Group', 'PREVIEW_IN_DEVICE', 262144),
(181, 'com.liferay.portal.model.Group', 'PUBLISH_STAGING', 524288),
(182, 'com.liferay.portal.model.Group', 'PUBLISH_TO_REMOTE', 1048576),
(183, 'com.liferay.portal.model.Group', 'UPDATE', 2097152),
(184, 'com.liferay.portal.model.Group', 'VIEW', 1),
(185, 'com.liferay.portal.model.Group', 'VIEW_MEMBERS', 4194304),
(186, 'com.liferay.portal.model.Group', 'VIEW_SITE_ADMINISTRATION', 8388608),
(187, 'com.liferay.portal.model.Group', 'VIEW_STAGING', 16777216),
(188, 'com.liferay.portlet.journal.model.JournalStructure', 'DELETE', 2),
(189, 'com.liferay.portlet.journal.model.JournalStructure', 'PERMISSIONS', 4),
(190, 'com.liferay.portlet.journal.model.JournalStructure', 'UPDATE', 8),
(191, 'com.liferay.portlet.journal.model.JournalStructure', 'VIEW', 1),
(192, 'com.liferay.portlet.asset.model.AssetTag', 'DELETE', 2),
(193, 'com.liferay.portlet.asset.model.AssetTag', 'PERMISSIONS', 4),
(194, 'com.liferay.portlet.asset.model.AssetTag', 'UPDATE', 8),
(195, 'com.liferay.portlet.asset.model.AssetTag', 'VIEW', 1),
(196, 'com.liferay.portal.model.Layout', 'ADD_DISCUSSION', 2),
(197, 'com.liferay.portal.model.Layout', 'ADD_LAYOUT', 4),
(198, 'com.liferay.portal.model.Layout', 'CONFIGURE_PORTLETS', 8),
(199, 'com.liferay.portal.model.Layout', 'CUSTOMIZE', 16),
(200, 'com.liferay.portal.model.Layout', 'DELETE', 32),
(201, 'com.liferay.portal.model.Layout', 'DELETE_DISCUSSION', 64),
(202, 'com.liferay.portal.model.Layout', 'PERMISSIONS', 128),
(203, 'com.liferay.portal.model.Layout', 'UPDATE', 256),
(204, 'com.liferay.portal.model.Layout', 'UPDATE_DISCUSSION', 512),
(205, 'com.liferay.portal.model.Layout', 'VIEW', 1),
(206, 'com.liferay.portlet.asset', 'ADD_TAG', 2),
(207, 'com.liferay.portlet.asset', 'PERMISSIONS', 4),
(208, 'com.liferay.portlet.asset', 'ADD_CATEGORY', 8),
(209, 'com.liferay.portlet.asset', 'ADD_VOCABULARY', 16),
(210, 'com.liferay.portal.model.LayoutBranch', 'DELETE', 2),
(211, 'com.liferay.portal.model.LayoutBranch', 'PERMISSIONS', 4),
(212, 'com.liferay.portal.model.LayoutBranch', 'UPDATE', 8),
(213, 'com.liferay.portal.model.LayoutSetBranch', 'DELETE', 2),
(214, 'com.liferay.portal.model.LayoutSetBranch', 'MERGE', 4),
(215, 'com.liferay.portal.model.LayoutSetBranch', 'PERMISSIONS', 8),
(216, 'com.liferay.portal.model.LayoutSetBranch', 'UPDATE', 16),
(217, 'com.liferay.portlet.messageboards', 'ADD_CATEGORY', 2),
(218, 'com.liferay.portlet.messageboards', 'ADD_FILE', 4),
(219, 'com.liferay.portlet.messageboards', 'ADD_MESSAGE', 8),
(220, 'com.liferay.portlet.messageboards', 'BAN_USER', 16),
(221, 'com.liferay.portlet.messageboards', 'MOVE_THREAD', 32),
(222, 'com.liferay.portlet.messageboards', 'LOCK_THREAD', 64),
(223, 'com.liferay.portlet.messageboards', 'PERMISSIONS', 128),
(224, 'com.liferay.portlet.messageboards', 'REPLY_TO_MESSAGE', 256),
(225, 'com.liferay.portlet.messageboards', 'SUBSCRIBE', 512),
(226, 'com.liferay.portlet.messageboards', 'UPDATE_THREAD_PRIORITY', 1024),
(227, 'com.liferay.portlet.messageboards', 'VIEW', 1),
(228, 'com.liferay.portlet.polls', 'ADD_QUESTION', 2),
(229, 'com.liferay.portlet.polls', 'PERMISSIONS', 4),
(230, 'com.liferay.portlet.shopping.model.ShoppingItem', 'DELETE', 2),
(231, 'com.liferay.portlet.shopping.model.ShoppingItem', 'PERMISSIONS', 4),
(232, 'com.liferay.portlet.shopping.model.ShoppingItem', 'UPDATE', 8),
(233, 'com.liferay.portlet.shopping.model.ShoppingItem', 'VIEW', 1),
(234, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'DELETE', 2),
(235, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'PERMISSIONS', 4),
(236, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'SUBSCRIBE', 8),
(237, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'UPDATE', 16),
(238, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'VIEW', 1),
(239, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'ADD_DISCUSSION', 2),
(240, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'DELETE', 4),
(241, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'DELETE_DISCUSSION', 8),
(242, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'PERMISSIONS', 16),
(243, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'UPDATE', 32),
(244, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'UPDATE_DISCUSSION', 64),
(245, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'VIEW', 1),
(246, 'com.liferay.portal.model.User', 'DELETE', 2),
(247, 'com.liferay.portal.model.User', 'IMPERSONATE', 4),
(248, 'com.liferay.portal.model.User', 'PERMISSIONS', 8),
(249, 'com.liferay.portal.model.User', 'UPDATE', 16),
(250, 'com.liferay.portal.model.User', 'VIEW', 1),
(251, 'com.liferay.portal.model.LayoutSetPrototype', 'DELETE', 2),
(252, 'com.liferay.portal.model.LayoutSetPrototype', 'PERMISSIONS', 4),
(253, 'com.liferay.portal.model.LayoutSetPrototype', 'UPDATE', 8),
(254, 'com.liferay.portal.model.LayoutSetPrototype', 'VIEW', 1),
(255, 'com.liferay.portlet.shopping', 'ADD_CATEGORY', 2),
(256, 'com.liferay.portlet.shopping', 'ADD_ITEM', 4),
(257, 'com.liferay.portlet.shopping', 'MANAGE_COUPONS', 8),
(258, 'com.liferay.portlet.shopping', 'MANAGE_ORDERS', 16),
(259, 'com.liferay.portlet.shopping', 'PERMISSIONS', 32),
(260, 'com.liferay.portlet.shopping', 'VIEW', 1),
(261, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion', 'DELETE', 2),
(262, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion', 'PERMISSIONS', 4),
(263, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion', 'UPDATE', 8),
(264, 'com.liferay.portlet.wiki', 'ADD_NODE', 2),
(265, 'com.liferay.portlet.wiki', 'PERMISSIONS', 4),
(266, 'com.liferay.portlet.polls.model.PollsQuestion', 'ADD_VOTE', 2),
(267, 'com.liferay.portlet.polls.model.PollsQuestion', 'DELETE', 4),
(268, 'com.liferay.portlet.polls.model.PollsQuestion', 'PERMISSIONS', 8),
(269, 'com.liferay.portlet.polls.model.PollsQuestion', 'UPDATE', 16),
(270, 'com.liferay.portlet.polls.model.PollsQuestion', 'VIEW', 1),
(271, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'DELETE', 2),
(272, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'PERMISSIONS', 4),
(273, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'UPDATE', 8),
(274, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'VIEW', 1),
(275, 'com.liferay.portal.model.UserGroup', 'ASSIGN_MEMBERS', 2),
(276, 'com.liferay.portal.model.UserGroup', 'DELETE', 4),
(277, 'com.liferay.portal.model.UserGroup', 'MANAGE_ANNOUNCEMENTS', 8),
(278, 'com.liferay.portal.model.UserGroup', 'PERMISSIONS', 16),
(279, 'com.liferay.portal.model.UserGroup', 'UPDATE', 32),
(280, 'com.liferay.portal.model.UserGroup', 'VIEW', 1),
(281, 'com.liferay.portal.model.UserGroup', 'VIEW_MEMBERS', 64),
(282, 'com.liferay.portal.model.Role', 'ASSIGN_MEMBERS', 2),
(283, 'com.liferay.portal.model.Role', 'DEFINE_PERMISSIONS', 4),
(284, 'com.liferay.portal.model.Role', 'DELETE', 8),
(285, 'com.liferay.portal.model.Role', 'MANAGE_ANNOUNCEMENTS', 16),
(286, 'com.liferay.portal.model.Role', 'PERMISSIONS', 32),
(287, 'com.liferay.portal.model.Role', 'UPDATE', 64),
(288, 'com.liferay.portal.model.Role', 'VIEW', 1),
(289, 'com.liferay.portlet.messageboards.model.MBCategory', 'ADD_FILE', 2),
(290, 'com.liferay.portlet.messageboards.model.MBCategory', 'ADD_MESSAGE', 4),
(291, 'com.liferay.portlet.messageboards.model.MBCategory', 'ADD_SUBCATEGORY', 8),
(292, 'com.liferay.portlet.messageboards.model.MBCategory', 'DELETE', 16),
(293, 'com.liferay.portlet.messageboards.model.MBCategory', 'LOCK_THREAD', 32),
(294, 'com.liferay.portlet.messageboards.model.MBCategory', 'MOVE_THREAD', 64),
(295, 'com.liferay.portlet.messageboards.model.MBCategory', 'PERMISSIONS', 128),
(296, 'com.liferay.portlet.messageboards.model.MBCategory', 'REPLY_TO_MESSAGE', 256),
(297, 'com.liferay.portlet.messageboards.model.MBCategory', 'SUBSCRIBE', 512),
(298, 'com.liferay.portlet.messageboards.model.MBCategory', 'UPDATE', 1024),
(299, 'com.liferay.portlet.messageboards.model.MBCategory', 'UPDATE_THREAD_PRIORITY', 2048),
(300, 'com.liferay.portlet.messageboards.model.MBCategory', 'VIEW', 1),
(301, 'com.liferay.portlet.mobiledevicerules', 'ADD_RULE_GROUP', 2),
(302, 'com.liferay.portlet.mobiledevicerules', 'ADD_RULE_GROUP_INSTANCE', 4),
(303, 'com.liferay.portlet.mobiledevicerules', 'CONFIGURATION', 8),
(304, 'com.liferay.portlet.mobiledevicerules', 'VIEW', 1),
(305, 'com.liferay.portlet.mobiledevicerules', 'PERMISSIONS', 16),
(306, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'DELETE', 2),
(307, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'PERMISSIONS', 4),
(308, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'UPDATE', 8),
(309, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'VIEW', 1),
(310, 'com.liferay.portlet.wiki.model.WikiPage', 'ADD_DISCUSSION', 2),
(311, 'com.liferay.portlet.wiki.model.WikiPage', 'DELETE', 4),
(312, 'com.liferay.portlet.wiki.model.WikiPage', 'DELETE_DISCUSSION', 8),
(313, 'com.liferay.portlet.wiki.model.WikiPage', 'PERMISSIONS', 16),
(314, 'com.liferay.portlet.wiki.model.WikiPage', 'SUBSCRIBE', 32),
(315, 'com.liferay.portlet.wiki.model.WikiPage', 'UPDATE', 64),
(316, 'com.liferay.portlet.wiki.model.WikiPage', 'UPDATE_DISCUSSION', 128),
(317, 'com.liferay.portlet.wiki.model.WikiPage', 'VIEW', 1),
(318, 'com.liferay.portlet.asset.model.AssetCategory', 'ADD_CATEGORY', 2),
(319, 'com.liferay.portlet.asset.model.AssetCategory', 'DELETE', 4),
(320, 'com.liferay.portlet.asset.model.AssetCategory', 'PERMISSIONS', 8),
(321, 'com.liferay.portlet.asset.model.AssetCategory', 'UPDATE', 16),
(322, 'com.liferay.portlet.asset.model.AssetCategory', 'VIEW', 1),
(323, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'DELETE', 2),
(324, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'PERMISSIONS', 4),
(325, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'UPDATE', 8),
(326, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'VIEW', 1),
(327, 'com.liferay.portlet.messageboards.model.MBMessage', 'DELETE', 2),
(328, 'com.liferay.portlet.messageboards.model.MBMessage', 'PERMISSIONS', 4),
(329, 'com.liferay.portlet.messageboards.model.MBMessage', 'SUBSCRIBE', 8),
(330, 'com.liferay.portlet.messageboards.model.MBMessage', 'UPDATE', 16),
(331, 'com.liferay.portlet.messageboards.model.MBMessage', 'VIEW', 1),
(332, 'com.liferay.portlet.messageboards.model.MBThread', 'SUBSCRIBE', 2),
(333, 'com.liferay.portlet.messageboards.model.MBThread', 'VIEW', 1),
(334, 'com.liferay.portlet.messageboards.model.MBThread', 'PERMISSIONS', 4),
(335, 'com.liferay.portlet.blogs', 'ADD_ENTRY', 2),
(336, 'com.liferay.portlet.blogs', 'PERMISSIONS', 4),
(337, 'com.liferay.portlet.blogs', 'SUBSCRIBE', 8),
(338, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'ADD_DISCUSSION', 2),
(339, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'DELETE', 4),
(340, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'DELETE_DISCUSSION', 8),
(341, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'OVERRIDE_CHECKOUT', 16),
(342, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'PERMISSIONS', 32),
(343, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'UPDATE', 64),
(344, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'UPDATE_DISCUSSION', 128),
(345, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'VIEW', 1),
(346, '134', 'ACCESS_IN_CONTROL_PANEL', 2),
(347, '134', 'CONFIGURATION', 4),
(348, '134', 'VIEW', 1),
(349, '134', 'PERMISSIONS', 8),
(350, '134', 'PREFERENCES', 16),
(351, '59', 'ADD_TO_PAGE', 2),
(352, '59', 'CONFIGURATION', 4),
(353, '59', 'PERMISSIONS', 8),
(354, '59', 'PREFERENCES', 16),
(355, '59', 'VIEW', 1),
(356, '139', 'ACCESS_IN_CONTROL_PANEL', 2),
(357, '139', 'ADD_EXPANDO', 4),
(358, '139', 'CONFIGURATION', 8),
(359, '139', 'VIEW', 1),
(360, '139', 'PERMISSIONS', 16),
(361, '139', 'PREFERENCES', 32),
(362, '19', 'ADD_TO_PAGE', 2),
(363, '19', 'CONFIGURATION', 4),
(364, '19', 'VIEW', 1),
(365, '19', 'PERMISSIONS', 8),
(366, '19', 'PREFERENCES', 16),
(367, '110', 'ADD_TO_PAGE', 2),
(368, '110', 'CONFIGURATION', 4),
(369, '110', 'PERMISSIONS', 8),
(370, '110', 'PREFERENCES', 16),
(371, '110', 'VIEW', 1),
(372, '36', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(373, '36', 'ADD_TO_PAGE', 4),
(374, '36', 'CONFIGURATION', 8),
(375, '36', 'VIEW', 1),
(376, '36', 'PERMISSIONS', 16),
(377, '36', 'PREFERENCES', 32),
(378, '178', 'CONFIGURATION', 2),
(379, '178', 'VIEW', 1),
(380, '178', 'ADD_TO_PAGE', 4),
(381, '178', 'PERMISSIONS', 8),
(382, '178', 'PREFERENCES', 16),
(383, '15', 'ACCESS_IN_CONTROL_PANEL', 2),
(384, '15', 'ADD_TO_PAGE', 4),
(385, '15', 'CONFIGURATION', 8),
(386, '15', 'VIEW', 1),
(387, '15', 'PERMISSIONS', 16),
(388, '15', 'PREFERENCES', 32),
(389, '33', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(390, '33', 'ADD_TO_PAGE', 4),
(391, '33', 'CONFIGURATION', 8),
(392, '33', 'VIEW', 1),
(393, '33', 'PERMISSIONS', 16),
(394, '33', 'PREFERENCES', 32),
(395, '34', 'ADD_TO_PAGE', 2),
(396, '34', 'CONFIGURATION', 4),
(397, '34', 'VIEW', 1),
(398, '34', 'PERMISSIONS', 8),
(399, '34', 'PREFERENCES', 16),
(400, '156', 'ADD_TO_PAGE', 2),
(401, '156', 'CONFIGURATION', 4),
(402, '156', 'PERMISSIONS', 8),
(403, '156', 'PREFERENCES', 16),
(404, '156', 'VIEW', 1),
(405, '154', 'ACCESS_IN_CONTROL_PANEL', 2),
(406, '154', 'CONFIGURATION', 4),
(407, '154', 'VIEW', 1),
(408, '154', 'PERMISSIONS', 8),
(409, '154', 'PREFERENCES', 16),
(410, '20', 'ACCESS_IN_CONTROL_PANEL', 2),
(411, '20', 'ADD_PORTLET_DISPLAY_TEMPLATE', 4),
(412, '20', 'ADD_TO_PAGE', 8),
(413, '20', 'CONFIGURATION', 16),
(414, '20', 'VIEW', 1),
(415, '20', 'PERMISSIONS', 32),
(416, '20', 'PREFERENCES', 64),
(417, '174', 'ADD_TO_PAGE', 2),
(418, '174', 'CONFIGURATION', 4),
(419, '174', 'PERMISSIONS', 8),
(420, '174', 'PREFERENCES', 16),
(421, '174', 'VIEW', 1),
(422, '83', 'ADD_ENTRY', 2),
(423, '83', 'ADD_TO_PAGE', 4),
(424, '83', 'CONFIGURATION', 8),
(425, '83', 'VIEW', 1),
(426, '83', 'PERMISSIONS', 16),
(427, '83', 'PREFERENCES', 32),
(428, '99', 'ACCESS_IN_CONTROL_PANEL', 2),
(429, '99', 'CONFIGURATION', 4),
(430, '99', 'VIEW', 1),
(431, '99', 'PERMISSIONS', 8),
(432, '99', 'PREFERENCES', 16),
(433, '84', 'ADD_ENTRY', 2),
(434, '84', 'ADD_TO_PAGE', 4),
(435, '84', 'CONFIGURATION', 8),
(436, '84', 'VIEW', 1),
(437, '84', 'PERMISSIONS', 16),
(438, '84', 'PREFERENCES', 32),
(439, '98', 'ACCESS_IN_CONTROL_PANEL', 2),
(440, '98', 'ADD_TO_PAGE', 4),
(441, '98', 'CONFIGURATION', 8),
(442, '98', 'VIEW', 1),
(443, '98', 'PERMISSIONS', 16),
(444, '98', 'PREFERENCES', 32),
(445, '125', 'ACCESS_IN_CONTROL_PANEL', 2),
(446, '125', 'CONFIGURATION', 4),
(447, '125', 'EXPORT_USER', 8),
(448, '125', 'VIEW', 1),
(449, '125', 'PERMISSIONS', 16),
(450, '125', 'PREFERENCES', 32),
(451, '127', 'ADD_TO_PAGE', 2),
(452, '127', 'CONFIGURATION', 4),
(453, '127', 'PERMISSIONS', 8),
(454, '127', 'PREFERENCES', 16),
(455, '127', 'VIEW', 1),
(456, '128', 'ACCESS_IN_CONTROL_PANEL', 2),
(457, '128', 'CONFIGURATION', 4),
(458, '128', 'VIEW', 1),
(459, '128', 'PERMISSIONS', 8),
(460, '128', 'PREFERENCES', 16),
(461, '146', 'ACCESS_IN_CONTROL_PANEL', 2),
(462, '146', 'CONFIGURATION', 4),
(463, '146', 'VIEW', 1),
(464, '146', 'PERMISSIONS', 8),
(465, '146', 'PREFERENCES', 16),
(466, '147', 'ACCESS_IN_CONTROL_PANEL', 2),
(467, '147', 'CONFIGURATION', 4),
(468, '147', 'VIEW', 1),
(469, '147', 'PERMISSIONS', 8),
(470, '147', 'PREFERENCES', 16),
(471, '149', 'ACCESS_IN_CONTROL_PANEL', 2),
(472, '149', 'CONFIGURATION', 4),
(473, '149', 'VIEW', 1),
(474, '149', 'PERMISSIONS', 8),
(475, '149', 'PREFERENCES', 16),
(476, '169', 'ADD_TO_PAGE', 2),
(477, '169', 'CONFIGURATION', 4),
(478, '169', 'PERMISSIONS', 8),
(479, '169', 'PREFERENCES', 16),
(480, '169', 'VIEW', 1),
(481, '25', 'ACCESS_IN_CONTROL_PANEL', 2),
(482, '25', 'CONFIGURATION', 4),
(483, '25', 'VIEW', 1),
(484, '25', 'PERMISSIONS', 8),
(485, '25', 'PREFERENCES', 16),
(486, '129', 'ACCESS_IN_CONTROL_PANEL', 2),
(487, '129', 'CONFIGURATION', 4),
(488, '129', 'VIEW', 1),
(489, '129', 'PERMISSIONS', 8),
(490, '129', 'PREFERENCES', 16),
(491, '166', 'ACCESS_IN_CONTROL_PANEL', 2),
(492, '166', 'ADD_TO_PAGE', 4),
(493, '166', 'CONFIGURATION', 8),
(494, '166', 'VIEW', 1),
(495, '166', 'PERMISSIONS', 16),
(496, '166', 'PREFERENCES', 32),
(497, '165', 'ADD_TO_PAGE', 2),
(498, '165', 'CONFIGURATION', 4),
(499, '165', 'PERMISSIONS', 8),
(500, '165', 'PREFERENCES', 16),
(501, '165', 'VIEW', 1),
(502, '28', 'ACCESS_IN_CONTROL_PANEL', 2),
(503, '28', 'ADD_TO_PAGE', 4),
(504, '28', 'CONFIGURATION', 8),
(505, '28', 'VIEW', 1),
(506, '28', 'PERMISSIONS', 16),
(507, '28', 'PREFERENCES', 32),
(508, '167', 'ACCESS_IN_CONTROL_PANEL', 2),
(509, '167', 'ADD_TO_PAGE', 4),
(510, '167', 'CONFIGURATION', 8),
(511, '167', 'VIEW', 1),
(512, '167', 'PERMISSIONS', 16),
(513, '167', 'PREFERENCES', 32),
(514, '161', 'ACCESS_IN_CONTROL_PANEL', 2),
(515, '161', 'CONFIGURATION', 4),
(516, '161', 'VIEW', 1),
(517, '161', 'PERMISSIONS', 8),
(518, '161', 'PREFERENCES', 16),
(519, '162', 'ACCESS_IN_CONTROL_PANEL', 2),
(520, '162', 'CONFIGURATION', 4),
(521, '162', 'VIEW', 1),
(522, '162', 'PERMISSIONS', 8),
(523, '162', 'PREFERENCES', 16),
(524, '31', 'ADD_TO_PAGE', 2),
(525, '31', 'CONFIGURATION', 4),
(526, '31', 'PERMISSIONS', 8),
(527, '31', 'PREFERENCES', 16),
(528, '31', 'VIEW', 1),
(529, '8', 'ACCESS_IN_CONTROL_PANEL', 2),
(530, '8', 'ADD_TO_PAGE', 4),
(531, '8', 'CONFIGURATION', 8),
(532, '8', 'VIEW', 1),
(533, '8', 'PERMISSIONS', 16),
(534, '8', 'PREFERENCES', 32),
(535, '66', 'VIEW', 1),
(536, '66', 'ADD_TO_PAGE', 2),
(537, '66', 'CONFIGURATION', 4),
(538, '66', 'PERMISSIONS', 8),
(539, '66', 'PREFERENCES', 16),
(540, '66', 'ACCESS_IN_CONTROL_PANEL', 32),
(541, '156', 'ACCESS_IN_CONTROL_PANEL', 32),
(542, '180', 'VIEW', 1),
(543, '180', 'ADD_TO_PAGE', 2),
(544, '180', 'CONFIGURATION', 4),
(545, '180', 'PERMISSIONS', 8),
(546, '180', 'PREFERENCES', 16),
(547, '180', 'ACCESS_IN_CONTROL_PANEL', 32),
(548, '183', 'VIEW', 1),
(549, '183', 'ADD_TO_PAGE', 2),
(550, '183', 'CONFIGURATION', 4),
(551, '183', 'PERMISSIONS', 8),
(552, '183', 'PREFERENCES', 16),
(553, '183', 'ACCESS_IN_CONTROL_PANEL', 32),
(554, '152', 'ACCESS_IN_CONTROL_PANEL', 2),
(555, '152', 'CONFIGURATION', 4),
(556, '152', 'VIEW', 1),
(557, '152', 'PERMISSIONS', 8),
(558, '152', 'PREFERENCES', 16),
(559, '27', 'VIEW', 1),
(560, '27', 'ADD_TO_PAGE', 2),
(561, '27', 'CONFIGURATION', 4),
(562, '27', 'PERMISSIONS', 8),
(563, '27', 'PREFERENCES', 16),
(564, '27', 'ACCESS_IN_CONTROL_PANEL', 32),
(565, '88', 'VIEW', 1),
(566, '88', 'ADD_TO_PAGE', 2),
(567, '88', 'CONFIGURATION', 4),
(568, '88', 'PERMISSIONS', 8),
(569, '88', 'PREFERENCES', 16),
(570, '88', 'ACCESS_IN_CONTROL_PANEL', 32),
(571, '130', 'ACCESS_IN_CONTROL_PANEL', 2),
(572, '130', 'CONFIGURATION', 4),
(573, '130', 'VIEW', 1),
(574, '130', 'PERMISSIONS', 8),
(575, '130', 'PREFERENCES', 16),
(576, '122', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(577, '122', 'CONFIGURATION', 4),
(578, '122', 'VIEW', 1),
(579, '122', 'ADD_TO_PAGE', 8),
(580, '122', 'PERMISSIONS', 16),
(581, '122', 'PREFERENCES', 32),
(582, '122', 'ACCESS_IN_CONTROL_PANEL', 64),
(583, '36', 'ACCESS_IN_CONTROL_PANEL', 64),
(584, '26', 'VIEW', 1),
(585, '26', 'ADD_TO_PAGE', 2),
(586, '26', 'CONFIGURATION', 4),
(587, '26', 'PERMISSIONS', 8),
(588, '26', 'PREFERENCES', 16),
(589, '26', 'ACCESS_IN_CONTROL_PANEL', 32),
(590, '190', 'VIEW', 1),
(591, '190', 'ADD_TO_PAGE', 2),
(592, '190', 'CONFIGURATION', 4),
(593, '190', 'PERMISSIONS', 8),
(594, '190', 'PREFERENCES', 16),
(595, '190', 'ACCESS_IN_CONTROL_PANEL', 32),
(596, '175', 'VIEW', 1),
(597, '175', 'ADD_TO_PAGE', 2),
(598, '175', 'CONFIGURATION', 4),
(599, '175', 'PERMISSIONS', 8),
(600, '175', 'PREFERENCES', 16),
(601, '175', 'ACCESS_IN_CONTROL_PANEL', 32),
(602, '64', 'VIEW', 1),
(603, '64', 'ADD_TO_PAGE', 2),
(604, '64', 'CONFIGURATION', 4),
(605, '64', 'PERMISSIONS', 8),
(606, '64', 'PREFERENCES', 16),
(607, '64', 'ACCESS_IN_CONTROL_PANEL', 32),
(608, '153', 'ACCESS_IN_CONTROL_PANEL', 2),
(609, '153', 'ADD_TO_PAGE', 4),
(610, '153', 'CONFIGURATION', 8),
(611, '153', 'VIEW', 1),
(612, '153', 'PERMISSIONS', 16),
(613, '153', 'PREFERENCES', 32),
(614, '182', 'VIEW', 1),
(615, '182', 'ADD_TO_PAGE', 2),
(616, '182', 'CONFIGURATION', 4),
(617, '182', 'PERMISSIONS', 8),
(618, '182', 'PREFERENCES', 16),
(619, '182', 'ACCESS_IN_CONTROL_PANEL', 32),
(620, '179', 'ACCESS_IN_CONTROL_PANEL', 2),
(621, '179', 'CONFIGURATION', 4),
(622, '179', 'VIEW', 1),
(623, '179', 'PERMISSIONS', 8),
(624, '179', 'PREFERENCES', 16),
(625, '173', 'VIEW', 1),
(626, '173', 'ADD_TO_PAGE', 2),
(627, '173', 'CONFIGURATION', 4),
(628, '173', 'PERMISSIONS', 8),
(629, '173', 'PREFERENCES', 16),
(630, '173', 'ACCESS_IN_CONTROL_PANEL', 32),
(631, '100', 'VIEW', 1),
(632, '100', 'ADD_TO_PAGE', 2),
(633, '100', 'CONFIGURATION', 4),
(634, '100', 'PERMISSIONS', 8),
(635, '100', 'PREFERENCES', 16),
(636, '100', 'ACCESS_IN_CONTROL_PANEL', 32),
(637, '157', 'ACCESS_IN_CONTROL_PANEL', 2),
(638, '157', 'CONFIGURATION', 4),
(639, '157', 'VIEW', 1),
(640, '157', 'PERMISSIONS', 8),
(641, '157', 'PREFERENCES', 16),
(642, '19', 'ACCESS_IN_CONTROL_PANEL', 32),
(643, '160', 'VIEW', 1),
(644, '160', 'ADD_TO_PAGE', 2),
(645, '160', 'CONFIGURATION', 4),
(646, '160', 'PERMISSIONS', 8),
(647, '160', 'PREFERENCES', 16),
(648, '160', 'ACCESS_IN_CONTROL_PANEL', 32),
(649, '181', 'VIEW', 1),
(650, '181', 'ADD_TO_PAGE', 2),
(651, '181', 'CONFIGURATION', 4),
(652, '181', 'PERMISSIONS', 8),
(653, '181', 'PREFERENCES', 16),
(654, '181', 'ACCESS_IN_CONTROL_PANEL', 32),
(655, '86', 'VIEW', 1),
(656, '86', 'ADD_TO_PAGE', 2),
(657, '86', 'CONFIGURATION', 4),
(658, '86', 'PERMISSIONS', 8),
(659, '86', 'PREFERENCES', 16),
(660, '86', 'ACCESS_IN_CONTROL_PANEL', 32),
(661, '148', 'VIEW', 1),
(662, '148', 'ADD_TO_PAGE', 2),
(663, '148', 'CONFIGURATION', 4),
(664, '148', 'PERMISSIONS', 8),
(665, '148', 'PREFERENCES', 16),
(666, '148', 'ACCESS_IN_CONTROL_PANEL', 32),
(667, '11', 'ADD_TO_PAGE', 2),
(668, '11', 'CONFIGURATION', 4),
(669, '11', 'VIEW', 1),
(670, '11', 'PERMISSIONS', 8),
(671, '11', 'PREFERENCES', 16),
(672, '11', 'ACCESS_IN_CONTROL_PANEL', 32),
(673, '29', 'ADD_TO_PAGE', 2),
(674, '29', 'CONFIGURATION', 4),
(675, '29', 'VIEW', 1),
(676, '29', 'PERMISSIONS', 8),
(677, '29', 'PREFERENCES', 16),
(678, '29', 'ACCESS_IN_CONTROL_PANEL', 32),
(679, '174', 'ACCESS_IN_CONTROL_PANEL', 32),
(680, '158', 'ACCESS_IN_CONTROL_PANEL', 2),
(681, '158', 'ADD_TO_PAGE', 4),
(682, '158', 'CONFIGURATION', 8),
(683, '158', 'VIEW', 1),
(684, '158', 'PERMISSIONS', 16),
(685, '158', 'PREFERENCES', 32),
(686, '178', 'ACCESS_IN_CONTROL_PANEL', 32),
(687, '124', 'VIEW', 1),
(688, '124', 'ADD_TO_PAGE', 2),
(689, '124', 'CONFIGURATION', 4),
(690, '124', 'PERMISSIONS', 8),
(691, '124', 'PREFERENCES', 16),
(692, '124', 'ACCESS_IN_CONTROL_PANEL', 32),
(693, '58', 'ADD_TO_PAGE', 2),
(694, '58', 'CONFIGURATION', 4),
(695, '58', 'VIEW', 1),
(696, '58', 'PERMISSIONS', 8),
(697, '58', 'PREFERENCES', 16),
(698, '58', 'ACCESS_IN_CONTROL_PANEL', 32),
(699, '97', 'VIEW', 1),
(700, '97', 'ADD_TO_PAGE', 2),
(701, '97', 'CONFIGURATION', 4),
(702, '97', 'PERMISSIONS', 8),
(703, '97', 'PREFERENCES', 16),
(704, '97', 'ACCESS_IN_CONTROL_PANEL', 32),
(705, '71', 'ADD_TO_PAGE', 2),
(706, '71', 'CONFIGURATION', 4),
(707, '71', 'VIEW', 1),
(708, '71', 'PERMISSIONS', 8),
(709, '71', 'PREFERENCES', 16),
(710, '71', 'ACCESS_IN_CONTROL_PANEL', 32),
(711, '39', 'VIEW', 1),
(712, '39', 'ADD_TO_PAGE', 2),
(713, '39', 'CONFIGURATION', 4),
(714, '39', 'PERMISSIONS', 8),
(715, '39', 'PREFERENCES', 16),
(716, '39', 'ACCESS_IN_CONTROL_PANEL', 32),
(717, '185', 'VIEW', 1),
(718, '185', 'ADD_TO_PAGE', 2),
(719, '185', 'CONFIGURATION', 4),
(720, '185', 'PERMISSIONS', 8),
(721, '185', 'PREFERENCES', 16),
(722, '185', 'ACCESS_IN_CONTROL_PANEL', 32),
(723, '170', 'VIEW', 1),
(724, '170', 'ADD_TO_PAGE', 2),
(725, '170', 'CONFIGURATION', 4),
(726, '170', 'PERMISSIONS', 8),
(727, '170', 'PREFERENCES', 16),
(728, '170', 'ACCESS_IN_CONTROL_PANEL', 32),
(729, '85', 'ADD_TO_PAGE', 2),
(730, '85', 'CONFIGURATION', 4),
(731, '85', 'VIEW', 1),
(732, '85', 'PERMISSIONS', 8),
(733, '85', 'PREFERENCES', 16),
(734, '85', 'ADD_PORTLET_DISPLAY_TEMPLATE', 32),
(735, '85', 'ACCESS_IN_CONTROL_PANEL', 64),
(736, '118', 'VIEW', 1),
(737, '118', 'ADD_TO_PAGE', 2),
(738, '118', 'CONFIGURATION', 4),
(739, '118', 'PERMISSIONS', 8),
(740, '118', 'PREFERENCES', 16),
(741, '118', 'ACCESS_IN_CONTROL_PANEL', 32),
(742, '107', 'VIEW', 1),
(743, '107', 'ADD_TO_PAGE', 2),
(744, '107', 'CONFIGURATION', 4),
(745, '107', 'PERMISSIONS', 8),
(746, '107', 'PREFERENCES', 16),
(747, '107', 'ACCESS_IN_CONTROL_PANEL', 32),
(748, '30', 'VIEW', 1),
(749, '30', 'ADD_TO_PAGE', 2),
(750, '30', 'CONFIGURATION', 4),
(751, '30', 'PERMISSIONS', 8),
(752, '30', 'PREFERENCES', 16),
(753, '30', 'ACCESS_IN_CONTROL_PANEL', 32),
(754, '184', 'ADD_TO_PAGE', 2),
(755, '184', 'CONFIGURATION', 4),
(756, '184', 'VIEW', 1),
(757, '184', 'PERMISSIONS', 8),
(758, '184', 'PREFERENCES', 16),
(759, '184', 'ACCESS_IN_CONTROL_PANEL', 32),
(760, '48', 'VIEW', 1),
(761, '48', 'ADD_TO_PAGE', 2),
(762, '48', 'CONFIGURATION', 4),
(763, '48', 'PERMISSIONS', 8),
(764, '48', 'PREFERENCES', 16),
(765, '48', 'ACCESS_IN_CONTROL_PANEL', 32),
(766, '62', 'VIEW', 1),
(767, '62', 'ADD_TO_PAGE', 2),
(768, '62', 'CONFIGURATION', 4),
(769, '62', 'PERMISSIONS', 8),
(770, '62', 'PREFERENCES', 16),
(771, '62', 'ACCESS_IN_CONTROL_PANEL', 32),
(772, '176', 'VIEW', 1),
(773, '176', 'ADD_TO_PAGE', 2),
(774, '176', 'CONFIGURATION', 4),
(775, '176', 'PERMISSIONS', 8),
(776, '176', 'PREFERENCES', 16),
(777, '176', 'ACCESS_IN_CONTROL_PANEL', 32),
(778, '172', 'VIEW', 1),
(779, '172', 'ADD_TO_PAGE', 2),
(780, '172', 'CONFIGURATION', 4),
(781, '172', 'PERMISSIONS', 8),
(782, '172', 'PREFERENCES', 16),
(783, '172', 'ACCESS_IN_CONTROL_PANEL', 32),
(784, '187', 'ADD_TO_PAGE', 2),
(785, '187', 'CONFIGURATION', 4),
(786, '187', 'VIEW', 1),
(787, '187', 'PERMISSIONS', 8),
(788, '187', 'PREFERENCES', 16),
(789, '187', 'ACCESS_IN_CONTROL_PANEL', 32),
(790, '108', 'VIEW', 1),
(791, '108', 'ADD_TO_PAGE', 2),
(792, '108', 'CONFIGURATION', 4),
(793, '108', 'PERMISSIONS', 8),
(794, '108', 'PREFERENCES', 16),
(795, '108', 'ACCESS_IN_CONTROL_PANEL', 32),
(796, '84', 'ACCESS_IN_CONTROL_PANEL', 64),
(797, '101', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(798, '101', 'ADD_TO_PAGE', 4),
(799, '101', 'CONFIGURATION', 8),
(800, '101', 'SUBSCRIBE', 16),
(801, '101', 'VIEW', 1),
(802, '101', 'PERMISSIONS', 32),
(803, '101', 'PREFERENCES', 64),
(804, '101', 'ACCESS_IN_CONTROL_PANEL', 128),
(805, '121', 'VIEW', 1),
(806, '121', 'ADD_TO_PAGE', 2),
(807, '121', 'CONFIGURATION', 4),
(808, '121', 'PERMISSIONS', 8),
(809, '121', 'PREFERENCES', 16),
(810, '121', 'ACCESS_IN_CONTROL_PANEL', 32),
(811, '49', 'VIEW', 1),
(812, '49', 'ADD_TO_PAGE', 2),
(813, '49', 'CONFIGURATION', 4),
(814, '49', 'PERMISSIONS', 8),
(815, '49', 'PREFERENCES', 16),
(816, '49', 'ACCESS_IN_CONTROL_PANEL', 32),
(817, '143', 'VIEW', 1),
(818, '143', 'ADD_TO_PAGE', 2),
(819, '143', 'CONFIGURATION', 4),
(820, '143', 'PERMISSIONS', 8),
(821, '143', 'PREFERENCES', 16),
(822, '143', 'ACCESS_IN_CONTROL_PANEL', 32),
(823, '77', 'VIEW', 1),
(824, '77', 'ADD_TO_PAGE', 2),
(825, '77', 'CONFIGURATION', 4),
(826, '77', 'PERMISSIONS', 8),
(827, '77', 'PREFERENCES', 16),
(828, '77', 'ACCESS_IN_CONTROL_PANEL', 32),
(829, '115', 'VIEW', 1),
(830, '115', 'ADD_TO_PAGE', 2),
(831, '115', 'CONFIGURATION', 4),
(832, '115', 'PERMISSIONS', 8),
(833, '115', 'PREFERENCES', 16),
(834, '115', 'ACCESS_IN_CONTROL_PANEL', 32),
(835, '56', 'ADD_TO_PAGE', 2),
(836, '56', 'CONFIGURATION', 4),
(837, '56', 'VIEW', 1),
(838, '56', 'PERMISSIONS', 8),
(839, '56', 'PREFERENCES', 16),
(840, '56', 'ACCESS_IN_CONTROL_PANEL', 32),
(841, '142', 'VIEW', 1),
(842, '142', 'ADD_TO_PAGE', 2),
(843, '142', 'CONFIGURATION', 4),
(844, '142', 'PERMISSIONS', 8),
(845, '142', 'PREFERENCES', 16),
(846, '142', 'ACCESS_IN_CONTROL_PANEL', 32),
(847, '16', 'PREFERENCES', 2),
(848, '16', 'GUEST_PREFERENCES', 4),
(849, '16', 'VIEW', 1),
(850, '16', 'ADD_TO_PAGE', 8),
(851, '16', 'CONFIGURATION', 16),
(852, '16', 'PERMISSIONS', 32),
(853, '16', 'ACCESS_IN_CONTROL_PANEL', 64),
(854, '3', 'VIEW', 1),
(855, '3', 'ADD_TO_PAGE', 2),
(856, '3', 'CONFIGURATION', 4),
(857, '3', 'PERMISSIONS', 8),
(858, '3', 'PREFERENCES', 16),
(859, '3', 'ACCESS_IN_CONTROL_PANEL', 32),
(860, '23', 'VIEW', 1),
(861, '23', 'ADD_TO_PAGE', 2),
(862, '23', 'CONFIGURATION', 4),
(863, '23', 'PERMISSIONS', 8),
(864, '23', 'PREFERENCES', 16),
(865, '23', 'ACCESS_IN_CONTROL_PANEL', 32),
(866, '145', 'VIEW', 1),
(867, '145', 'ADD_TO_PAGE', 2),
(868, '145', 'CONFIGURATION', 4),
(869, '145', 'PERMISSIONS', 8),
(870, '145', 'PREFERENCES', 16),
(871, '145', 'ACCESS_IN_CONTROL_PANEL', 32),
(872, '83', 'ACCESS_IN_CONTROL_PANEL', 64),
(873, '194', 'VIEW', 1),
(874, '194', 'ADD_TO_PAGE', 2),
(875, '194', 'CONFIGURATION', 4),
(876, '194', 'PERMISSIONS', 8),
(877, '194', 'PREFERENCES', 16),
(878, '194', 'ACCESS_IN_CONTROL_PANEL', 32),
(879, '186', 'ADD_TO_PAGE', 2),
(880, '186', 'CONFIGURATION', 4),
(881, '186', 'VIEW', 1),
(882, '186', 'PERMISSIONS', 8),
(883, '186', 'PREFERENCES', 16),
(884, '186', 'ACCESS_IN_CONTROL_PANEL', 32),
(885, '70', 'VIEW', 1),
(886, '70', 'ADD_TO_PAGE', 2),
(887, '70', 'CONFIGURATION', 4),
(888, '70', 'PERMISSIONS', 8),
(889, '70', 'PREFERENCES', 16),
(890, '70', 'ACCESS_IN_CONTROL_PANEL', 32),
(891, '164', 'VIEW', 1),
(892, '164', 'ADD_TO_PAGE', 2),
(893, '164', 'CONFIGURATION', 4),
(894, '164', 'PERMISSIONS', 8),
(895, '164', 'PREFERENCES', 16),
(896, '164', 'ACCESS_IN_CONTROL_PANEL', 32),
(897, '141', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(898, '141', 'CONFIGURATION', 4),
(899, '141', 'VIEW', 1),
(900, '141', 'ADD_TO_PAGE', 8),
(901, '141', 'PERMISSIONS', 16),
(902, '141', 'PREFERENCES', 32),
(903, '141', 'ACCESS_IN_CONTROL_PANEL', 64),
(904, '9', 'VIEW', 1),
(905, '9', 'ADD_TO_PAGE', 2),
(906, '9', 'CONFIGURATION', 4),
(907, '9', 'PERMISSIONS', 8),
(908, '9', 'PREFERENCES', 16),
(909, '9', 'ACCESS_IN_CONTROL_PANEL', 32),
(910, '137', 'ACCESS_IN_CONTROL_PANEL', 2),
(911, '137', 'CONFIGURATION', 4),
(912, '137', 'VIEW', 1),
(913, '137', 'PERMISSIONS', 8),
(914, '137', 'PREFERENCES', 16),
(915, '133', 'VIEW', 1),
(916, '133', 'ADD_TO_PAGE', 2),
(917, '133', 'CONFIGURATION', 4),
(918, '133', 'PERMISSIONS', 8),
(919, '133', 'PREFERENCES', 16),
(920, '133', 'ACCESS_IN_CONTROL_PANEL', 32),
(921, '116', 'VIEW', 1),
(922, '116', 'ADD_TO_PAGE', 2),
(923, '116', 'CONFIGURATION', 4),
(924, '116', 'PERMISSIONS', 8),
(925, '116', 'PREFERENCES', 16),
(926, '116', 'ACCESS_IN_CONTROL_PANEL', 32),
(927, '47', 'VIEW', 1),
(928, '47', 'ADD_TO_PAGE', 2),
(929, '47', 'CONFIGURATION', 4),
(930, '47', 'PERMISSIONS', 8),
(931, '47', 'PREFERENCES', 16),
(932, '47', 'ACCESS_IN_CONTROL_PANEL', 32),
(933, '82', 'VIEW', 1),
(934, '82', 'ADD_TO_PAGE', 2),
(935, '82', 'CONFIGURATION', 4),
(936, '82', 'PERMISSIONS', 8),
(937, '82', 'PREFERENCES', 16),
(938, '82', 'ACCESS_IN_CONTROL_PANEL', 32),
(939, '103', 'VIEW', 1),
(940, '103', 'ADD_TO_PAGE', 2),
(941, '103', 'CONFIGURATION', 4),
(942, '103', 'PERMISSIONS', 8),
(943, '103', 'PREFERENCES', 16),
(944, '103', 'ACCESS_IN_CONTROL_PANEL', 32),
(945, '151', 'ACCESS_IN_CONTROL_PANEL', 2),
(946, '151', 'CONFIGURATION', 4),
(947, '151', 'VIEW', 1),
(948, '151', 'PERMISSIONS', 8),
(949, '151', 'PREFERENCES', 16),
(950, '140', 'ACCESS_IN_CONTROL_PANEL', 2),
(951, '140', 'CONFIGURATION', 4),
(952, '140', 'VIEW', 1),
(953, '140', 'PERMISSIONS', 8),
(954, '140', 'PREFERENCES', 16),
(955, '54', 'VIEW', 1),
(956, '54', 'ADD_TO_PAGE', 2),
(957, '54', 'CONFIGURATION', 4),
(958, '54', 'PERMISSIONS', 8),
(959, '54', 'PREFERENCES', 16),
(960, '54', 'ACCESS_IN_CONTROL_PANEL', 32),
(961, '169', 'ACCESS_IN_CONTROL_PANEL', 32),
(962, '132', 'ACCESS_IN_CONTROL_PANEL', 2),
(963, '132', 'CONFIGURATION', 4),
(964, '132', 'VIEW', 1),
(965, '132', 'PERMISSIONS', 8),
(966, '132', 'PREFERENCES', 16),
(967, '34', 'ACCESS_IN_CONTROL_PANEL', 32),
(968, '61', 'VIEW', 1),
(969, '61', 'ADD_TO_PAGE', 2),
(970, '61', 'CONFIGURATION', 4),
(971, '61', 'PERMISSIONS', 8),
(972, '61', 'PREFERENCES', 16),
(973, '61', 'ACCESS_IN_CONTROL_PANEL', 32),
(974, '73', 'ADD_TO_PAGE', 2),
(975, '73', 'CONFIGURATION', 4),
(976, '73', 'VIEW', 1),
(977, '73', 'PERMISSIONS', 8),
(978, '73', 'PREFERENCES', 16),
(979, '73', 'ACCESS_IN_CONTROL_PANEL', 32),
(980, '31', 'ACCESS_IN_CONTROL_PANEL', 32),
(981, '165', 'ACCESS_IN_CONTROL_PANEL', 32),
(982, '193', 'VIEW', 1),
(983, '193', 'ADD_TO_PAGE', 2),
(984, '193', 'CONFIGURATION', 4),
(985, '193', 'PERMISSIONS', 8),
(986, '193', 'PREFERENCES', 16),
(987, '193', 'ACCESS_IN_CONTROL_PANEL', 32),
(988, '127', 'ACCESS_IN_CONTROL_PANEL', 32),
(989, '50', 'VIEW', 1),
(990, '50', 'ADD_TO_PAGE', 2),
(991, '50', 'CONFIGURATION', 4),
(992, '50', 'PERMISSIONS', 8),
(993, '50', 'PREFERENCES', 16),
(994, '50', 'ACCESS_IN_CONTROL_PANEL', 32),
(995, '192', 'VIEW', 1),
(996, '192', 'ADD_TO_PAGE', 2),
(997, '192', 'CONFIGURATION', 4),
(998, '192', 'PERMISSIONS', 8),
(999, '192', 'PREFERENCES', 16),
(1000, '192', 'ACCESS_IN_CONTROL_PANEL', 32),
(1001, '90', 'ADD_COMMUNITY', 2),
(1002, '90', 'ADD_GENERAL_ANNOUNCEMENTS', 4),
(1003, '90', 'ADD_LAYOUT_PROTOTYPE', 8),
(1004, '90', 'ADD_LAYOUT_SET_PROTOTYPE', 16),
(1005, '90', 'ADD_LICENSE', 32),
(1006, '90', 'ADD_ORGANIZATION', 64),
(1007, '90', 'ADD_PASSWORD_POLICY', 128),
(1008, '90', 'ADD_ROLE', 256),
(1009, '90', 'ADD_USER', 512),
(1010, '90', 'ADD_USER_GROUP', 1024),
(1011, '90', 'CONFIGURATION', 2048),
(1012, '90', 'EXPORT_USER', 4096),
(1013, '90', 'IMPERSONATE', 8192),
(1014, '90', 'UNLINK_LAYOUT_SET_PROTOTYPE', 16384),
(1015, '90', 'VIEW_CONTROL_PANEL', 32768),
(1016, '90', 'ADD_TO_PAGE', 65536),
(1017, '90', 'PERMISSIONS', 131072),
(1018, '90', 'PREFERENCES', 262144),
(1019, '90', 'VIEW', 1),
(1020, '90', 'ACCESS_IN_CONTROL_PANEL', 524288),
(1021, '150', 'ACCESS_IN_CONTROL_PANEL', 2),
(1022, '150', 'CONFIGURATION', 4),
(1023, '150', 'VIEW', 1),
(1024, '150', 'PERMISSIONS', 8),
(1025, '150', 'PREFERENCES', 16),
(1026, '113', 'VIEW', 1),
(1027, '113', 'ADD_TO_PAGE', 2),
(1028, '113', 'CONFIGURATION', 4),
(1029, '113', 'PERMISSIONS', 8),
(1030, '113', 'PREFERENCES', 16),
(1031, '113', 'ACCESS_IN_CONTROL_PANEL', 32),
(1032, '33', 'ACCESS_IN_CONTROL_PANEL', 64),
(1033, '2', 'ACCESS_IN_CONTROL_PANEL', 2),
(1034, '2', 'CONFIGURATION', 4),
(1035, '2', 'VIEW', 1),
(1036, '2', 'PERMISSIONS', 8),
(1037, '2', 'PREFERENCES', 16),
(1038, '191', 'VIEW', 1),
(1039, '191', 'ADD_TO_PAGE', 2),
(1040, '191', 'CONFIGURATION', 4),
(1041, '191', 'PERMISSIONS', 8),
(1042, '191', 'PREFERENCES', 16),
(1043, '191', 'ACCESS_IN_CONTROL_PANEL', 32),
(1044, '119', 'VIEW', 1),
(1045, '119', 'ADD_TO_PAGE', 2),
(1046, '119', 'CONFIGURATION', 4),
(1047, '119', 'PERMISSIONS', 8),
(1048, '119', 'PREFERENCES', 16),
(1049, '119', 'ACCESS_IN_CONTROL_PANEL', 32),
(1050, '114', 'VIEW', 1),
(1051, '114', 'ADD_TO_PAGE', 2),
(1052, '114', 'CONFIGURATION', 4),
(1053, '114', 'PERMISSIONS', 8),
(1054, '114', 'PREFERENCES', 16),
(1055, '114', 'ACCESS_IN_CONTROL_PANEL', 32),
(1056, '67', 'VIEW', 1),
(1057, '67', 'ADD_TO_PAGE', 2),
(1058, '67', 'CONFIGURATION', 4),
(1059, '67', 'PERMISSIONS', 8),
(1060, '67', 'PREFERENCES', 16),
(1061, '67', 'ACCESS_IN_CONTROL_PANEL', 32),
(1062, '110', 'ACCESS_IN_CONTROL_PANEL', 32),
(1063, '135', 'ACCESS_IN_CONTROL_PANEL', 2),
(1064, '135', 'CONFIGURATION', 4),
(1065, '135', 'VIEW', 1),
(1066, '135', 'PERMISSIONS', 8),
(1067, '135', 'PREFERENCES', 16),
(1068, '59', 'ACCESS_IN_CONTROL_PANEL', 32),
(1069, '188', 'ADD_TO_PAGE', 2),
(1070, '188', 'CONFIGURATION', 4),
(1071, '188', 'VIEW', 1),
(1072, '188', 'PERMISSIONS', 8),
(1073, '188', 'PREFERENCES', 16),
(1074, '188', 'ACCESS_IN_CONTROL_PANEL', 32),
(1075, '131', 'ACCESS_IN_CONTROL_PANEL', 2),
(1076, '131', 'CONFIGURATION', 4),
(1077, '131', 'VIEW', 1),
(1078, '131', 'PERMISSIONS', 8),
(1079, '131', 'PREFERENCES', 16),
(1080, '102', 'VIEW', 1),
(1081, '102', 'ADD_TO_PAGE', 2),
(1082, '102', 'CONFIGURATION', 4),
(1083, '102', 'PERMISSIONS', 8),
(1084, '102', 'PREFERENCES', 16),
(1085, '102', 'ACCESS_IN_CONTROL_PANEL', 32);

-- --------------------------------------------------------

--
-- Структура таблицы `ResourceBlock`
--

CREATE TABLE IF NOT EXISTS `ResourceBlock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ResourceBlockPermission`
--

CREATE TABLE IF NOT EXISTS `ResourceBlockPermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ResourcePermission`
--

CREATE TABLE IF NOT EXISTS `ResourcePermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `ResourcePermission`
--

INSERT INTO `ResourcePermission` (`resourcePermissionId`, `companyId`, `name`, `scope`, `primKey`, `roleId`, `ownerId`, `actionIds`) VALUES
(1, 20155, '2', 1, '20155', 20166, 0, 2),
(2, 20155, '140', 1, '20155', 20166, 0, 2),
(3, 20155, '158', 1, '20155', 20166, 0, 6),
(4, 20155, '153', 1, '20155', 20166, 0, 6),
(5, 20155, 'com.liferay.portal.model.Role', 4, '20162', 20166, 0, 1),
(6, 20155, 'com.liferay.portal.model.Role', 4, '20163', 20166, 0, 1),
(7, 20155, 'com.liferay.portal.model.Role', 4, '20164', 20166, 0, 1),
(8, 20155, 'com.liferay.portal.model.Role', 4, '20165', 20166, 0, 1),
(9, 20155, 'com.liferay.portal.model.Role', 4, '20166', 20166, 0, 1),
(10, 20155, 'com.liferay.portal.model.Role', 4, '20167', 20166, 0, 1),
(11, 20155, 'com.liferay.portal.model.Role', 4, '20168', 20166, 0, 1),
(12, 20155, 'com.liferay.portal.model.Role', 4, '20169', 20166, 0, 1),
(13, 20155, 'com.liferay.portal.model.Role', 4, '20170', 20166, 0, 1),
(14, 20155, 'com.liferay.portal.model.Role', 4, '20171', 20166, 0, 1),
(15, 20155, 'com.liferay.portal.model.Role', 4, '20172', 20166, 0, 1),
(16, 20155, 'com.liferay.portal.model.Layout', 4, '20176', 20164, 20159, 1023),
(17, 20155, 'com.liferay.portal.model.Layout', 4, '20176', 20171, 0, 19),
(18, 20155, 'com.liferay.portal.model.Layout', 4, '20176', 20163, 0, 1),
(19, 20155, 'com.liferay.portal.model.Layout', 4, '20185', 20164, 20159, 1023),
(20, 20155, 'com.liferay.portal.model.Layout', 4, '20185', 20171, 0, 19),
(21, 20155, 'com.liferay.portal.model.Layout', 4, '20185', 20163, 0, 1),
(22, 20155, '98', 2, '20192', 20166, 0, 1),
(23, 20155, '66', 2, '20192', 20166, 0, 1),
(24, 20155, '180', 2, '20192', 20166, 0, 1),
(25, 20155, '27', 2, '20192', 20166, 0, 1),
(26, 20155, '152', 2, '20192', 20166, 0, 1),
(27, 20155, '183', 2, '20192', 20166, 0, 1),
(28, 20155, '134', 2, '20192', 20166, 0, 1),
(29, 20155, '130', 2, '20192', 20166, 0, 1),
(30, 20155, '122', 2, '20192', 20166, 0, 1),
(31, 20155, '36', 2, '20192', 20166, 0, 1),
(32, 20155, '26', 2, '20192', 20166, 0, 1),
(33, 20155, '175', 2, '20192', 20166, 0, 1),
(34, 20155, '153', 2, '20192', 20166, 0, 1),
(35, 20155, '64', 2, '20192', 20166, 0, 1),
(36, 20155, '129', 2, '20192', 20166, 0, 1),
(37, 20155, '182', 2, '20192', 20166, 0, 1),
(38, 20155, '179', 2, '20192', 20166, 0, 1),
(39, 20155, '173', 2, '20192', 20166, 0, 1),
(40, 20155, '100', 2, '20192', 20166, 0, 1),
(41, 20155, '19', 2, '20192', 20166, 0, 1),
(42, 20155, '157', 2, '20192', 20166, 0, 1),
(43, 20155, '128', 2, '20192', 20166, 0, 1),
(44, 20155, '181', 2, '20192', 20166, 0, 1),
(45, 20155, '154', 2, '20192', 20166, 0, 1),
(46, 20155, '148', 2, '20192', 20166, 0, 1),
(47, 20155, '11', 2, '20192', 20166, 0, 1),
(48, 20155, '29', 2, '20192', 20166, 0, 1),
(49, 20155, '158', 2, '20192', 20166, 0, 1),
(50, 20155, '178', 2, '20192', 20166, 0, 1),
(51, 20155, '58', 2, '20192', 20166, 0, 1),
(52, 20155, '71', 2, '20192', 20166, 0, 1),
(53, 20155, '97', 2, '20192', 20166, 0, 1),
(54, 20155, '39', 2, '20192', 20166, 0, 1),
(55, 20155, '85', 2, '20192', 20166, 0, 1),
(56, 20155, '118', 2, '20192', 20166, 0, 1),
(57, 20155, '107', 2, '20192', 20166, 0, 1),
(58, 20155, '30', 2, '20192', 20166, 0, 1),
(59, 20155, '184', 2, '20192', 20166, 0, 1),
(60, 20155, '147', 2, '20192', 20166, 0, 1),
(61, 20155, '48', 2, '20192', 20166, 0, 1),
(62, 20155, '125', 2, '20192', 20166, 0, 1),
(63, 20155, '161', 2, '20192', 20166, 0, 1),
(64, 20155, '146', 2, '20192', 20166, 0, 1),
(65, 20155, '62', 2, '20192', 20166, 0, 1),
(66, 20155, '162', 2, '20192', 20166, 0, 1),
(67, 20155, '176', 2, '20192', 20166, 0, 1),
(68, 20155, '108', 2, '20192', 20166, 0, 1),
(69, 20155, '187', 2, '20192', 20166, 0, 1),
(70, 20155, '84', 2, '20192', 20166, 0, 1),
(71, 20155, '101', 2, '20192', 20166, 0, 1),
(72, 20155, '121', 2, '20192', 20166, 0, 1),
(73, 20155, '143', 2, '20192', 20166, 0, 1),
(74, 20155, '77', 2, '20192', 20166, 0, 1),
(75, 20155, '167', 2, '20192', 20166, 0, 1),
(76, 20155, '115', 2, '20192', 20166, 0, 1),
(77, 20155, '56', 2, '20192', 20166, 0, 1),
(78, 20155, '16', 2, '20192', 20166, 0, 1),
(79, 20155, '3', 2, '20192', 20166, 0, 1),
(80, 20155, '23', 2, '20192', 20166, 0, 1),
(81, 20155, '20', 2, '20192', 20166, 0, 1),
(82, 20155, '83', 2, '20192', 20166, 0, 1),
(83, 20155, '99', 2, '20192', 20166, 0, 1),
(84, 20155, '186', 2, '20192', 20166, 0, 1),
(85, 20155, '194', 2, '20192', 20166, 0, 1),
(86, 20155, '70', 2, '20192', 20166, 0, 1),
(87, 20155, '164', 2, '20192', 20166, 0, 1),
(88, 20155, '141', 2, '20192', 20166, 0, 1),
(89, 20155, '9', 2, '20192', 20166, 0, 1),
(90, 20155, '28', 2, '20192', 20166, 0, 1),
(91, 20155, '137', 2, '20192', 20166, 0, 1),
(92, 20155, '47', 2, '20192', 20166, 0, 1),
(93, 20155, '15', 2, '20192', 20166, 0, 1),
(94, 20155, '116', 2, '20192', 20166, 0, 1),
(95, 20155, '82', 2, '20192', 20166, 0, 1),
(96, 20155, '151', 2, '20192', 20166, 0, 1),
(97, 20155, '54', 2, '20192', 20166, 0, 1),
(98, 20155, '34', 2, '20192', 20166, 0, 1),
(99, 20155, '169', 2, '20192', 20166, 0, 1),
(100, 20155, '132', 2, '20192', 20166, 0, 1),
(101, 20155, '61', 2, '20192', 20166, 0, 1),
(102, 20155, '73', 2, '20192', 20166, 0, 1),
(103, 20155, '31', 2, '20192', 20166, 0, 1),
(104, 20155, '50', 2, '20192', 20166, 0, 1),
(105, 20155, '127', 2, '20192', 20166, 0, 1),
(106, 20155, '193', 2, '20192', 20166, 0, 1),
(107, 20155, '25', 2, '20192', 20166, 0, 1),
(108, 20155, '166', 2, '20192', 20166, 0, 1),
(109, 20155, '33', 2, '20192', 20166, 0, 1),
(110, 20155, '150', 2, '20192', 20166, 0, 1),
(111, 20155, '114', 2, '20192', 20166, 0, 1),
(112, 20155, '149', 2, '20192', 20166, 0, 1),
(113, 20155, '67', 2, '20192', 20166, 0, 1),
(114, 20155, '110', 2, '20192', 20166, 0, 1),
(115, 20155, '59', 2, '20192', 20166, 0, 1),
(116, 20155, '135', 2, '20192', 20166, 0, 1),
(117, 20155, '188', 2, '20192', 20166, 0, 1),
(118, 20155, '131', 2, '20192', 20166, 0, 1),
(119, 20155, '102', 2, '20192', 20166, 0, 1),
(120, 20155, 'com.liferay.portal.model.Layout', 2, '20192', 20166, 0, 1),
(121, 20155, 'com.liferay.portlet.blogs', 2, '20192', 20166, 0, 14),
(122, 20155, '98', 2, '20192', 20165, 0, 2),
(123, 20155, '152', 2, '20192', 20165, 0, 2),
(124, 20155, '183', 2, '20192', 20165, 0, 32),
(125, 20155, '182', 2, '20192', 20165, 0, 32),
(126, 20155, '179', 2, '20192', 20165, 0, 2),
(127, 20155, '173', 2, '20192', 20165, 0, 32),
(128, 20155, '154', 2, '20192', 20165, 0, 2),
(129, 20155, '178', 2, '20192', 20165, 0, 32),
(130, 20155, '147', 2, '20192', 20165, 0, 2),
(131, 20155, '161', 2, '20192', 20165, 0, 2),
(132, 20155, '162', 2, '20192', 20165, 0, 2),
(133, 20155, '167', 2, '20192', 20165, 0, 2),
(134, 20155, '20', 2, '20192', 20165, 0, 2),
(135, 20155, '99', 2, '20192', 20165, 0, 2),
(136, 20155, '28', 2, '20192', 20165, 0, 2),
(137, 20155, '15', 2, '20192', 20165, 0, 2),
(138, 20155, '25', 2, '20192', 20165, 0, 2),
(139, 20155, 'com.liferay.portal.model.Group', 2, '20192', 20165, 0, 8396800),
(140, 20155, 'com.liferay.portlet.asset', 2, '20192', 20165, 0, 30),
(141, 20155, 'com.liferay.portlet.blogs', 2, '20192', 20165, 0, 14),
(142, 20155, 'com.liferay.portlet.bookmarks', 2, '20192', 20165, 0, 31),
(143, 20155, 'com.liferay.portlet.documentlibrary', 2, '20192', 20165, 0, 1023),
(144, 20155, 'com.liferay.portlet.journal', 2, '20192', 20165, 0, 255),
(145, 20155, 'com.liferay.portlet.messageboards', 2, '20192', 20165, 0, 2047),
(146, 20155, 'com.liferay.portlet.polls', 2, '20192', 20165, 0, 6),
(147, 20155, 'com.liferay.portlet.wiki', 2, '20192', 20165, 0, 6),
(148, 20155, 'com.liferay.portal.model.User', 4, '20199', 20164, 20199, 31),
(149, 20155, '98', 1, '20155', 20165, 0, 4),
(150, 20155, '98', 1, '20155', 20166, 0, 4),
(151, 20155, '66', 1, '20155', 20165, 0, 2),
(152, 20155, '66', 1, '20155', 20166, 0, 2),
(153, 20155, '180', 1, '20155', 20163, 0, 2),
(154, 20155, '180', 1, '20155', 20165, 0, 2),
(155, 20155, '180', 1, '20155', 20166, 0, 2),
(156, 20155, '27', 1, '20155', 20165, 0, 2),
(157, 20155, '27', 1, '20155', 20166, 0, 2),
(158, 20155, '183', 1, '20155', 20162, 0, 2),
(159, 20155, '122', 1, '20155', 20163, 0, 8),
(160, 20155, '122', 1, '20155', 20165, 0, 8),
(161, 20155, '122', 1, '20155', 20166, 0, 8),
(162, 20155, '36', 1, '20155', 20165, 0, 4),
(163, 20155, '36', 1, '20155', 20166, 0, 4),
(164, 20155, '26', 1, '20155', 20165, 0, 2),
(165, 20155, '26', 1, '20155', 20166, 0, 2),
(166, 20155, '175', 1, '20155', 20163, 0, 2),
(167, 20155, '175', 1, '20155', 20165, 0, 2),
(168, 20155, '175', 1, '20155', 20166, 0, 2),
(169, 20155, '153', 1, '20155', 20165, 0, 4),
(170, 20155, '64', 1, '20155', 20163, 0, 2),
(171, 20155, '64', 1, '20155', 20165, 0, 2),
(172, 20155, '64', 1, '20155', 20166, 0, 2),
(173, 20155, '182', 1, '20155', 20165, 0, 2),
(174, 20155, '182', 1, '20155', 20166, 0, 2),
(175, 20155, '173', 1, '20155', 20163, 0, 2),
(176, 20155, '173', 1, '20155', 20165, 0, 2),
(177, 20155, '173', 1, '20155', 20166, 0, 2),
(178, 20155, '100', 1, '20155', 20165, 0, 2),
(179, 20155, '100', 1, '20155', 20166, 0, 2),
(180, 20155, '19', 1, '20155', 20165, 0, 2),
(181, 20155, '19', 1, '20155', 20166, 0, 2),
(182, 20155, '181', 1, '20155', 20163, 0, 2),
(183, 20155, '181', 1, '20155', 20165, 0, 2),
(184, 20155, '181', 1, '20155', 20166, 0, 2),
(185, 20155, '148', 1, '20155', 20163, 0, 2),
(186, 20155, '148', 1, '20155', 20165, 0, 2),
(187, 20155, '148', 1, '20155', 20166, 0, 2),
(188, 20155, '11', 1, '20155', 20165, 0, 2),
(189, 20155, '11', 1, '20155', 20166, 0, 2),
(190, 20155, '29', 1, '20155', 20165, 0, 2),
(191, 20155, '29', 1, '20155', 20166, 0, 2),
(192, 20155, '158', 1, '20155', 20165, 0, 4),
(193, 20155, '178', 1, '20155', 20165, 0, 4),
(194, 20155, '178', 1, '20155', 20166, 0, 4),
(195, 20155, '58', 1, '20155', 20163, 0, 2),
(196, 20155, '58', 1, '20155', 20165, 0, 2),
(197, 20155, '58', 1, '20155', 20166, 0, 2),
(198, 20155, '71', 1, '20155', 20163, 0, 2),
(199, 20155, '71', 1, '20155', 20165, 0, 2),
(200, 20155, '71', 1, '20155', 20166, 0, 2),
(201, 20155, '97', 1, '20155', 20165, 0, 2),
(202, 20155, '97', 1, '20155', 20166, 0, 2),
(203, 20155, '39', 1, '20155', 20165, 0, 2),
(204, 20155, '39', 1, '20155', 20166, 0, 2),
(205, 20155, '85', 1, '20155', 20163, 0, 2),
(206, 20155, '85', 1, '20155', 20165, 0, 2),
(207, 20155, '85', 1, '20155', 20166, 0, 2),
(208, 20155, '118', 1, '20155', 20163, 0, 2),
(209, 20155, '118', 1, '20155', 20165, 0, 2),
(210, 20155, '118', 1, '20155', 20166, 0, 2),
(211, 20155, '107', 1, '20155', 20165, 0, 2),
(212, 20155, '107', 1, '20155', 20166, 0, 2),
(213, 20155, '30', 1, '20155', 20165, 0, 2),
(214, 20155, '30', 1, '20155', 20166, 0, 2),
(215, 20155, '184', 1, '20155', 20163, 0, 2),
(216, 20155, '184', 1, '20155', 20165, 0, 2),
(217, 20155, '184', 1, '20155', 20166, 0, 2),
(218, 20155, '48', 1, '20155', 20165, 0, 2),
(219, 20155, '48', 1, '20155', 20166, 0, 2),
(220, 20155, '62', 1, '20155', 20165, 0, 2),
(221, 20155, '62', 1, '20155', 20166, 0, 2),
(222, 20155, '176', 1, '20155', 20162, 0, 2),
(223, 20155, '108', 1, '20155', 20165, 0, 2),
(224, 20155, '108', 1, '20155', 20166, 0, 2),
(225, 20155, '187', 1, '20155', 20165, 0, 2),
(226, 20155, '187', 1, '20155', 20166, 0, 2),
(227, 20155, '84', 1, '20155', 20165, 0, 4),
(228, 20155, '84', 1, '20155', 20166, 0, 4),
(229, 20155, '101', 1, '20155', 20163, 0, 4),
(230, 20155, '101', 1, '20155', 20165, 0, 4),
(231, 20155, '101', 1, '20155', 20166, 0, 4),
(232, 20155, '121', 1, '20155', 20163, 0, 2),
(233, 20155, '121', 1, '20155', 20165, 0, 2),
(234, 20155, '121', 1, '20155', 20166, 0, 2),
(235, 20155, '143', 1, '20155', 20163, 0, 2),
(236, 20155, '143', 1, '20155', 20165, 0, 2),
(237, 20155, '143', 1, '20155', 20166, 0, 2),
(238, 20155, '77', 1, '20155', 20163, 0, 2),
(239, 20155, '77', 1, '20155', 20165, 0, 2),
(240, 20155, '77', 1, '20155', 20166, 0, 2),
(241, 20155, '167', 1, '20155', 20165, 0, 4),
(242, 20155, '167', 1, '20155', 20166, 0, 4),
(243, 20155, '115', 1, '20155', 20163, 0, 2),
(244, 20155, '115', 1, '20155', 20165, 0, 2),
(245, 20155, '115', 1, '20155', 20166, 0, 2),
(246, 20155, '56', 1, '20155', 20163, 0, 2),
(247, 20155, '56', 1, '20155', 20165, 0, 2),
(248, 20155, '56', 1, '20155', 20166, 0, 2),
(249, 20155, '16', 1, '20155', 20165, 0, 8),
(250, 20155, '16', 1, '20155', 20166, 0, 8),
(251, 20155, '3', 1, '20155', 20163, 0, 2),
(252, 20155, '3', 1, '20155', 20165, 0, 2),
(253, 20155, '3', 1, '20155', 20166, 0, 2),
(254, 20155, '23', 1, '20155', 20165, 0, 2),
(255, 20155, '23', 1, '20155', 20166, 0, 2),
(256, 20155, '20', 1, '20155', 20163, 0, 8),
(257, 20155, '20', 1, '20155', 20165, 0, 8),
(258, 20155, '20', 1, '20155', 20166, 0, 8),
(259, 20155, '83', 1, '20155', 20165, 0, 4),
(260, 20155, '83', 1, '20155', 20166, 0, 4),
(261, 20155, '186', 1, '20155', 20165, 0, 2),
(262, 20155, '186', 1, '20155', 20166, 0, 2),
(263, 20155, '194', 1, '20155', 20163, 0, 2),
(264, 20155, '194', 1, '20155', 20165, 0, 2),
(265, 20155, '194', 1, '20155', 20166, 0, 2),
(266, 20155, '70', 1, '20155', 20165, 0, 2),
(267, 20155, '70', 1, '20155', 20166, 0, 2),
(268, 20155, '164', 1, '20155', 20163, 0, 2),
(269, 20155, '164', 1, '20155', 20165, 0, 2),
(270, 20155, '164', 1, '20155', 20166, 0, 2),
(271, 20155, '141', 1, '20155', 20163, 0, 8),
(272, 20155, '141', 1, '20155', 20165, 0, 8),
(273, 20155, '141', 1, '20155', 20166, 0, 8),
(274, 20155, '9', 1, '20155', 20162, 0, 2),
(275, 20155, '28', 1, '20155', 20165, 0, 4),
(276, 20155, '28', 1, '20155', 20166, 0, 4),
(277, 20155, '47', 1, '20155', 20163, 0, 2),
(278, 20155, '47', 1, '20155', 20165, 0, 2),
(279, 20155, '47', 1, '20155', 20166, 0, 2),
(280, 20155, '15', 1, '20155', 20165, 0, 4),
(281, 20155, '15', 1, '20155', 20166, 0, 4),
(282, 20155, '116', 1, '20155', 20163, 0, 2),
(283, 20155, '116', 1, '20155', 20165, 0, 2),
(284, 20155, '116', 1, '20155', 20166, 0, 2),
(285, 20155, '82', 1, '20155', 20163, 0, 2),
(286, 20155, '82', 1, '20155', 20165, 0, 2),
(287, 20155, '82', 1, '20155', 20166, 0, 2),
(288, 20155, '54', 1, '20155', 20165, 0, 2),
(289, 20155, '54', 1, '20155', 20166, 0, 2),
(290, 20155, '34', 1, '20155', 20165, 0, 2),
(291, 20155, '34', 1, '20155', 20166, 0, 2),
(292, 20155, '169', 1, '20155', 20165, 0, 2),
(293, 20155, '169', 1, '20155', 20166, 0, 2),
(294, 20155, '61', 1, '20155', 20165, 0, 2),
(295, 20155, '61', 1, '20155', 20166, 0, 2),
(296, 20155, '73', 1, '20155', 20163, 0, 2),
(297, 20155, '73', 1, '20155', 20165, 0, 2),
(298, 20155, '73', 1, '20155', 20166, 0, 2),
(299, 20155, '31', 1, '20155', 20163, 0, 2),
(300, 20155, '31', 1, '20155', 20165, 0, 2),
(301, 20155, '31', 1, '20155', 20166, 0, 2),
(302, 20155, '50', 1, '20155', 20163, 0, 2),
(303, 20155, '50', 1, '20155', 20165, 0, 2),
(304, 20155, '50', 1, '20155', 20166, 0, 2),
(305, 20155, '127', 1, '20155', 20162, 0, 2),
(306, 20155, '193', 1, '20155', 20163, 0, 2),
(307, 20155, '193', 1, '20155', 20165, 0, 2),
(308, 20155, '193', 1, '20155', 20166, 0, 2),
(309, 20155, '166', 1, '20155', 20165, 0, 4),
(310, 20155, '166', 1, '20155', 20166, 0, 4),
(311, 20155, '33', 1, '20155', 20163, 0, 4),
(312, 20155, '33', 1, '20155', 20165, 0, 4),
(313, 20155, '33', 1, '20155', 20166, 0, 4),
(314, 20155, '114', 1, '20155', 20163, 0, 2),
(315, 20155, '114', 1, '20155', 20165, 0, 2),
(316, 20155, '114', 1, '20155', 20166, 0, 2),
(317, 20155, '67', 1, '20155', 20165, 0, 2),
(318, 20155, '67', 1, '20155', 20166, 0, 2),
(319, 20155, '110', 1, '20155', 20165, 0, 2),
(320, 20155, '110', 1, '20155', 20166, 0, 2),
(321, 20155, '59', 1, '20155', 20165, 0, 2),
(322, 20155, '59', 1, '20155', 20166, 0, 2),
(323, 20155, '188', 1, '20155', 20165, 0, 2),
(324, 20155, '188', 1, '20155', 20166, 0, 2),
(325, 20155, '102', 1, '20155', 20162, 0, 2),
(326, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20304', 20164, 20159, 15),
(327, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20304', 20166, 0, 1),
(328, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20304', 20163, 0, 1),
(329, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20305', 20164, 20159, 15),
(330, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20305', 20166, 0, 1),
(331, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20305', 20163, 0, 1),
(332, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20306', 20164, 20159, 15),
(333, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20306', 20166, 0, 1),
(334, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20306', 20163, 0, 1),
(335, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20308', 20164, 20159, 15),
(336, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20308', 20166, 0, 1),
(337, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20308', 20163, 0, 1),
(338, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20307', 20164, 20159, 15),
(339, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20307', 20166, 0, 1),
(340, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20307', 20163, 0, 1),
(341, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20310', 20164, 20159, 15),
(342, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20310', 20166, 0, 1),
(343, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20310', 20163, 0, 1),
(344, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20309', 20164, 20159, 15),
(345, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20309', 20166, 0, 1),
(346, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20309', 20163, 0, 1),
(347, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20312', 20164, 20159, 15),
(348, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20312', 20166, 0, 1),
(349, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20312', 20163, 0, 1),
(350, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20311', 20164, 20159, 15),
(351, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20311', 20166, 0, 1),
(352, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20311', 20163, 0, 1),
(353, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20314', 20164, 20159, 15),
(354, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20314', 20166, 0, 1),
(355, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20314', 20163, 0, 1),
(356, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20313', 20164, 20159, 15),
(357, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20313', 20166, 0, 1),
(358, 20155, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20313', 20163, 0, 1),
(359, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20316', 20164, 20159, 15),
(360, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20316', 20166, 0, 1),
(361, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20316', 20163, 0, 1),
(362, 20155, 'com.liferay.portal.model.LayoutPrototype', 4, '20317', 20164, 20159, 15),
(363, 20155, 'com.liferay.portal.model.Layout', 4, '20321', 20164, 20159, 1023),
(364, 20155, 'com.liferay.portal.model.Layout', 4, '20321', 20171, 0, 19),
(365, 20155, 'com.liferay.portlet.asset.model.AssetVocabulary', 4, '20325', 20164, 20159, 15),
(366, 20155, '33', 4, '20321_LAYOUT_33', 20164, 0, 127),
(367, 20155, '33', 4, '20321_LAYOUT_33', 20171, 0, 1),
(368, 20155, '33', 4, '20321_LAYOUT_33', 20163, 0, 1),
(369, 20155, 'com.liferay.portlet.blogs', 4, '20318', 20164, 0, 14),
(370, 20155, '148', 4, '20321_LAYOUT_148_INSTANCE_Z7x2UdVCL6yk', 20164, 0, 63),
(371, 20155, '148', 4, '20321_LAYOUT_148_INSTANCE_Z7x2UdVCL6yk', 20171, 0, 1),
(372, 20155, '148', 4, '20321_LAYOUT_148_INSTANCE_Z7x2UdVCL6yk', 20163, 0, 1),
(373, 20155, '114', 4, '20321_LAYOUT_114', 20164, 0, 63),
(374, 20155, '114', 4, '20321_LAYOUT_114', 20171, 0, 1),
(375, 20155, '114', 4, '20321_LAYOUT_114', 20163, 0, 1),
(376, 20155, 'com.liferay.portal.model.LayoutPrototype', 4, '20329', 20164, 20159, 15),
(377, 20155, 'com.liferay.portal.model.Layout', 4, '20333', 20164, 20159, 1023),
(378, 20155, 'com.liferay.portal.model.Layout', 4, '20333', 20171, 0, 19),
(379, 20155, '141', 4, '20333_LAYOUT_141_INSTANCE_UWgfvjOeYoxa', 20164, 0, 127),
(380, 20155, '141', 4, '20333_LAYOUT_141_INSTANCE_UWgfvjOeYoxa', 20171, 0, 1),
(381, 20155, '141', 4, '20333_LAYOUT_141_INSTANCE_UWgfvjOeYoxa', 20163, 0, 1),
(382, 20155, '122', 4, '20333_LAYOUT_122_INSTANCE_V8zIyK1dYL40', 20164, 0, 127),
(383, 20155, '122', 4, '20333_LAYOUT_122_INSTANCE_V8zIyK1dYL40', 20171, 0, 1),
(384, 20155, '122', 4, '20333_LAYOUT_122_INSTANCE_V8zIyK1dYL40', 20163, 0, 1),
(385, 20155, '3', 4, '20333_LAYOUT_3', 20164, 0, 63),
(386, 20155, '3', 4, '20333_LAYOUT_3', 20171, 0, 1),
(387, 20155, '3', 4, '20333_LAYOUT_3', 20163, 0, 1),
(388, 20155, '101', 4, '20333_LAYOUT_101_INSTANCE_FMrv84eVjjtn', 20164, 0, 255),
(389, 20155, '101', 4, '20333_LAYOUT_101_INSTANCE_FMrv84eVjjtn', 20171, 0, 17),
(390, 20155, '101', 4, '20333_LAYOUT_101_INSTANCE_FMrv84eVjjtn', 20163, 0, 1),
(391, 20155, 'com.liferay.portal.model.LayoutPrototype', 4, '20339', 20164, 20159, 15),
(392, 20155, 'com.liferay.portal.model.Layout', 4, '20343', 20164, 20159, 1023),
(393, 20155, 'com.liferay.portal.model.Layout', 4, '20343', 20171, 0, 19),
(394, 20155, '36', 4, '20343_LAYOUT_36', 20164, 0, 127),
(395, 20155, '36', 4, '20343_LAYOUT_36', 20171, 0, 1),
(396, 20155, '36', 4, '20343_LAYOUT_36', 20163, 0, 1),
(397, 20155, 'com.liferay.portlet.wiki', 4, '20340', 20164, 0, 6),
(398, 20155, '122', 4, '20343_LAYOUT_122_INSTANCE_de4PlMR7uPNE', 20164, 0, 127),
(399, 20155, '122', 4, '20343_LAYOUT_122_INSTANCE_de4PlMR7uPNE', 20171, 0, 1),
(400, 20155, '122', 4, '20343_LAYOUT_122_INSTANCE_de4PlMR7uPNE', 20163, 0, 1),
(401, 20155, '141', 4, '20343_LAYOUT_141_INSTANCE_Caru28tneWmg', 20164, 0, 127),
(402, 20155, '141', 4, '20343_LAYOUT_141_INSTANCE_Caru28tneWmg', 20171, 0, 1),
(403, 20155, '141', 4, '20343_LAYOUT_141_INSTANCE_Caru28tneWmg', 20163, 0, 1),
(404, 20155, 'com.liferay.portal.model.LayoutSetPrototype', 4, '20350', 20164, 20159, 15),
(408, 20155, 'com.liferay.portal.model.Layout', 4, '20362', 20164, 20159, 1023),
(409, 20155, 'com.liferay.portal.model.Layout', 4, '20362', 20171, 0, 19),
(410, 20155, 'com.liferay.portal.model.Layout', 4, '20362', 20163, 0, 1),
(411, 20155, '19', 4, '20362_LAYOUT_19', 20164, 0, 63),
(412, 20155, '19', 4, '20362_LAYOUT_19', 20171, 0, 1),
(413, 20155, '19', 4, '20362_LAYOUT_19', 20163, 0, 1),
(414, 20155, 'com.liferay.portlet.messageboards', 4, '20351', 20164, 0, 2047),
(415, 20155, 'com.liferay.portlet.messageboards', 4, '20351', 20171, 0, 781),
(416, 20155, 'com.liferay.portlet.messageboards', 4, '20351', 20163, 0, 1),
(417, 20155, '3', 4, '20362_LAYOUT_3', 20164, 0, 63),
(418, 20155, '3', 4, '20362_LAYOUT_3', 20171, 0, 1),
(419, 20155, '3', 4, '20362_LAYOUT_3', 20163, 0, 1),
(420, 20155, '59', 4, '20362_LAYOUT_59_INSTANCE_IADuPQ9YUuqy', 20164, 0, 63),
(421, 20155, '59', 4, '20362_LAYOUT_59_INSTANCE_IADuPQ9YUuqy', 20171, 0, 1),
(422, 20155, '59', 4, '20362_LAYOUT_59_INSTANCE_IADuPQ9YUuqy', 20163, 0, 1),
(423, 20155, 'com.liferay.portlet.polls', 4, '20351', 20164, 0, 6),
(424, 20155, '180', 4, '20362_LAYOUT_180', 20164, 0, 63),
(425, 20155, '180', 4, '20362_LAYOUT_180', 20171, 0, 1),
(426, 20155, '180', 4, '20362_LAYOUT_180', 20163, 0, 1),
(427, 20155, '101', 4, '20362_LAYOUT_101_INSTANCE_MxNhOseUCVhh', 20164, 0, 255),
(428, 20155, '101', 4, '20362_LAYOUT_101_INSTANCE_MxNhOseUCVhh', 20171, 0, 17),
(429, 20155, '101', 4, '20362_LAYOUT_101_INSTANCE_MxNhOseUCVhh', 20163, 0, 1),
(430, 20155, 'com.liferay.portal.model.Layout', 4, '20370', 20164, 20159, 1023),
(431, 20155, 'com.liferay.portal.model.Layout', 4, '20370', 20171, 0, 19),
(432, 20155, 'com.liferay.portal.model.Layout', 4, '20370', 20163, 0, 1),
(433, 20155, '36', 4, '20370_LAYOUT_36', 20164, 0, 127),
(434, 20155, '36', 4, '20370_LAYOUT_36', 20171, 0, 1),
(435, 20155, '36', 4, '20370_LAYOUT_36', 20163, 0, 1),
(436, 20155, 'com.liferay.portlet.wiki', 4, '20351', 20164, 0, 6),
(437, 20155, '122', 4, '20370_LAYOUT_122_INSTANCE_rrZHdNCvCMmf', 20164, 0, 127),
(438, 20155, '122', 4, '20370_LAYOUT_122_INSTANCE_rrZHdNCvCMmf', 20171, 0, 1),
(439, 20155, '122', 4, '20370_LAYOUT_122_INSTANCE_rrZHdNCvCMmf', 20163, 0, 1),
(440, 20155, '148', 4, '20370_LAYOUT_148_INSTANCE_P8HDjeaORzwN', 20164, 0, 63),
(441, 20155, '148', 4, '20370_LAYOUT_148_INSTANCE_P8HDjeaORzwN', 20171, 0, 1),
(442, 20155, '148', 4, '20370_LAYOUT_148_INSTANCE_P8HDjeaORzwN', 20163, 0, 1),
(443, 20155, 'com.liferay.portal.model.LayoutSetPrototype', 4, '20376', 20164, 20159, 15),
(447, 20155, 'com.liferay.portal.model.Layout', 4, '20388', 20164, 20159, 1023),
(448, 20155, 'com.liferay.portal.model.Layout', 4, '20388', 20171, 0, 19),
(449, 20155, 'com.liferay.portal.model.Layout', 4, '20388', 20163, 0, 1),
(450, 20155, '116', 4, '20388_LAYOUT_116', 20164, 0, 63),
(451, 20155, '116', 4, '20388_LAYOUT_116', 20171, 0, 1),
(452, 20155, '116', 4, '20388_LAYOUT_116', 20163, 0, 1),
(453, 20155, '3', 4, '20388_LAYOUT_3', 20164, 0, 63),
(454, 20155, '3', 4, '20388_LAYOUT_3', 20171, 0, 1),
(455, 20155, '3', 4, '20388_LAYOUT_3', 20163, 0, 1),
(456, 20155, '82', 4, '20388_LAYOUT_82', 20164, 0, 63),
(457, 20155, '82', 4, '20388_LAYOUT_82', 20171, 0, 1),
(458, 20155, '82', 4, '20388_LAYOUT_82', 20163, 0, 1),
(459, 20155, '101', 4, '20388_LAYOUT_101_INSTANCE_UhRdU2e14B9C', 20164, 0, 255),
(460, 20155, '101', 4, '20388_LAYOUT_101_INSTANCE_UhRdU2e14B9C', 20171, 0, 17),
(461, 20155, '101', 4, '20388_LAYOUT_101_INSTANCE_UhRdU2e14B9C', 20163, 0, 1),
(462, 20155, 'com.liferay.portal.model.Layout', 4, '20397', 20164, 20159, 1023),
(463, 20155, 'com.liferay.portal.model.Layout', 4, '20397', 20171, 0, 19),
(464, 20155, 'com.liferay.portal.model.Layout', 4, '20397', 20163, 0, 1),
(465, 20155, '20', 4, '20397_LAYOUT_20', 20164, 0, 127),
(466, 20155, '20', 4, '20397_LAYOUT_20', 20171, 0, 1),
(467, 20155, '20', 4, '20397_LAYOUT_20', 20163, 0, 1),
(468, 20155, 'com.liferay.portlet.documentlibrary', 4, '20377', 20164, 0, 1023),
(469, 20155, 'com.liferay.portlet.documentlibrary', 4, '20377', 20171, 0, 331),
(470, 20155, 'com.liferay.portlet.documentlibrary', 4, '20377', 20163, 0, 1),
(471, 20155, '101', 4, '20397_LAYOUT_101_INSTANCE_RfNaDOVLn0Nq', 20164, 0, 255),
(472, 20155, '101', 4, '20397_LAYOUT_101_INSTANCE_RfNaDOVLn0Nq', 20171, 0, 17),
(473, 20155, '101', 4, '20397_LAYOUT_101_INSTANCE_RfNaDOVLn0Nq', 20163, 0, 1),
(474, 20155, 'com.liferay.portal.model.Layout', 4, '20405', 20164, 20159, 1023),
(475, 20155, 'com.liferay.portal.model.Layout', 4, '20405', 20171, 0, 19),
(476, 20155, 'com.liferay.portal.model.Layout', 4, '20405', 20163, 0, 1),
(477, 20155, '39', 4, '20405_LAYOUT_39_INSTANCE_LHPLsCWkeLT6', 20164, 0, 63),
(478, 20155, '39', 4, '20405_LAYOUT_39_INSTANCE_LHPLsCWkeLT6', 20171, 0, 1),
(479, 20155, '39', 4, '20405_LAYOUT_39_INSTANCE_LHPLsCWkeLT6', 20163, 0, 1),
(480, 20155, '39', 4, '20405_LAYOUT_39_INSTANCE_7SeknTsgn4p7', 20164, 0, 63),
(481, 20155, '39', 4, '20405_LAYOUT_39_INSTANCE_7SeknTsgn4p7', 20171, 0, 1),
(482, 20155, '39', 4, '20405_LAYOUT_39_INSTANCE_7SeknTsgn4p7', 20163, 0, 1),
(483, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20413', 20164, 20159, 15),
(484, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20414', 20164, 20159, 15),
(485, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20415', 20164, 20159, 15),
(486, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20416', 20164, 20159, 15),
(487, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20417', 20164, 20159, 15),
(488, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20418', 20164, 20159, 15),
(489, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20419', 20164, 20159, 15),
(490, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20421', 20164, 20159, 15),
(491, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20424', 20164, 20159, 15),
(492, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20426', 20164, 20159, 15),
(493, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20428', 20164, 20159, 15),
(494, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20430', 20164, 20159, 15),
(495, 20155, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20432', 20164, 20159, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `ResourceTypePermission`
--

CREATE TABLE IF NOT EXISTS `ResourceTypePermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Role_`
--

CREATE TABLE IF NOT EXISTS `Role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Role_`
--

INSERT INTO `Role_` (`uuid_`, `roleId`, `companyId`, `userId`, `userName`, `createDate`, `modifiedDate`, `classNameId`, `classPK`, `name`, `title`, `description`, `type_`, `subtype`) VALUES
('e7a7aa0e-8668-448a-bd1f-6a049af8a2ee', 20162, 20155, 20159, '', '2015-04-29 05:13:51', '2015-04-29 05:13:51', 20004, 20162, 'Administrator', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Administrators are super users who can do anything.</Description></root>', 1, ''),
('c928caff-f969-4637-811f-e3f7853ee657', 20163, 20155, 20159, '', '2015-04-29 05:13:51', '2015-04-29 05:13:51', 20004, 20163, 'Guest', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Unauthenticated users always have this role.</Description></root>', 1, ''),
('fbb84862-4ff0-45cc-89b6-77a7b4313b3f', 20164, 20155, 20159, '', '2015-04-29 05:13:51', '2015-04-29 05:13:51', 20004, 20164, 'Owner', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">This is an implied role with respect to the objects users create.</Description></root>', 1, ''),
('850c3413-cffc-4a2a-bcf2-2e6fe81996ff', 20165, 20155, 20159, '', '2015-04-29 05:13:51', '2015-04-29 05:13:51', 20004, 20165, 'Power User', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Power Users have their own personal site.</Description></root>', 1, ''),
('a9917750-b704-44de-9b6f-f9aac7dafdad', 20166, 20155, 20159, '', '2015-04-29 05:13:51', '2015-04-29 05:13:51', 20004, 20166, 'User', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Authenticated users should be assigned this role.</Description></root>', 1, ''),
('1308f450-d98c-4c77-a3c1-421de2c7dc57', 20167, 20155, 20159, '', '2015-04-29 05:13:52', '2015-04-29 05:13:52', 20004, 20167, 'Organization Administrator', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>', 3, ''),
('b89a2342-63e0-43d2-97c5-f3ef2a80b1cf', 20168, 20155, 20159, '', '2015-04-29 05:13:52', '2015-04-29 05:13:52', 20004, 20168, 'Organization Owner', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>', 3, ''),
('241f9e23-2c36-4437-9e4e-10cf939e6b1e', 20169, 20155, 20159, '', '2015-04-29 05:13:52', '2015-04-29 05:13:52', 20004, 20169, 'Organization User', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">All users who belong to an organization have this role within that organization.</Description></root>', 3, ''),
('22a40669-c2c6-4872-b91e-a0440e40cbe5', 20170, 20155, 20159, '', '2015-04-29 05:13:52', '2015-04-29 05:13:52', 20004, 20170, 'Site Administrator', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>', 2, ''),
('6d2450d1-3768-4a7e-acde-effc644611bd', 20171, 20155, 20159, '', '2015-04-29 05:13:52', '2015-04-29 05:13:52', 20004, 20171, 'Site Member', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">All users who belong to a site have this role within that site.</Description></root>', 2, ''),
('48e5fd33-ecbc-4cca-804b-1fbee58d0b20', 20172, 20155, 20159, '', '2015-04-29 05:13:52', '2015-04-29 05:13:52', 20004, 20172, 'Site Owner', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Site Owners are super users of their site and can assign site roles to users.</Description></root>', 2, '');

-- --------------------------------------------------------

--
-- Структура таблицы `SCFrameworkVersion`
--

CREATE TABLE IF NOT EXISTS `SCFrameworkVersion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SCFrameworkVersi_SCProductVers`
--

CREATE TABLE IF NOT EXISTS `SCFrameworkVersi_SCProductVers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SCLicense`
--

CREATE TABLE IF NOT EXISTS `SCLicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SCLicenses_SCProductEntries`
--

CREATE TABLE IF NOT EXISTS `SCLicenses_SCProductEntries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SCProductEntry`
--

CREATE TABLE IF NOT EXISTS `SCProductEntry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SCProductScreenshot`
--

CREATE TABLE IF NOT EXISTS `SCProductScreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SCProductVersion`
--

CREATE TABLE IF NOT EXISTS `SCProductVersion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ServiceComponent`
--

CREATE TABLE IF NOT EXISTS `ServiceComponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Shard`
--

CREATE TABLE IF NOT EXISTS `Shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Shard`
--

INSERT INTO `Shard` (`shardId`, `classNameId`, `classPK`, `name`) VALUES
(20156, 20025, 20155, 'default');

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingCart`
--

CREATE TABLE IF NOT EXISTS `ShoppingCart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingCategory`
--

CREATE TABLE IF NOT EXISTS `ShoppingCategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingCoupon`
--

CREATE TABLE IF NOT EXISTS `ShoppingCoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingItem`
--

CREATE TABLE IF NOT EXISTS `ShoppingItem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingItemField`
--

CREATE TABLE IF NOT EXISTS `ShoppingItemField` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingItemPrice`
--

CREATE TABLE IF NOT EXISTS `ShoppingItemPrice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingOrder`
--

CREATE TABLE IF NOT EXISTS `ShoppingOrder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `ShoppingOrderItem`
--

CREATE TABLE IF NOT EXISTS `ShoppingOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialActivity`
--

CREATE TABLE IF NOT EXISTS `SocialActivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialActivityAchievement`
--

CREATE TABLE IF NOT EXISTS `SocialActivityAchievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialActivityCounter`
--

CREATE TABLE IF NOT EXISTS `SocialActivityCounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialActivityLimit`
--

CREATE TABLE IF NOT EXISTS `SocialActivityLimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialActivitySet`
--

CREATE TABLE IF NOT EXISTS `SocialActivitySet` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialActivitySetting`
--

CREATE TABLE IF NOT EXISTS `SocialActivitySetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialRelation`
--

CREATE TABLE IF NOT EXISTS `SocialRelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SocialRequest`
--

CREATE TABLE IF NOT EXISTS `SocialRequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Subscription`
--

CREATE TABLE IF NOT EXISTS `Subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `SystemEvent`
--

CREATE TABLE IF NOT EXISTS `SystemEvent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Team`
--

CREATE TABLE IF NOT EXISTS `Team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Ticket`
--

CREATE TABLE IF NOT EXISTS `Ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `TrashEntry`
--

CREATE TABLE IF NOT EXISTS `TrashEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `TrashVersion`
--

CREATE TABLE IF NOT EXISTS `TrashVersion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserGroup`
--

CREATE TABLE IF NOT EXISTS `UserGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserGroupGroupRole`
--

CREATE TABLE IF NOT EXISTS `UserGroupGroupRole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserGroupRole`
--

CREATE TABLE IF NOT EXISTS `UserGroupRole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserGroups_Teams`
--

CREATE TABLE IF NOT EXISTS `UserGroups_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserIdMapper`
--

CREATE TABLE IF NOT EXISTS `UserIdMapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserNotificationDelivery`
--

CREATE TABLE IF NOT EXISTS `UserNotificationDelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserNotificationEvent`
--

CREATE TABLE IF NOT EXISTS `UserNotificationEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Users_Groups`
--

CREATE TABLE IF NOT EXISTS `Users_Groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Users_Groups`
--

INSERT INTO `Users_Groups` (`groupId`, `userId`) VALUES
(20182, 20199);

-- --------------------------------------------------------

--
-- Структура таблицы `Users_Orgs`
--

CREATE TABLE IF NOT EXISTS `Users_Orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Users_Roles`
--

CREATE TABLE IF NOT EXISTS `Users_Roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `Users_Roles`
--

INSERT INTO `Users_Roles` (`roleId`, `userId`) VALUES
(20162, 20199),
(20163, 20159),
(20165, 20199),
(20166, 20199);

-- --------------------------------------------------------

--
-- Структура таблицы `Users_Teams`
--

CREATE TABLE IF NOT EXISTS `Users_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Users_UserGroups`
--

CREATE TABLE IF NOT EXISTS `Users_UserGroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserTracker`
--

CREATE TABLE IF NOT EXISTS `UserTracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `UserTrackerPath`
--

CREATE TABLE IF NOT EXISTS `UserTrackerPath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `User_`
--

CREATE TABLE IF NOT EXISTS `User_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `User_`
--

INSERT INTO `User_` (`uuid_`, `userId`, `companyId`, `createDate`, `modifiedDate`, `defaultUser`, `contactId`, `password_`, `passwordEncrypted`, `passwordReset`, `passwordModifiedDate`, `digest`, `reminderQueryQuestion`, `reminderQueryAnswer`, `graceLoginCount`, `screenName`, `emailAddress`, `facebookId`, `ldapServerId`, `openId`, `portraitId`, `languageId`, `timeZoneId`, `greeting`, `comments`, `firstName`, `middleName`, `lastName`, `jobTitle`, `loginDate`, `loginIP`, `lastLoginDate`, `lastLoginIP`, `lastFailedLoginDate`, `failedLoginAttempts`, `lockout`, `lockoutDate`, `agreedToTermsOfUse`, `emailAddressVerified`, `status`) VALUES
('15dafe31-c483-450b-844d-c35f7f2e51bf', 20159, 20155, '2015-04-29 05:13:51', '2015-04-29 05:13:51', 1, 20160, 'password', 0, 0, NULL, '5533ed38b5e33c076a804bb4bca644f9,9590828507537743bc166fef8cff8748,9590828507537743bc166fef8cff8748', '', '', 0, '20159', 'default@liferay.com', 0, 0, '', 0, 'en_US', 'UTC', 'Welcome!', '', '', '', '', '', '2015-04-29 05:13:51', '', NULL, '', NULL, 0, 0, NULL, 1, 0, 0),
('7bd887b8-a7a2-447b-9fff-b9af1ad510ff', 20199, 20155, '2015-04-29 05:13:56', '2015-04-29 05:13:56', 0, 20200, 'AAAAoAAB9ADNxfSaExgkEHwJEh+8Qhxhwp7D9l7KPhXkI4Ei', 1, 0, NULL, '', '', '', 0, 'test', 'test@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test Test!', '', 'Test', '', 'Test', '', '2015-04-29 05:13:58', '', '2015-04-29 05:13:58', '', NULL, 0, 0, NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `VirtualHost`
--

CREATE TABLE IF NOT EXISTS `VirtualHost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `VirtualHost`
--

INSERT INTO `VirtualHost` (`virtualHostId`, `companyId`, `layoutSetId`, `hostname`) VALUES
(20158, 20155, 0, 'localhost');

-- --------------------------------------------------------

--
-- Структура таблицы `WebDAVProps`
--

CREATE TABLE IF NOT EXISTS `WebDAVProps` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `Website`
--

CREATE TABLE IF NOT EXISTS `Website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `WikiNode`
--

CREATE TABLE IF NOT EXISTS `WikiNode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `WikiPage`
--

CREATE TABLE IF NOT EXISTS `WikiPage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `WikiPageResource`
--

CREATE TABLE IF NOT EXISTS `WikiPageResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `WorkflowDefinitionLink`
--

CREATE TABLE IF NOT EXISTS `WorkflowDefinitionLink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `WorkflowInstanceLink`
--

CREATE TABLE IF NOT EXISTS `WorkflowInstanceLink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Account_`
--
ALTER TABLE `Account_`
  ADD PRIMARY KEY (`accountId`);

--
-- Индексы таблицы `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`addressId`), ADD KEY `IX_93D5AD4E` (`companyId`), ADD KEY `IX_ABD7DAC0` (`companyId`,`classNameId`), ADD KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`), ADD KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`), ADD KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`), ADD KEY `IX_5BC8B0D4` (`userId`), ADD KEY `IX_381E55DA` (`uuid_`), ADD KEY `IX_8FCB620E` (`uuid_`,`companyId`);

--
-- Индексы таблицы `AnnouncementsDelivery`
--
ALTER TABLE `AnnouncementsDelivery`
  ADD PRIMARY KEY (`deliveryId`), ADD UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`), ADD KEY `IX_6EDB9600` (`userId`);

--
-- Индексы таблицы `AnnouncementsEntry`
--
ALTER TABLE `AnnouncementsEntry`
  ADD PRIMARY KEY (`entryId`), ADD KEY `IX_A6EF0B81` (`classNameId`,`classPK`), ADD KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`), ADD KEY `IX_D49C2E66` (`userId`), ADD KEY `IX_1AFBDE08` (`uuid_`), ADD KEY `IX_F2949120` (`uuid_`,`companyId`);

--
-- Индексы таблицы `AnnouncementsFlag`
--
ALTER TABLE `AnnouncementsFlag`
  ADD PRIMARY KEY (`flagId`), ADD UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`), ADD KEY `IX_9C7EB9F` (`entryId`);

--
-- Индексы таблицы `AssetCategory`
--
ALTER TABLE `AssetCategory`
  ADD PRIMARY KEY (`categoryId`), ADD UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`), ADD UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`), ADD KEY `IX_E639E2F6` (`groupId`), ADD KEY `IX_C7F39FCA` (`groupId`,`name`,`vocabularyId`), ADD KEY `IX_852EA801` (`groupId`,`parentCategoryId`,`name`,`vocabularyId`), ADD KEY `IX_87603842` (`groupId`,`parentCategoryId`,`vocabularyId`), ADD KEY `IX_2008FACB` (`groupId`,`vocabularyId`), ADD KEY `IX_D61ABE08` (`name`,`vocabularyId`), ADD KEY `IX_7BB1826B` (`parentCategoryId`), ADD KEY `IX_9DDD15EA` (`parentCategoryId`,`name`), ADD KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`), ADD KEY `IX_4D37BB00` (`uuid_`), ADD KEY `IX_BBAF6928` (`uuid_`,`companyId`), ADD KEY `IX_287B1F89` (`vocabularyId`);

--
-- Индексы таблицы `AssetCategoryProperty`
--
ALTER TABLE `AssetCategoryProperty`
  ADD PRIMARY KEY (`categoryPropertyId`), ADD UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`), ADD KEY `IX_99DA856` (`categoryId`), ADD KEY `IX_8654719F` (`companyId`), ADD KEY `IX_52340033` (`companyId`,`key_`);

--
-- Индексы таблицы `AssetEntries_AssetCategories`
--
ALTER TABLE `AssetEntries_AssetCategories`
  ADD PRIMARY KEY (`categoryId`,`entryId`), ADD KEY `IX_A188F560` (`categoryId`), ADD KEY `IX_E119938A` (`entryId`);

--
-- Индексы таблицы `AssetEntries_AssetTags`
--
ALTER TABLE `AssetEntries_AssetTags`
  ADD PRIMARY KEY (`entryId`,`tagId`), ADD KEY `IX_2ED82CAD` (`entryId`), ADD KEY `IX_B2A61B55` (`tagId`);

--
-- Индексы таблицы `AssetEntry`
--
ALTER TABLE `AssetEntry`
  ADD PRIMARY KEY (`entryId`), ADD UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`), ADD KEY `IX_FC1F9C7B` (`classUuid`), ADD KEY `IX_7306C60` (`companyId`), ADD KEY `IX_75D42FF9` (`expirationDate`), ADD KEY `IX_1EBA6821` (`groupId`,`classUuid`), ADD KEY `IX_FEC4A201` (`layoutUuid`), ADD KEY `IX_2E4E3885` (`publishDate`), ADD KEY `IX_9029E15A` (`visible`);

--
-- Индексы таблицы `AssetLink`
--
ALTER TABLE `AssetLink`
  ADD PRIMARY KEY (`linkId`), ADD UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`), ADD KEY `IX_128516C8` (`entryId1`), ADD KEY `IX_56E0AB21` (`entryId1`,`entryId2`), ADD KEY `IX_14D5A20D` (`entryId1`,`type_`), ADD KEY `IX_12851A89` (`entryId2`), ADD KEY `IX_91F132C` (`entryId2`,`type_`);

--
-- Индексы таблицы `AssetTag`
--
ALTER TABLE `AssetTag`
  ADD PRIMARY KEY (`tagId`), ADD KEY `IX_7C9E46BA` (`groupId`), ADD KEY `IX_D63322F9` (`groupId`,`name`);

--
-- Индексы таблицы `AssetTagProperty`
--
ALTER TABLE `AssetTagProperty`
  ADD PRIMARY KEY (`tagPropertyId`), ADD UNIQUE KEY `IX_2C944354` (`tagId`,`key_`), ADD KEY `IX_DFF1F063` (`companyId`), ADD KEY `IX_13805BF7` (`companyId`,`key_`), ADD KEY `IX_3269E180` (`tagId`);

--
-- Индексы таблицы `AssetTagStats`
--
ALTER TABLE `AssetTagStats`
  ADD PRIMARY KEY (`tagStatsId`), ADD UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`), ADD KEY `IX_50702693` (`classNameId`), ADD KEY `IX_9464CA` (`tagId`);

--
-- Индексы таблицы `AssetVocabulary`
--
ALTER TABLE `AssetVocabulary`
  ADD PRIMARY KEY (`vocabularyId`), ADD UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`), ADD KEY `IX_B22D908C` (`companyId`), ADD KEY `IX_B6B8CA0E` (`groupId`), ADD KEY `IX_C0AAD74D` (`groupId`,`name`), ADD KEY `IX_55F58818` (`uuid_`), ADD KEY `IX_C4E6FD10` (`uuid_`,`companyId`);

--
-- Индексы таблицы `BackgroundTask`
--
ALTER TABLE `BackgroundTask`
  ADD PRIMARY KEY (`backgroundTaskId`), ADD KEY `IX_C5A6C78F` (`companyId`), ADD KEY `IX_5A09E5D1` (`groupId`), ADD KEY `IX_98CC0AAB` (`groupId`,`name`,`taskExecutorClassName`), ADD KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`), ADD KEY `IX_C71C3B7` (`groupId`,`status`), ADD KEY `IX_A73B688A` (`groupId`,`taskExecutorClassName`), ADD KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`), ADD KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`), ADD KEY `IX_C07CC7F8` (`name`), ADD KEY `IX_75638CDF` (`status`), ADD KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`);

--
-- Индексы таблицы `BlogsEntry`
--
ALTER TABLE `BlogsEntry`
  ADD PRIMARY KEY (`entryId`), ADD UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`), ADD UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`), ADD KEY `IX_72EF6041` (`companyId`), ADD KEY `IX_430D791F` (`companyId`,`displayDate`), ADD KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`), ADD KEY `IX_EB2DCE27` (`companyId`,`status`), ADD KEY `IX_8CACE77B` (`companyId`,`userId`), ADD KEY `IX_A5F57B61` (`companyId`,`userId`,`status`), ADD KEY `IX_2672F77F` (`displayDate`,`status`), ADD KEY `IX_81A50303` (`groupId`), ADD KEY `IX_621E19D` (`groupId`,`displayDate`), ADD KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`), ADD KEY `IX_1EFD8EE9` (`groupId`,`status`), ADD KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`), ADD KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`), ADD KEY `IX_49E15A23` (`groupId`,`userId`,`status`), ADD KEY `IX_69157A4D` (`uuid_`), ADD KEY `IX_5E8307BB` (`uuid_`,`companyId`);

--
-- Индексы таблицы `BlogsStatsUser`
--
ALTER TABLE `BlogsStatsUser`
  ADD PRIMARY KEY (`statsUserId`), ADD UNIQUE KEY `IX_82254C25` (`groupId`,`userId`), ADD KEY `IX_90CDA39A` (`companyId`,`entryCount`), ADD KEY `IX_43840EEB` (`groupId`), ADD KEY `IX_28C78D5C` (`groupId`,`entryCount`), ADD KEY `IX_BB51F1D9` (`userId`), ADD KEY `IX_507BA031` (`userId`,`lastPostDate`);

--
-- Индексы таблицы `BookmarksEntry`
--
ALTER TABLE `BookmarksEntry`
  ADD PRIMARY KEY (`entryId`), ADD UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`), ADD KEY `IX_1F90CA2D` (`companyId`), ADD KEY `IX_276C8C13` (`companyId`,`status`), ADD KEY `IX_5200100C` (`groupId`,`folderId`), ADD KEY `IX_146382F2` (`groupId`,`folderId`,`status`), ADD KEY `IX_416AD7D5` (`groupId`,`status`), ADD KEY `IX_C78B61AC` (`groupId`,`userId`,`folderId`,`status`), ADD KEY `IX_9D9CF70F` (`groupId`,`userId`,`status`), ADD KEY `IX_E848278F` (`resourceBlockId`), ADD KEY `IX_B670BA39` (`uuid_`), ADD KEY `IX_89BEDC4F` (`uuid_`,`companyId`);

--
-- Индексы таблицы `BookmarksFolder`
--
ALTER TABLE `BookmarksFolder`
  ADD PRIMARY KEY (`folderId`), ADD UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`), ADD KEY `IX_2ABA25D7` (`companyId`), ADD KEY `IX_C27C9DBD` (`companyId`,`status`), ADD KEY `IX_7F703619` (`groupId`), ADD KEY `IX_967799C0` (`groupId`,`parentFolderId`), ADD KEY `IX_D16018A6` (`groupId`,`parentFolderId`,`status`), ADD KEY `IX_28A49BB9` (`resourceBlockId`), ADD KEY `IX_451E7AE3` (`uuid_`), ADD KEY `IX_54F0ED65` (`uuid_`,`companyId`);

--
-- Индексы таблицы `BrowserTracker`
--
ALTER TABLE `BrowserTracker`
  ADD PRIMARY KEY (`browserTrackerId`), ADD UNIQUE KEY `IX_E7B95510` (`userId`);

--
-- Индексы таблицы `CalEvent`
--
ALTER TABLE `CalEvent`
  ADD PRIMARY KEY (`eventId`), ADD UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`), ADD KEY `IX_D6FD9496` (`companyId`), ADD KEY `IX_12EE4898` (`groupId`), ADD KEY `IX_4FDDD2BF` (`groupId`,`repeating`), ADD KEY `IX_FCD7C63D` (`groupId`,`type_`), ADD KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`), ADD KEY `IX_F6006202` (`remindBy`), ADD KEY `IX_C1AD2122` (`uuid_`), ADD KEY `IX_299639C6` (`uuid_`,`companyId`);

--
-- Индексы таблицы `ClassName_`
--
ALTER TABLE `ClassName_`
  ADD PRIMARY KEY (`classNameId`), ADD UNIQUE KEY `IX_B27A301F` (`value`);

--
-- Индексы таблицы `ClusterGroup`
--
ALTER TABLE `ClusterGroup`
  ADD PRIMARY KEY (`clusterGroupId`);

--
-- Индексы таблицы `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`companyId`), ADD UNIQUE KEY `IX_EC00543C` (`webId`), ADD KEY `IX_38EFE3FD` (`logoId`), ADD KEY `IX_12566EC2` (`mx`), ADD KEY `IX_35E3E7C6` (`system`);

--
-- Индексы таблицы `Contact_`
--
ALTER TABLE `Contact_`
  ADD PRIMARY KEY (`contactId`), ADD KEY `IX_B8C28C53` (`accountId`), ADD KEY `IX_791914FA` (`classNameId`,`classPK`), ADD KEY `IX_66D496A3` (`companyId`);

--
-- Индексы таблицы `Counter`
--
ALTER TABLE `Counter`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`countryId`), ADD UNIQUE KEY `IX_717B97E1` (`a2`), ADD UNIQUE KEY `IX_717B9BA2` (`a3`), ADD UNIQUE KEY `IX_19DA007B` (`name`), ADD KEY `IX_25D734CD` (`active_`);

--
-- Индексы таблицы `CyrusUser`
--
ALTER TABLE `CyrusUser`
  ADD PRIMARY KEY (`userId`);

--
-- Индексы таблицы `CyrusVirtual`
--
ALTER TABLE `CyrusVirtual`
  ADD PRIMARY KEY (`emailAddress`);

--
-- Индексы таблицы `DDLRecord`
--
ALTER TABLE `DDLRecord`
  ADD PRIMARY KEY (`recordId`), ADD UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`), ADD KEY `IX_6A6C1C85` (`companyId`), ADD KEY `IX_87A6B599` (`recordSetId`), ADD KEY `IX_AAC564D3` (`recordSetId`,`userId`), ADD KEY `IX_8BC2F891` (`uuid_`), ADD KEY `IX_384AB6F7` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DDLRecordSet`
--
ALTER TABLE `DDLRecordSet`
  ADD PRIMARY KEY (`recordSetId`), ADD UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`), ADD UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`), ADD KEY `IX_4FA5969F` (`groupId`), ADD KEY `IX_561E44E9` (`uuid_`), ADD KEY `IX_5938C39F` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DDLRecordVersion`
--
ALTER TABLE `DDLRecordVersion`
  ADD PRIMARY KEY (`recordVersionId`), ADD UNIQUE KEY `IX_C79E347` (`recordId`,`version`), ADD KEY `IX_2F4DDFE1` (`recordId`), ADD KEY `IX_762ADC7` (`recordId`,`status`);

--
-- Индексы таблицы `DDMContent`
--
ALTER TABLE `DDMContent`
  ADD PRIMARY KEY (`contentId`), ADD UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`), ADD KEY `IX_E3BAF436` (`companyId`), ADD KEY `IX_50BF1038` (`groupId`), ADD KEY `IX_AE4B50C2` (`uuid_`), ADD KEY `IX_3A9C0626` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DDMStorageLink`
--
ALTER TABLE `DDMStorageLink`
  ADD PRIMARY KEY (`storageLinkId`), ADD UNIQUE KEY `IX_702D1AD5` (`classPK`), ADD KEY `IX_81776090` (`structureId`), ADD KEY `IX_32A18526` (`uuid_`);

--
-- Индексы таблицы `DDMStructure`
--
ALTER TABLE `DDMStructure`
  ADD PRIMARY KEY (`structureId`), ADD UNIQUE KEY `IX_C8785130` (`groupId`,`classNameId`,`structureKey`), ADD UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`), ADD KEY `IX_31817A62` (`classNameId`), ADD KEY `IX_4FBAC092` (`companyId`,`classNameId`), ADD KEY `IX_C8419FBE` (`groupId`), ADD KEY `IX_B6ED5E50` (`groupId`,`classNameId`), ADD KEY `IX_43395316` (`groupId`,`parentStructureId`), ADD KEY `IX_657899A8` (`parentStructureId`), ADD KEY `IX_20FDE04C` (`structureKey`), ADD KEY `IX_E61809C8` (`uuid_`), ADD KEY `IX_F9FB8D60` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DDMStructureLink`
--
ALTER TABLE `DDMStructureLink`
  ADD PRIMARY KEY (`structureLinkId`), ADD UNIQUE KEY `IX_C803899D` (`classPK`), ADD KEY `IX_D43E4208` (`classNameId`), ADD KEY `IX_17692B58` (`structureId`);

--
-- Индексы таблицы `DDMTemplate`
--
ALTER TABLE `DDMTemplate`
  ADD PRIMARY KEY (`templateId`), ADD UNIQUE KEY `IX_E6DFAB84` (`groupId`,`classNameId`,`templateKey`), ADD UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`), ADD KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`), ADD KEY `IX_32F83D16` (`classPK`), ADD KEY `IX_DB24DDDD` (`groupId`), ADD KEY `IX_BD9A4A91` (`groupId`,`classNameId`), ADD KEY `IX_824ADC72` (`groupId`,`classNameId`,`classPK`), ADD KEY `IX_90800923` (`groupId`,`classNameId`,`classPK`,`type_`), ADD KEY `IX_F0C3449` (`groupId`,`classNameId`,`classPK`,`type_`,`mode_`), ADD KEY `IX_B1C33EA6` (`groupId`,`classPK`), ADD KEY `IX_33BEF579` (`language`), ADD KEY `IX_127A35B0` (`smallImageId`), ADD KEY `IX_CAE41A28` (`templateKey`), ADD KEY `IX_C4F283C8` (`type_`), ADD KEY `IX_F2A243A7` (`uuid_`), ADD KEY `IX_D4C2C221` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DLContent`
--
ALTER TABLE `DLContent`
  ADD PRIMARY KEY (`contentId`), ADD UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`), ADD KEY `IX_6A83A66A` (`companyId`,`repositoryId`), ADD KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`);

--
-- Индексы таблицы `DLFileEntry`
--
ALTER TABLE `DLFileEntry`
  ADD PRIMARY KEY (`fileEntryId`), ADD UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`), ADD UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`), ADD UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`), ADD KEY `IX_4CB1B2B4` (`companyId`), ADD KEY `IX_772ECDE7` (`fileEntryTypeId`), ADD KEY `IX_8F6C75D0` (`folderId`,`name`), ADD KEY `IX_F4AF5636` (`groupId`), ADD KEY `IX_93CF8193` (`groupId`,`folderId`), ADD KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`), ADD KEY `IX_43261870` (`groupId`,`userId`), ADD KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`), ADD KEY `IX_D9492CF6` (`mimeType`), ADD KEY `IX_1B352F4A` (`repositoryId`,`folderId`), ADD KEY `IX_64F0FE40` (`uuid_`), ADD KEY `IX_31079DE8` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DLFileEntryMetadata`
--
ALTER TABLE `DLFileEntryMetadata`
  ADD PRIMARY KEY (`fileEntryMetadataId`), ADD UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`), ADD KEY `IX_4F40FE5E` (`fileEntryId`), ADD KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`), ADD KEY `IX_F8E90438` (`fileEntryTypeId`), ADD KEY `IX_1FE9C04` (`fileVersionId`), ADD KEY `IX_D49AB5D1` (`uuid_`);

--
-- Индексы таблицы `DLFileEntryType`
--
ALTER TABLE `DLFileEntryType`
  ADD PRIMARY KEY (`fileEntryTypeId`), ADD UNIQUE KEY `IX_5B6BEF5F` (`groupId`,`fileEntryTypeKey`), ADD UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`), ADD KEY `IX_4501FD9C` (`groupId`), ADD KEY `IX_90724726` (`uuid_`), ADD KEY `IX_5B03E942` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DLFileEntryTypes_DDMStructures`
--
ALTER TABLE `DLFileEntryTypes_DDMStructures`
  ADD PRIMARY KEY (`structureId`,`fileEntryTypeId`), ADD KEY `IX_8373EC7C` (`fileEntryTypeId`), ADD KEY `IX_F147CF3F` (`structureId`);

--
-- Индексы таблицы `DLFileEntryTypes_DLFolders`
--
ALTER TABLE `DLFileEntryTypes_DLFolders`
  ADD PRIMARY KEY (`fileEntryTypeId`,`folderId`), ADD KEY `IX_5BB6AD6C` (`fileEntryTypeId`), ADD KEY `IX_6E00A2EC` (`folderId`);

--
-- Индексы таблицы `DLFileRank`
--
ALTER TABLE `DLFileRank`
  ADD PRIMARY KEY (`fileRankId`), ADD UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`), ADD KEY `IX_A65A1F8B` (`fileEntryId`), ADD KEY `IX_BAFB116E` (`groupId`,`userId`), ADD KEY `IX_4E96195B` (`groupId`,`userId`,`active_`), ADD KEY `IX_EED06670` (`userId`);

--
-- Индексы таблицы `DLFileShortcut`
--
ALTER TABLE `DLFileShortcut`
  ADD PRIMARY KEY (`fileShortcutId`), ADD UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`), ADD KEY `IX_A4BB2E58` (`companyId`), ADD KEY `IX_8571953E` (`companyId`,`status`), ADD KEY `IX_B0051937` (`groupId`,`folderId`), ADD KEY `IX_348DC3B2` (`groupId`,`folderId`,`active_`), ADD KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`), ADD KEY `IX_4B7247F6` (`toFileEntryId`), ADD KEY `IX_4831EBE4` (`uuid_`), ADD KEY `IX_29AE81C4` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DLFileVersion`
--
ALTER TABLE `DLFileVersion`
  ADD PRIMARY KEY (`fileVersionId`), ADD UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`), ADD UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`), ADD KEY `IX_F389330E` (`companyId`), ADD KEY `IX_A0A283F4` (`companyId`,`status`), ADD KEY `IX_C68DC967` (`fileEntryId`), ADD KEY `IX_D47BB14D` (`fileEntryId`,`status`), ADD KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`), ADD KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`), ADD KEY `IX_FFB3395C` (`mimeType`), ADD KEY `IX_4BFABB9A` (`uuid_`), ADD KEY `IX_95E9E44E` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DLFolder`
--
ALTER TABLE `DLFolder`
  ADD PRIMARY KEY (`folderId`), ADD UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`), ADD UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`), ADD KEY `IX_A74DB14C` (`companyId`), ADD KEY `IX_E79BE432` (`companyId`,`status`), ADD KEY `IX_F2EA1ACE` (`groupId`), ADD KEY `IX_F78286C5` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`), ADD KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`), ADD KEY `IX_49C37475` (`groupId`,`parentFolderId`), ADD KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`), ADD KEY `IX_51556082` (`parentFolderId`,`name`), ADD KEY `IX_EE29C715` (`repositoryId`), ADD KEY `IX_CBC408D8` (`uuid_`), ADD KEY `IX_DA448450` (`uuid_`,`companyId`);

--
-- Индексы таблицы `DLSyncEvent`
--
ALTER TABLE `DLSyncEvent`
  ADD PRIMARY KEY (`syncEventId`), ADD UNIQUE KEY `IX_57D82B06` (`typePK`), ADD KEY `IX_3D8E1607` (`modifiedTime`);

--
-- Индексы таблицы `EmailAddress`
--
ALTER TABLE `EmailAddress`
  ADD PRIMARY KEY (`emailAddressId`), ADD KEY `IX_1BB072CA` (`companyId`), ADD KEY `IX_49D2DEC4` (`companyId`,`classNameId`), ADD KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`), ADD KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`), ADD KEY `IX_7B43CD8` (`userId`), ADD KEY `IX_D24F3956` (`uuid_`), ADD KEY `IX_F74AB912` (`uuid_`,`companyId`);

--
-- Индексы таблицы `ExpandoColumn`
--
ALTER TABLE `ExpandoColumn`
  ADD PRIMARY KEY (`columnId`), ADD UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`), ADD KEY `IX_A8C0CBE8` (`tableId`);

--
-- Индексы таблицы `ExpandoRow`
--
ALTER TABLE `ExpandoRow`
  ADD PRIMARY KEY (`rowId_`), ADD UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`), ADD KEY `IX_49EB3118` (`classPK`), ADD KEY `IX_D3F5D7AE` (`tableId`);

--
-- Индексы таблицы `ExpandoTable`
--
ALTER TABLE `ExpandoTable`
  ADD PRIMARY KEY (`tableId`), ADD UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`), ADD KEY `IX_B5AE8A85` (`companyId`,`classNameId`);

--
-- Индексы таблицы `ExpandoValue`
--
ALTER TABLE `ExpandoValue`
  ADD PRIMARY KEY (`valueId`), ADD UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`), ADD UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`), ADD KEY `IX_B29FEF17` (`classNameId`,`classPK`), ADD KEY `IX_F7DD0987` (`columnId`), ADD KEY `IX_9112A7A0` (`rowId_`), ADD KEY `IX_F0566A77` (`tableId`), ADD KEY `IX_1BD3F4C` (`tableId`,`classPK`), ADD KEY `IX_CA9AFB7C` (`tableId`,`columnId`), ADD KEY `IX_B71E92D5` (`tableId`,`rowId_`);

--
-- Индексы таблицы `Groups_Orgs`
--
ALTER TABLE `Groups_Orgs`
  ADD PRIMARY KEY (`groupId`,`organizationId`), ADD KEY `IX_75267DCA` (`groupId`), ADD KEY `IX_6BBB7682` (`organizationId`);

--
-- Индексы таблицы `Groups_Roles`
--
ALTER TABLE `Groups_Roles`
  ADD PRIMARY KEY (`groupId`,`roleId`), ADD KEY `IX_84471FD2` (`groupId`), ADD KEY `IX_3103EF3D` (`roleId`);

--
-- Индексы таблицы `Groups_UserGroups`
--
ALTER TABLE `Groups_UserGroups`
  ADD PRIMARY KEY (`groupId`,`userGroupId`), ADD KEY `IX_31FB749A` (`groupId`), ADD KEY `IX_3B69160F` (`userGroupId`);

--
-- Индексы таблицы `Group_`
--
ALTER TABLE `Group_`
  ADD PRIMARY KEY (`groupId`), ADD UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`), ADD UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`), ADD UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`), ADD UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`), ADD UNIQUE KEY `IX_5AA68501` (`companyId`,`name`), ADD UNIQUE KEY `IX_754FBB1C` (`uuid_`,`groupId`), ADD KEY `IX_ABA5CEC2` (`companyId`), ADD KEY `IX_B584B5CC` (`companyId`,`classNameId`), ADD KEY `IX_ABE2D54` (`companyId`,`classNameId`,`parentGroupId`), ADD KEY `IX_5D75499E` (`companyId`,`parentGroupId`), ADD KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`), ADD KEY `IX_63A2AABD` (`companyId`,`site`), ADD KEY `IX_16218A38` (`liveGroupId`), ADD KEY `IX_7B590A7A` (`type_`,`active_`), ADD KEY `IX_F981514E` (`uuid_`), ADD KEY `IX_26CC761A` (`uuid_`,`companyId`);

--
-- Индексы таблицы `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`imageId`), ADD KEY `IX_6A925A4D` (`size_`);

--
-- Индексы таблицы `JournalArticle`
--
ALTER TABLE `JournalArticle`
  ADD PRIMARY KEY (`id_`), ADD UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`), ADD UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`), ADD KEY `IX_FF0E7A72` (`classNameId`,`templateId`), ADD KEY `IX_DFF98523` (`companyId`), ADD KEY `IX_323DF109` (`companyId`,`status`), ADD KEY `IX_3D070845` (`companyId`,`version`), ADD KEY `IX_E82F322B` (`companyId`,`version`,`status`), ADD KEY `IX_EA05E9E1` (`displayDate`,`status`), ADD KEY `IX_9356F865` (`groupId`), ADD KEY `IX_68C0F69C` (`groupId`,`articleId`), ADD KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`), ADD KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`), ADD KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`), ADD KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`), ADD KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`), ADD KEY `IX_5CD17502` (`groupId`,`folderId`), ADD KEY `IX_F35391E8` (`groupId`,`folderId`,`status`), ADD KEY `IX_3C028C1E` (`groupId`,`layoutUuid`), ADD KEY `IX_301D024B` (`groupId`,`status`), ADD KEY `IX_2E207659` (`groupId`,`structureId`), ADD KEY `IX_8DEAE14E` (`groupId`,`templateId`), ADD KEY `IX_22882D02` (`groupId`,`urlTitle`), ADD KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`), ADD KEY `IX_D19C1B9F` (`groupId`,`userId`), ADD KEY `IX_43A0F80F` (`groupId`,`userId`,`classNameId`), ADD KEY `IX_3F1EA19E` (`layoutUuid`), ADD KEY `IX_33F49D16` (`resourcePrimKey`), ADD KEY `IX_89FF8B06` (`resourcePrimKey`,`indexable`), ADD KEY `IX_451D63EC` (`resourcePrimKey`,`indexable`,`status`), ADD KEY `IX_3E2765FC` (`resourcePrimKey`,`status`), ADD KEY `IX_EF9B7028` (`smallImageId`), ADD KEY `IX_8E8710D9` (`structureId`), ADD KEY `IX_9106F6CE` (`templateId`), ADD KEY `IX_F029602F` (`uuid_`), ADD KEY `IX_71520099` (`uuid_`,`companyId`);

--
-- Индексы таблицы `JournalArticleImage`
--
ALTER TABLE `JournalArticleImage`
  ADD PRIMARY KEY (`articleImageId`), ADD UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`), ADD KEY `IX_3B51BB68` (`groupId`), ADD KEY `IX_158B526F` (`groupId`,`articleId`,`version`), ADD KEY `IX_D4121315` (`tempImage`);

--
-- Индексы таблицы `JournalArticleResource`
--
ALTER TABLE `JournalArticleResource`
  ADD PRIMARY KEY (`resourcePrimKey`), ADD UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`), ADD UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`), ADD KEY `IX_F8433677` (`groupId`), ADD KEY `IX_DCD1FAC1` (`uuid_`);

--
-- Индексы таблицы `JournalContentSearch`
--
ALTER TABLE `JournalContentSearch`
  ADD PRIMARY KEY (`contentSearchId`), ADD UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`), ADD KEY `IX_9207CB31` (`articleId`), ADD KEY `IX_6838E427` (`groupId`,`articleId`), ADD KEY `IX_20962903` (`groupId`,`privateLayout`), ADD KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`), ADD KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`), ADD KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`), ADD KEY `IX_8DAF8A35` (`portletId`);

--
-- Индексы таблицы `JournalFeed`
--
ALTER TABLE `JournalFeed`
  ADD PRIMARY KEY (`id_`), ADD UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`), ADD UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`), ADD KEY `IX_35A2DB2F` (`groupId`), ADD KEY `IX_50C36D79` (`uuid_`), ADD KEY `IX_CB37A10F` (`uuid_`,`companyId`);

--
-- Индексы таблицы `JournalFolder`
--
ALTER TABLE `JournalFolder`
  ADD PRIMARY KEY (`folderId`), ADD UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`), ADD UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`), ADD KEY `IX_E6E2725D` (`companyId`), ADD KEY `IX_C36B0443` (`companyId`,`status`), ADD KEY `IX_742DEC1F` (`groupId`), ADD KEY `IX_E988689E` (`groupId`,`name`), ADD KEY `IX_190483C6` (`groupId`,`parentFolderId`), ADD KEY `IX_EFD9CAC` (`groupId`,`parentFolderId`,`status`), ADD KEY `IX_63BDFA69` (`uuid_`), ADD KEY `IX_54F89E1F` (`uuid_`,`companyId`);

--
-- Индексы таблицы `Layout`
--
ALTER TABLE `Layout`
  ADD PRIMARY KEY (`plid`), ADD UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`), ADD UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`), ADD UNIQUE KEY `IX_E118C537` (`uuid_`,`groupId`,`privateLayout`), ADD KEY `IX_C7FBC998` (`companyId`), ADD KEY `IX_C099D61A` (`groupId`), ADD KEY `IX_705F5AA3` (`groupId`,`privateLayout`), ADD KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`), ADD KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`), ADD KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`), ADD KEY `IX_23922F7D` (`iconImageId`), ADD KEY `IX_B529BFD3` (`layoutPrototypeUuid`), ADD KEY `IX_39A18ECC` (`sourcePrototypeLayoutUuid`), ADD KEY `IX_D0822724` (`uuid_`), ADD KEY `IX_2CE4BE84` (`uuid_`,`companyId`);

--
-- Индексы таблицы `LayoutBranch`
--
ALTER TABLE `LayoutBranch`
  ADD PRIMARY KEY (`LayoutBranchId`), ADD UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`), ADD KEY `IX_6C226433` (`layoutSetBranchId`), ADD KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`), ADD KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`);

--
-- Индексы таблицы `LayoutFriendlyURL`
--
ALTER TABLE `LayoutFriendlyURL`
  ADD PRIMARY KEY (`layoutFriendlyURLId`), ADD UNIQUE KEY `IX_A6FC2B28` (`groupId`,`privateLayout`,`friendlyURL`,`languageId`), ADD UNIQUE KEY `IX_C5762E72` (`plid`,`languageId`), ADD UNIQUE KEY `IX_326525D6` (`uuid_`,`groupId`), ADD KEY `IX_EAB317C8` (`companyId`), ADD KEY `IX_742EF04A` (`groupId`), ADD KEY `IX_CA713461` (`groupId`,`privateLayout`,`friendlyURL`), ADD KEY `IX_83AE56AB` (`plid`), ADD KEY `IX_59051329` (`plid`,`friendlyURL`), ADD KEY `IX_9F80D54` (`uuid_`), ADD KEY `IX_F4321A54` (`uuid_`,`companyId`);

--
-- Индексы таблицы `LayoutPrototype`
--
ALTER TABLE `LayoutPrototype`
  ADD PRIMARY KEY (`layoutPrototypeId`), ADD KEY `IX_30616AAA` (`companyId`), ADD KEY `IX_557A639F` (`companyId`,`active_`), ADD KEY `IX_CEF72136` (`uuid_`), ADD KEY `IX_63ED2532` (`uuid_`,`companyId`);

--
-- Индексы таблицы `LayoutRevision`
--
ALTER TABLE `LayoutRevision`
  ADD PRIMARY KEY (`layoutRevisionId`), ADD KEY `IX_43E8286A` (`head`,`plid`), ADD KEY `IX_314B621A` (`layoutSetBranchId`), ADD KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`), ADD KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`), ADD KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`), ADD KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`), ADD KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`), ADD KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`), ADD KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`), ADD KEY `IX_9329C9D6` (`plid`), ADD KEY `IX_8EC3D2BC` (`plid`,`status`);

--
-- Индексы таблицы `LayoutSet`
--
ALTER TABLE `LayoutSet`
  ADD PRIMARY KEY (`layoutSetId`), ADD UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`), ADD KEY `IX_A40B8BEC` (`groupId`), ADD KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`);

--
-- Индексы таблицы `LayoutSetBranch`
--
ALTER TABLE `LayoutSetBranch`
  ADD PRIMARY KEY (`layoutSetBranchId`), ADD UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`), ADD KEY `IX_8FF5D6EA` (`groupId`), ADD KEY `IX_C4079FD3` (`groupId`,`privateLayout`), ADD KEY `IX_CCF0DA29` (`groupId`,`privateLayout`,`master`);

--
-- Индексы таблицы `LayoutSetPrototype`
--
ALTER TABLE `LayoutSetPrototype`
  ADD PRIMARY KEY (`layoutSetPrototypeId`), ADD KEY `IX_55F63D98` (`companyId`), ADD KEY `IX_9178FC71` (`companyId`,`active_`), ADD KEY `IX_C5D69B24` (`uuid_`), ADD KEY `IX_D9FFCA84` (`uuid_`,`companyId`);

--
-- Индексы таблицы `ListType`
--
ALTER TABLE `ListType`
  ADD PRIMARY KEY (`listTypeId`), ADD KEY `IX_2932DD37` (`type_`);

--
-- Индексы таблицы `Lock_`
--
ALTER TABLE `Lock_`
  ADD PRIMARY KEY (`lockId`), ADD UNIQUE KEY `IX_228562AD` (`className`,`key_`), ADD KEY `IX_E3F1286B` (`expirationDate`), ADD KEY `IX_13C5CD3A` (`uuid_`), ADD KEY `IX_2C418EAE` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MBBan`
--
ALTER TABLE `MBBan`
  ADD PRIMARY KEY (`banId`), ADD UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`), ADD UNIQUE KEY `IX_2A3B68F6` (`uuid_`,`groupId`), ADD KEY `IX_69951A25` (`banUserId`), ADD KEY `IX_5C3FF12A` (`groupId`), ADD KEY `IX_48814BBA` (`userId`), ADD KEY `IX_8A13C634` (`uuid_`), ADD KEY `IX_4F841574` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MBCategory`
--
ALTER TABLE `MBCategory`
  ADD PRIMARY KEY (`categoryId`), ADD UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`), ADD KEY `IX_BC735DCF` (`companyId`), ADD KEY `IX_E15A5DB5` (`companyId`,`status`), ADD KEY `IX_BB870C11` (`groupId`), ADD KEY `IX_ED292508` (`groupId`,`parentCategoryId`), ADD KEY `IX_C295DBEE` (`groupId`,`parentCategoryId`,`status`), ADD KEY `IX_DA84A9F7` (`groupId`,`status`), ADD KEY `IX_C2626EDB` (`uuid_`), ADD KEY `IX_13DF4E6D` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MBDiscussion`
--
ALTER TABLE `MBDiscussion`
  ADD PRIMARY KEY (`discussionId`), ADD UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`), ADD UNIQUE KEY `IX_B5CA2DC` (`threadId`), ADD UNIQUE KEY `IX_F7AAC799` (`uuid_`,`groupId`), ADD KEY `IX_79D0120B` (`classNameId`), ADD KEY `IX_5477D431` (`uuid_`), ADD KEY `IX_7E965757` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MBMailingList`
--
ALTER TABLE `MBMailingList`
  ADD PRIMARY KEY (`mailingListId`), ADD UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`), ADD UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`), ADD KEY `IX_BFEB984F` (`active_`), ADD KEY `IX_4115EC7A` (`uuid_`), ADD KEY `IX_FC61676E` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MBMessage`
--
ALTER TABLE `MBMessage`
  ADD PRIMARY KEY (`messageId`), ADD UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`), ADD KEY `IX_51A8D44D` (`classNameId`,`classPK`), ADD KEY `IX_F6687633` (`classNameId`,`classPK`,`status`), ADD KEY `IX_B1432D30` (`companyId`), ADD KEY `IX_1AD93C16` (`companyId`,`status`), ADD KEY `IX_5B153FB2` (`groupId`), ADD KEY `IX_1073AB9F` (`groupId`,`categoryId`), ADD KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`), ADD KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`), ADD KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`), ADD KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`), ADD KEY `IX_ED39AC98` (`groupId`,`status`), ADD KEY `IX_8EB8C5EC` (`groupId`,`userId`), ADD KEY `IX_377858D2` (`groupId`,`userId`,`status`), ADD KEY `IX_75B95071` (`threadId`), ADD KEY `IX_9D7C3B23` (`threadId`,`answer`), ADD KEY `IX_A7038CD7` (`threadId`,`parentMessageId`), ADD KEY `IX_9DC8E57` (`threadId`,`status`), ADD KEY `IX_7A040C32` (`userId`), ADD KEY `IX_59F9CE5C` (`userId`,`classNameId`), ADD KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`), ADD KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`), ADD KEY `IX_3321F142` (`userId`,`classNameId`,`status`), ADD KEY `IX_C57B16BC` (`uuid_`), ADD KEY `IX_57CA9FEC` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MBStatsUser`
--
ALTER TABLE `MBStatsUser`
  ADD PRIMARY KEY (`statsUserId`), ADD UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`), ADD KEY `IX_A00A898F` (`groupId`), ADD KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`), ADD KEY `IX_847F92B5` (`userId`);

--
-- Индексы таблицы `MBThread`
--
ALTER TABLE `MBThread`
  ADD PRIMARY KEY (`threadId`), ADD UNIQUE KEY `IX_3A200B7B` (`uuid_`,`groupId`), ADD KEY `IX_41F6DC8A` (`categoryId`,`priority`), ADD KEY `IX_95C0EA45` (`groupId`), ADD KEY `IX_9A2D11B2` (`groupId`,`categoryId`), ADD KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`), ADD KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`), ADD KEY `IX_E1E7142B` (`groupId`,`status`), ADD KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`), ADD KEY `IX_CC993ECB` (`rootMessageId`), ADD KEY `IX_7E264A0F` (`uuid_`), ADD KEY `IX_F8CA2AB9` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MBThreadFlag`
--
ALTER TABLE `MBThreadFlag`
  ADD PRIMARY KEY (`threadFlagId`), ADD UNIQUE KEY `IX_33781904` (`userId`,`threadId`), ADD UNIQUE KEY `IX_FEB0FC87` (`uuid_`,`groupId`), ADD KEY `IX_8CB0A24A` (`threadId`), ADD KEY `IX_A28004B` (`userId`), ADD KEY `IX_F36BBB83` (`uuid_`), ADD KEY `IX_DCE308C5` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MDRAction`
--
ALTER TABLE `MDRAction`
  ADD PRIMARY KEY (`actionId`), ADD UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`), ADD KEY `IX_FD90786C` (`ruleGroupInstanceId`), ADD KEY `IX_77BB5E9D` (`uuid_`), ADD KEY `IX_C58A516B` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MDRRule`
--
ALTER TABLE `MDRRule`
  ADD PRIMARY KEY (`ruleId`), ADD UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`), ADD KEY `IX_4F4293F1` (`ruleGroupId`), ADD KEY `IX_EA63B9D7` (`uuid_`), ADD KEY `IX_7DEA8DF1` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MDRRuleGroup`
--
ALTER TABLE `MDRRuleGroup`
  ADD PRIMARY KEY (`ruleGroupId`), ADD UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`), ADD KEY `IX_5849891C` (`groupId`), ADD KEY `IX_7F26B2A6` (`uuid_`), ADD KEY `IX_CC14DC2` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MDRRuleGroupInstance`
--
ALTER TABLE `MDRRuleGroupInstance`
  ADD PRIMARY KEY (`ruleGroupInstanceId`), ADD UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`), ADD UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`), ADD KEY `IX_C95A08D8` (`classNameId`,`classPK`), ADD KEY `IX_AFF28547` (`groupId`), ADD KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`), ADD KEY `IX_BF3E642B` (`ruleGroupId`), ADD KEY `IX_B6A6BD91` (`uuid_`), ADD KEY `IX_25C9D1F7` (`uuid_`,`companyId`);

--
-- Индексы таблицы `MembershipRequest`
--
ALTER TABLE `MembershipRequest`
  ADD PRIMARY KEY (`membershipRequestId`), ADD KEY `IX_8A1CC4B` (`groupId`), ADD KEY `IX_C28C72EC` (`groupId`,`statusId`), ADD KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`), ADD KEY `IX_66D70879` (`userId`);

--
-- Индексы таблицы `Organization_`
--
ALTER TABLE `Organization_`
  ADD PRIMARY KEY (`organizationId`), ADD UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`), ADD KEY `IX_834BCEB6` (`companyId`), ADD KEY `IX_418E4522` (`companyId`,`parentOrganizationId`), ADD KEY `IX_396D6B42` (`uuid_`), ADD KEY `IX_A9D85BA6` (`uuid_`,`companyId`);

--
-- Индексы таблицы `OrgGroupRole`
--
ALTER TABLE `OrgGroupRole`
  ADD PRIMARY KEY (`organizationId`,`groupId`,`roleId`), ADD KEY `IX_4A527DD3` (`groupId`), ADD KEY `IX_AB044D1C` (`roleId`);

--
-- Индексы таблицы `OrgLabor`
--
ALTER TABLE `OrgLabor`
  ADD PRIMARY KEY (`orgLaborId`), ADD KEY `IX_6AF0D434` (`organizationId`);

--
-- Индексы таблицы `PasswordPolicy`
--
ALTER TABLE `PasswordPolicy`
  ADD PRIMARY KEY (`passwordPolicyId`), ADD UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`), ADD KEY `IX_8FEE65F5` (`companyId`), ADD KEY `IX_2C1142E` (`companyId`,`defaultPolicy`), ADD KEY `IX_51437A01` (`uuid_`), ADD KEY `IX_E4D7EF87` (`uuid_`,`companyId`);

--
-- Индексы таблицы `PasswordPolicyRel`
--
ALTER TABLE `PasswordPolicyRel`
  ADD PRIMARY KEY (`passwordPolicyRelId`), ADD UNIQUE KEY `IX_C3A17327` (`classNameId`,`classPK`), ADD KEY `IX_CD25266E` (`passwordPolicyId`);

--
-- Индексы таблицы `PasswordTracker`
--
ALTER TABLE `PasswordTracker`
  ADD PRIMARY KEY (`passwordTrackerId`), ADD KEY `IX_326F75BD` (`userId`);

--
-- Индексы таблицы `Phone`
--
ALTER TABLE `Phone`
  ADD PRIMARY KEY (`phoneId`), ADD KEY `IX_9F704A14` (`companyId`), ADD KEY `IX_A2E4AFBA` (`companyId`,`classNameId`), ADD KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`), ADD KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`), ADD KEY `IX_F202B9CE` (`userId`), ADD KEY `IX_EA6245A0` (`uuid_`), ADD KEY `IX_B271FA88` (`uuid_`,`companyId`);

--
-- Индексы таблицы `PluginSetting`
--
ALTER TABLE `PluginSetting`
  ADD PRIMARY KEY (`pluginSettingId`), ADD UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`), ADD KEY `IX_B9746445` (`companyId`);

--
-- Индексы таблицы `PollsChoice`
--
ALTER TABLE `PollsChoice`
  ADD PRIMARY KEY (`choiceId`), ADD UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`), ADD UNIQUE KEY `IX_C222BD31` (`uuid_`,`groupId`), ADD KEY `IX_EC370F10` (`questionId`), ADD KEY `IX_6660B399` (`uuid_`), ADD KEY `IX_8AE746EF` (`uuid_`,`companyId`);

--
-- Индексы таблицы `PollsQuestion`
--
ALTER TABLE `PollsQuestion`
  ADD PRIMARY KEY (`questionId`), ADD UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`), ADD KEY `IX_9FF342EA` (`groupId`), ADD KEY `IX_51F087F4` (`uuid_`), ADD KEY `IX_F910BBB4` (`uuid_`,`companyId`);

--
-- Индексы таблицы `PollsVote`
--
ALTER TABLE `PollsVote`
  ADD PRIMARY KEY (`voteId`), ADD UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`), ADD UNIQUE KEY `IX_A88C673A` (`uuid_`,`groupId`), ADD KEY `IX_D5DF7B54` (`choiceId`), ADD KEY `IX_12112599` (`questionId`), ADD KEY `IX_FD32EB70` (`uuid_`), ADD KEY `IX_7D8E92B8` (`uuid_`,`companyId`);

--
-- Индексы таблицы `PortalPreferences`
--
ALTER TABLE `PortalPreferences`
  ADD PRIMARY KEY (`portalPreferencesId`), ADD KEY `IX_D1F795F1` (`ownerId`,`ownerType`);

--
-- Индексы таблицы `Portlet`
--
ALTER TABLE `Portlet`
  ADD PRIMARY KEY (`id_`), ADD UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`), ADD KEY `IX_80CC9508` (`companyId`);

--
-- Индексы таблицы `PortletItem`
--
ALTER TABLE `PortletItem`
  ADD PRIMARY KEY (`portletItemId`), ADD KEY `IX_96BDD537` (`groupId`,`classNameId`), ADD KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`), ADD KEY `IX_2C61314E` (`groupId`,`portletId`), ADD KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`), ADD KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`), ADD KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`);

--
-- Индексы таблицы `PortletPreferences`
--
ALTER TABLE `PortletPreferences`
  ADD PRIMARY KEY (`portletPreferencesId`), ADD UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`), ADD KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`), ADD KEY `IX_C9A3FCE2` (`ownerId`,`ownerType`,`portletId`), ADD KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`), ADD KEY `IX_A3B2A80C` (`ownerType`,`portletId`), ADD KEY `IX_F15C1C4F` (`plid`), ADD KEY `IX_D340DB76` (`plid`,`portletId`), ADD KEY `IX_8E6DA3A1` (`portletId`);

--
-- Индексы таблицы `QUARTZ_BLOB_TRIGGERS`
--
ALTER TABLE `QUARTZ_BLOB_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Индексы таблицы `QUARTZ_CALENDARS`
--
ALTER TABLE `QUARTZ_CALENDARS`
  ADD PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`);

--
-- Индексы таблицы `QUARTZ_CRON_TRIGGERS`
--
ALTER TABLE `QUARTZ_CRON_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Индексы таблицы `QUARTZ_FIRED_TRIGGERS`
--
ALTER TABLE `QUARTZ_FIRED_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`), ADD KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`), ADD KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`), ADD KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`), ADD KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`), ADD KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`), ADD KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`);

--
-- Индексы таблицы `QUARTZ_JOB_DETAILS`
--
ALTER TABLE `QUARTZ_JOB_DETAILS`
  ADD PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`), ADD KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`), ADD KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`);

--
-- Индексы таблицы `QUARTZ_LOCKS`
--
ALTER TABLE `QUARTZ_LOCKS`
  ADD PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`);

--
-- Индексы таблицы `QUARTZ_PAUSED_TRIGGER_GRPS`
--
ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`);

--
-- Индексы таблицы `QUARTZ_SCHEDULER_STATE`
--
ALTER TABLE `QUARTZ_SCHEDULER_STATE`
  ADD PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`);

--
-- Индексы таблицы `QUARTZ_SIMPLE_TRIGGERS`
--
ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Индексы таблицы `QUARTZ_SIMPROP_TRIGGERS`
--
ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`);

--
-- Индексы таблицы `QUARTZ_TRIGGERS`
--
ALTER TABLE `QUARTZ_TRIGGERS`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`), ADD KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`), ADD KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`), ADD KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`), ADD KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`), ADD KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`), ADD KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`), ADD KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`), ADD KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`), ADD KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`), ADD KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`), ADD KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`), ADD KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`);

--
-- Индексы таблицы `RatingsEntry`
--
ALTER TABLE `RatingsEntry`
  ADD PRIMARY KEY (`entryId`), ADD UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`), ADD KEY `IX_16184D57` (`classNameId`,`classPK`), ADD KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`);

--
-- Индексы таблицы `RatingsStats`
--
ALTER TABLE `RatingsStats`
  ADD PRIMARY KEY (`statsId`), ADD UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`);

--
-- Индексы таблицы `Region`
--
ALTER TABLE `Region`
  ADD PRIMARY KEY (`regionId`), ADD UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`), ADD KEY `IX_2D9A426F` (`active_`), ADD KEY `IX_16D87CA7` (`countryId`), ADD KEY `IX_11FB3E42` (`countryId`,`active_`);

--
-- Индексы таблицы `Release_`
--
ALTER TABLE `Release_`
  ADD PRIMARY KEY (`releaseId`), ADD UNIQUE KEY `IX_8BD6BCA7` (`servletContextName`);

--
-- Индексы таблицы `Repository`
--
ALTER TABLE `Repository`
  ADD PRIMARY KEY (`repositoryId`), ADD UNIQUE KEY `IX_60C8634C` (`groupId`,`name`,`portletId`), ADD UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`), ADD KEY `IX_5253B1FA` (`groupId`), ADD KEY `IX_74C17B04` (`uuid_`), ADD KEY `IX_F543EA4` (`uuid_`,`companyId`);

--
-- Индексы таблицы `RepositoryEntry`
--
ALTER TABLE `RepositoryEntry`
  ADD PRIMARY KEY (`repositoryEntryId`), ADD UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`), ADD UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`), ADD KEY `IX_B7034B27` (`repositoryId`), ADD KEY `IX_B9B1506` (`uuid_`), ADD KEY `IX_D3B9AF62` (`uuid_`,`companyId`);

--
-- Индексы таблицы `ResourceAction`
--
ALTER TABLE `ResourceAction`
  ADD PRIMARY KEY (`resourceActionId`), ADD UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`), ADD KEY `IX_81F2DB09` (`name`);

--
-- Индексы таблицы `ResourceBlock`
--
ALTER TABLE `ResourceBlock`
  ADD PRIMARY KEY (`resourceBlockId`), ADD UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`), ADD KEY `IX_DA30B086` (`companyId`,`groupId`,`name`), ADD KEY `IX_2D4CC782` (`companyId`,`name`);

--
-- Индексы таблицы `ResourceBlockPermission`
--
ALTER TABLE `ResourceBlockPermission`
  ADD PRIMARY KEY (`resourceBlockPermissionId`), ADD UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`), ADD KEY `IX_4AB3756` (`resourceBlockId`), ADD KEY `IX_20A2E3D9` (`roleId`);

--
-- Индексы таблицы `ResourcePermission`
--
ALTER TABLE `ResourcePermission`
  ADD PRIMARY KEY (`resourcePermissionId`), ADD UNIQUE KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`), ADD KEY `IX_60B99860` (`companyId`,`name`,`scope`), ADD KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`), ADD KEY `IX_26284944` (`companyId`,`primKey`), ADD KEY `IX_A37A0588` (`roleId`), ADD KEY `IX_F4555981` (`scope`);

--
-- Индексы таблицы `ResourceTypePermission`
--
ALTER TABLE `ResourceTypePermission`
  ADD PRIMARY KEY (`resourceTypePermissionId`), ADD UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`), ADD KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`), ADD KEY `IX_A82690E2` (`roleId`);

--
-- Индексы таблицы `Role_`
--
ALTER TABLE `Role_`
  ADD PRIMARY KEY (`roleId`), ADD UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`), ADD UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`), ADD KEY `IX_449A10B9` (`companyId`), ADD KEY `IX_F3E1C6FC` (`companyId`,`type_`), ADD KEY `IX_F436EC8E` (`name`), ADD KEY `IX_5EB4E2FB` (`subtype`), ADD KEY `IX_F92B66E6` (`type_`), ADD KEY `IX_CBE204` (`type_`,`subtype`), ADD KEY `IX_26DB26C5` (`uuid_`), ADD KEY `IX_B9FF6043` (`uuid_`,`companyId`);

--
-- Индексы таблицы `SCFrameworkVersion`
--
ALTER TABLE `SCFrameworkVersion`
  ADD PRIMARY KEY (`frameworkVersionId`), ADD KEY `IX_C98C0D78` (`companyId`), ADD KEY `IX_272991FA` (`groupId`), ADD KEY `IX_6E1764F` (`groupId`,`active_`);

--
-- Индексы таблицы `SCFrameworkVersi_SCProductVers`
--
ALTER TABLE `SCFrameworkVersi_SCProductVers`
  ADD PRIMARY KEY (`frameworkVersionId`,`productVersionId`), ADD KEY `IX_3BB93ECA` (`frameworkVersionId`), ADD KEY `IX_E8D33FF9` (`productVersionId`);

--
-- Индексы таблицы `SCLicense`
--
ALTER TABLE `SCLicense`
  ADD PRIMARY KEY (`licenseId`), ADD KEY `IX_1C841592` (`active_`), ADD KEY `IX_5327BB79` (`active_`,`recommended`);

--
-- Индексы таблицы `SCLicenses_SCProductEntries`
--
ALTER TABLE `SCLicenses_SCProductEntries`
  ADD PRIMARY KEY (`licenseId`,`productEntryId`), ADD KEY `IX_27006638` (`licenseId`), ADD KEY `IX_D7710A66` (`productEntryId`);

--
-- Индексы таблицы `SCProductEntry`
--
ALTER TABLE `SCProductEntry`
  ADD PRIMARY KEY (`productEntryId`), ADD KEY `IX_5D25244F` (`companyId`), ADD KEY `IX_72F87291` (`groupId`), ADD KEY `IX_98E6A9CB` (`groupId`,`userId`), ADD KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`);

--
-- Индексы таблицы `SCProductScreenshot`
--
ALTER TABLE `SCProductScreenshot`
  ADD PRIMARY KEY (`productScreenshotId`), ADD KEY `IX_AE8224CC` (`fullImageId`), ADD KEY `IX_467956FD` (`productEntryId`), ADD KEY `IX_DA913A55` (`productEntryId`,`priority`), ADD KEY `IX_6C572DAC` (`thumbnailId`);

--
-- Индексы таблицы `SCProductVersion`
--
ALTER TABLE `SCProductVersion`
  ADD PRIMARY KEY (`productVersionId`), ADD KEY `IX_7020130F` (`directDownloadURL`(767)), ADD KEY `IX_8377A211` (`productEntryId`);

--
-- Индексы таблицы `ServiceComponent`
--
ALTER TABLE `ServiceComponent`
  ADD PRIMARY KEY (`serviceComponentId`), ADD UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`), ADD KEY `IX_7338606F` (`buildNamespace`);

--
-- Индексы таблицы `Shard`
--
ALTER TABLE `Shard`
  ADD PRIMARY KEY (`shardId`), ADD KEY `IX_DA5F4359` (`classNameId`,`classPK`), ADD KEY `IX_941BA8C3` (`name`);

--
-- Индексы таблицы `ShoppingCart`
--
ALTER TABLE `ShoppingCart`
  ADD PRIMARY KEY (`cartId`), ADD UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`), ADD KEY `IX_C28B41DC` (`groupId`), ADD KEY `IX_54101CC8` (`userId`);

--
-- Индексы таблицы `ShoppingCategory`
--
ALTER TABLE `ShoppingCategory`
  ADD PRIMARY KEY (`categoryId`), ADD KEY `IX_5F615D3E` (`groupId`), ADD KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`);

--
-- Индексы таблицы `ShoppingCoupon`
--
ALTER TABLE `ShoppingCoupon`
  ADD PRIMARY KEY (`couponId`), ADD UNIQUE KEY `IX_DC60CFAE` (`code_`), ADD KEY `IX_3251AF16` (`groupId`);

--
-- Индексы таблицы `ShoppingItem`
--
ALTER TABLE `ShoppingItem`
  ADD PRIMARY KEY (`itemId`), ADD UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`), ADD KEY `IX_FEFE7D76` (`groupId`,`categoryId`), ADD KEY `IX_903DC750` (`largeImageId`), ADD KEY `IX_D217AB30` (`mediumImageId`), ADD KEY `IX_FF203304` (`smallImageId`);

--
-- Индексы таблицы `ShoppingItemField`
--
ALTER TABLE `ShoppingItemField`
  ADD PRIMARY KEY (`itemFieldId`), ADD KEY `IX_6D5F9B87` (`itemId`);

--
-- Индексы таблицы `ShoppingItemPrice`
--
ALTER TABLE `ShoppingItemPrice`
  ADD PRIMARY KEY (`itemPriceId`), ADD KEY `IX_EA6FD516` (`itemId`);

--
-- Индексы таблицы `ShoppingOrder`
--
ALTER TABLE `ShoppingOrder`
  ADD PRIMARY KEY (`orderId`), ADD UNIQUE KEY `IX_D7D6E87A` (`number_`), ADD KEY `IX_1D15553E` (`groupId`), ADD KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`), ADD KEY `IX_F474FD89` (`ppTxnId`);

--
-- Индексы таблицы `ShoppingOrderItem`
--
ALTER TABLE `ShoppingOrderItem`
  ADD PRIMARY KEY (`orderItemId`), ADD KEY `IX_B5F82C7A` (`orderId`);

--
-- Индексы таблицы `SocialActivity`
--
ALTER TABLE `SocialActivity`
  ADD PRIMARY KEY (`activityId`), ADD UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`), ADD KEY `IX_F542E9BC` (`activitySetId`), ADD KEY `IX_82E39A0C` (`classNameId`), ADD KEY `IX_A853C757` (`classNameId`,`classPK`), ADD KEY `IX_D0E9029E` (`classNameId`,`classPK`,`type_`), ADD KEY `IX_64B1BC66` (`companyId`), ADD KEY `IX_2A2468` (`groupId`), ADD KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`), ADD KEY `IX_1271F25F` (`mirrorActivityId`), ADD KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`), ADD KEY `IX_121CA3CB` (`receiverUserId`), ADD KEY `IX_3504B8BC` (`userId`);

--
-- Индексы таблицы `SocialActivityAchievement`
--
ALTER TABLE `SocialActivityAchievement`
  ADD PRIMARY KEY (`activityAchievementId`), ADD UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`), ADD KEY `IX_E14B1F1` (`groupId`), ADD KEY `IX_83E16F2F` (`groupId`,`firstInGroup`), ADD KEY `IX_8F6408F0` (`groupId`,`name`), ADD KEY `IX_C8FD892B` (`groupId`,`userId`), ADD KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`);

--
-- Индексы таблицы `SocialActivityCounter`
--
ALTER TABLE `SocialActivityCounter`
  ADD PRIMARY KEY (`activityCounterId`), ADD UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`), ADD UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`), ADD KEY `IX_A4B9A23B` (`classNameId`,`classPK`), ADD KEY `IX_D6666704` (`groupId`), ADD KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`);

--
-- Индексы таблицы `SocialActivityLimit`
--
ALTER TABLE `SocialActivityLimit`
  ADD PRIMARY KEY (`activityLimitId`), ADD UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`), ADD KEY `IX_B15863FA` (`classNameId`,`classPK`), ADD KEY `IX_18D4BAE5` (`groupId`), ADD KEY `IX_6F9EDE9F` (`userId`);

--
-- Индексы таблицы `SocialActivitySet`
--
ALTER TABLE `SocialActivitySet`
  ADD PRIMARY KEY (`activitySetId`), ADD KEY `IX_4460FA14` (`classNameId`,`classPK`,`type_`), ADD KEY `IX_9E13F2DE` (`groupId`), ADD KEY `IX_9BE30DDF` (`groupId`,`userId`,`classNameId`,`type_`), ADD KEY `IX_F71071BD` (`groupId`,`userId`,`type_`), ADD KEY `IX_F80C4386` (`userId`), ADD KEY `IX_62AC101A` (`userId`,`classNameId`,`classPK`,`type_`);

--
-- Индексы таблицы `SocialActivitySetting`
--
ALTER TABLE `SocialActivitySetting`
  ADD PRIMARY KEY (`activitySettingId`), ADD KEY `IX_8BE5F230` (`groupId`), ADD KEY `IX_384788CD` (`groupId`,`activityType`), ADD KEY `IX_9D22151E` (`groupId`,`classNameId`), ADD KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`), ADD KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`);

--
-- Индексы таблицы `SocialRelation`
--
ALTER TABLE `SocialRelation`
  ADD PRIMARY KEY (`relationId`), ADD UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`), ADD KEY `IX_61171E99` (`companyId`), ADD KEY `IX_95135D1C` (`companyId`,`type_`), ADD KEY `IX_C31A64C6` (`type_`), ADD KEY `IX_5A40CDCC` (`userId1`), ADD KEY `IX_4B52BE89` (`userId1`,`type_`), ADD KEY `IX_B5C9C690` (`userId1`,`userId2`), ADD KEY `IX_5A40D18D` (`userId2`), ADD KEY `IX_3F9C2FA8` (`userId2`,`type_`), ADD KEY `IX_F0CA24A5` (`uuid_`), ADD KEY `IX_5B30F663` (`uuid_`,`companyId`);

--
-- Индексы таблицы `SocialRequest`
--
ALTER TABLE `SocialRequest`
  ADD PRIMARY KEY (`requestId`), ADD UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`), ADD UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`), ADD KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`), ADD KEY `IX_A90FE5A0` (`companyId`), ADD KEY `IX_32292ED1` (`receiverUserId`), ADD KEY `IX_D9380CB7` (`receiverUserId`,`status`), ADD KEY `IX_80F7A9C2` (`userId`), ADD KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`), ADD KEY `IX_AB5906A8` (`userId`,`status`), ADD KEY `IX_49D5872C` (`uuid_`), ADD KEY `IX_8D42897C` (`uuid_`,`companyId`);

--
-- Индексы таблицы `Subscription`
--
ALTER TABLE `Subscription`
  ADD PRIMARY KEY (`subscriptionId`), ADD UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`), ADD KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`), ADD KEY `IX_54243AFD` (`userId`), ADD KEY `IX_E8F34171` (`userId`,`classNameId`);

--
-- Индексы таблицы `SystemEvent`
--
ALTER TABLE `SystemEvent`
  ADD PRIMARY KEY (`systemEventId`), ADD KEY `IX_72D73D39` (`groupId`), ADD KEY `IX_7A2F0ECE` (`groupId`,`classNameId`,`classPK`), ADD KEY `IX_FFCBB747` (`groupId`,`classNameId`,`classPK`,`type_`), ADD KEY `IX_A19C89FF` (`groupId`,`systemEventSetKey`);

--
-- Индексы таблицы `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`teamId`), ADD UNIQUE KEY `IX_143DC786` (`groupId`,`name`), ADD KEY `IX_AE6E9907` (`groupId`);

--
-- Индексы таблицы `Ticket`
--
ALTER TABLE `Ticket`
  ADD PRIMARY KEY (`ticketId`), ADD KEY `IX_B2468446` (`key_`);

--
-- Индексы таблицы `TrashEntry`
--
ALTER TABLE `TrashEntry`
  ADD PRIMARY KEY (`entryId`), ADD UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`), ADD KEY `IX_2674F2A8` (`companyId`), ADD KEY `IX_526A032A` (`groupId`), ADD KEY `IX_FC4EEA64` (`groupId`,`classNameId`), ADD KEY `IX_6CAAE2E8` (`groupId`,`createDate`);

--
-- Индексы таблицы `TrashVersion`
--
ALTER TABLE `TrashVersion`
  ADD PRIMARY KEY (`versionId`), ADD UNIQUE KEY `IX_D639348C` (`entryId`,`classNameId`,`classPK`), ADD KEY `IX_630A643B` (`classNameId`,`classPK`), ADD KEY `IX_55D44577` (`entryId`), ADD KEY `IX_72D58D37` (`entryId`,`classNameId`);

--
-- Индексы таблицы `UserGroup`
--
ALTER TABLE `UserGroup`
  ADD PRIMARY KEY (`userGroupId`), ADD UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`), ADD KEY `IX_524FEFCE` (`companyId`), ADD KEY `IX_69771487` (`companyId`,`parentUserGroupId`), ADD KEY `IX_5F1DD85A` (`uuid_`), ADD KEY `IX_72394F8E` (`uuid_`,`companyId`);

--
-- Индексы таблицы `UserGroupGroupRole`
--
ALTER TABLE `UserGroupGroupRole`
  ADD PRIMARY KEY (`userGroupId`,`groupId`,`roleId`), ADD KEY `IX_CCBE4063` (`groupId`), ADD KEY `IX_CAB0CCC8` (`groupId`,`roleId`), ADD KEY `IX_1CDF88C` (`roleId`), ADD KEY `IX_DCDED558` (`userGroupId`), ADD KEY `IX_73C52252` (`userGroupId`,`groupId`);

--
-- Индексы таблицы `UserGroupRole`
--
ALTER TABLE `UserGroupRole`
  ADD PRIMARY KEY (`userId`,`groupId`,`roleId`), ADD KEY `IX_1B988D7A` (`groupId`), ADD KEY `IX_871412DF` (`groupId`,`roleId`), ADD KEY `IX_887A2C95` (`roleId`), ADD KEY `IX_887BE56A` (`userId`), ADD KEY `IX_4D040680` (`userId`,`groupId`);

--
-- Индексы таблицы `UserGroups_Teams`
--
ALTER TABLE `UserGroups_Teams`
  ADD PRIMARY KEY (`teamId`,`userGroupId`), ADD KEY `IX_31FB0B08` (`teamId`), ADD KEY `IX_7F187E63` (`userGroupId`);

--
-- Индексы таблицы `UserIdMapper`
--
ALTER TABLE `UserIdMapper`
  ADD PRIMARY KEY (`userIdMapperId`), ADD UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`), ADD UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`), ADD KEY `IX_E60EA987` (`userId`);

--
-- Индексы таблицы `UserNotificationDelivery`
--
ALTER TABLE `UserNotificationDelivery`
  ADD PRIMARY KEY (`userNotificationDeliveryId`), ADD UNIQUE KEY `IX_8B6E3ACE` (`userId`,`portletId`,`classNameId`,`notificationType`,`deliveryType`), ADD KEY `IX_C648700A` (`userId`);

--
-- Индексы таблицы `UserNotificationEvent`
--
ALTER TABLE `UserNotificationEvent`
  ADD PRIMARY KEY (`userNotificationEventId`), ADD KEY `IX_3E5D78C4` (`userId`), ADD KEY `IX_3DBB361A` (`userId`,`archived`), ADD KEY `IX_24F1BF0` (`userId`,`delivered`), ADD KEY `IX_ECD8CFEA` (`uuid_`), ADD KEY `IX_A6BAFDFE` (`uuid_`,`companyId`);

--
-- Индексы таблицы `Users_Groups`
--
ALTER TABLE `Users_Groups`
  ADD PRIMARY KEY (`groupId`,`userId`), ADD KEY `IX_C4F9E699` (`groupId`), ADD KEY `IX_F10B6C6B` (`userId`);

--
-- Индексы таблицы `Users_Orgs`
--
ALTER TABLE `Users_Orgs`
  ADD PRIMARY KEY (`organizationId`,`userId`), ADD KEY `IX_7EF4EC0E` (`organizationId`), ADD KEY `IX_FB646CA6` (`userId`);

--
-- Индексы таблицы `Users_Roles`
--
ALTER TABLE `Users_Roles`
  ADD PRIMARY KEY (`roleId`,`userId`), ADD KEY `IX_C19E5F31` (`roleId`), ADD KEY `IX_C1A01806` (`userId`);

--
-- Индексы таблицы `Users_Teams`
--
ALTER TABLE `Users_Teams`
  ADD PRIMARY KEY (`teamId`,`userId`), ADD KEY `IX_4D06AD51` (`teamId`), ADD KEY `IX_A098EFBF` (`userId`);

--
-- Индексы таблицы `Users_UserGroups`
--
ALTER TABLE `Users_UserGroups`
  ADD PRIMARY KEY (`userId`,`userGroupId`), ADD KEY `IX_66FF2503` (`userGroupId`), ADD KEY `IX_BE8102D6` (`userId`);

--
-- Индексы таблицы `UserTracker`
--
ALTER TABLE `UserTracker`
  ADD PRIMARY KEY (`userTrackerId`), ADD KEY `IX_29BA1CF5` (`companyId`), ADD KEY `IX_46B0AE8E` (`sessionId`), ADD KEY `IX_E4EFBA8D` (`userId`);

--
-- Индексы таблицы `UserTrackerPath`
--
ALTER TABLE `UserTrackerPath`
  ADD PRIMARY KEY (`userTrackerPathId`), ADD KEY `IX_14D8BCC0` (`userTrackerId`);

--
-- Индексы таблицы `User_`
--
ALTER TABLE `User_`
  ADD PRIMARY KEY (`userId`), ADD UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`), ADD UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`), ADD UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`), ADD UNIQUE KEY `IX_5ADBE171` (`contactId`), ADD KEY `IX_3A1E834E` (`companyId`), ADD KEY `IX_740C4D0C` (`companyId`,`createDate`), ADD KEY `IX_BCFDA257` (`companyId`,`createDate`,`modifiedDate`), ADD KEY `IX_6EF03E4E` (`companyId`,`defaultUser`), ADD KEY `IX_1D731F03` (`companyId`,`facebookId`), ADD KEY `IX_EE8ABD19` (`companyId`,`modifiedDate`), ADD KEY `IX_89509087` (`companyId`,`openId`(767)), ADD KEY `IX_F6039434` (`companyId`,`status`), ADD KEY `IX_762F63C6` (`emailAddress`), ADD KEY `IX_A18034A4` (`portraitId`), ADD KEY `IX_E0422BDA` (`uuid_`), ADD KEY `IX_405CC0E` (`uuid_`,`companyId`);

--
-- Индексы таблицы `VirtualHost`
--
ALTER TABLE `VirtualHost`
  ADD PRIMARY KEY (`virtualHostId`), ADD UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`), ADD UNIQUE KEY `IX_431A3960` (`hostname`);

--
-- Индексы таблицы `WebDAVProps`
--
ALTER TABLE `WebDAVProps`
  ADD PRIMARY KEY (`webDavPropsId`), ADD UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`);

--
-- Индексы таблицы `Website`
--
ALTER TABLE `Website`
  ADD PRIMARY KEY (`websiteId`), ADD KEY `IX_96F07007` (`companyId`), ADD KEY `IX_4F0F0CA7` (`companyId`,`classNameId`), ADD KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`), ADD KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`), ADD KEY `IX_F75690BB` (`userId`), ADD KEY `IX_76F15D13` (`uuid_`), ADD KEY `IX_712BCD35` (`uuid_`,`companyId`);

--
-- Индексы таблицы `WikiNode`
--
ALTER TABLE `WikiNode`
  ADD PRIMARY KEY (`nodeId`), ADD UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`), ADD UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`), ADD KEY `IX_5D6FE3F0` (`companyId`), ADD KEY `IX_B54332D6` (`companyId`,`status`), ADD KEY `IX_B480A672` (`groupId`), ADD KEY `IX_23325358` (`groupId`,`status`), ADD KEY `IX_6C112D7C` (`uuid_`), ADD KEY `IX_E0E6D12C` (`uuid_`,`companyId`);

--
-- Индексы таблицы `WikiPage`
--
ALTER TABLE `WikiPage`
  ADD PRIMARY KEY (`pageId`), ADD UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`), ADD UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`), ADD UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`), ADD KEY `IX_A2001730` (`format`), ADD KEY `IX_16E99B0A` (`groupId`,`nodeId`,`head`), ADD KEY `IX_BA72B89A` (`groupId`,`nodeId`,`head`,`parentTitle`,`status`), ADD KEY `IX_E0092FF0` (`groupId`,`nodeId`,`head`,`status`), ADD KEY `IX_941E429C` (`groupId`,`nodeId`,`status`), ADD KEY `IX_5FF21CE6` (`groupId`,`nodeId`,`title`,`head`), ADD KEY `IX_CAA451D6` (`groupId`,`userId`,`nodeId`,`status`), ADD KEY `IX_C8A9C476` (`nodeId`), ADD KEY `IX_E7F635CA` (`nodeId`,`head`), ADD KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`), ADD KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`), ADD KEY `IX_64CCB282` (`nodeId`,`head`,`redirectTitle`), ADD KEY `IX_40F94F68` (`nodeId`,`head`,`redirectTitle`,`status`), ADD KEY `IX_432F0AB0` (`nodeId`,`head`,`status`), ADD KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`), ADD KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`), ADD KEY `IX_546F2D5C` (`nodeId`,`status`), ADD KEY `IX_997EEDD2` (`nodeId`,`title`), ADD KEY `IX_E745EA26` (`nodeId`,`title`,`head`), ADD KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`), ADD KEY `IX_85E7CC76` (`resourcePrimKey`), ADD KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`), ADD KEY `IX_E1F55FB` (`resourcePrimKey`,`nodeId`,`head`), ADD KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`), ADD KEY `IX_1725355C` (`resourcePrimKey`,`status`), ADD KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`), ADD KEY `IX_9C0E478F` (`uuid_`), ADD KEY `IX_5DC4BD39` (`uuid_`,`companyId`);

--
-- Индексы таблицы `WikiPageResource`
--
ALTER TABLE `WikiPageResource`
  ADD PRIMARY KEY (`resourcePrimKey`), ADD UNIQUE KEY `IX_21277664` (`nodeId`,`title`), ADD KEY `IX_BE898221` (`uuid_`);

--
-- Индексы таблицы `WorkflowDefinitionLink`
--
ALTER TABLE `WorkflowDefinitionLink`
  ADD PRIMARY KEY (`workflowDefinitionLinkId`), ADD KEY `IX_A8B0D276` (`companyId`), ADD KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`), ADD KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`), ADD KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`), ADD KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`);

--
-- Индексы таблицы `WorkflowInstanceLink`
--
ALTER TABLE `WorkflowInstanceLink`
  ADD PRIMARY KEY (`workflowInstanceLinkId`), ADD KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
