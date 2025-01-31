DELIMITER /
--
-- Copyright 2005-2014 The Kuali Foundation
--
-- Licensed under the Educational Community License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.opensource.org/licenses/ecl2.php
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

--
-- KULRICE-6916 KRIM_ENTITY_CACHE_T.PRSN_NM is too small
--

ALTER TABLE `krim_entity_cache_t`
CHANGE COLUMN `PRSN_NM` `PRSN_NM` VARCHAR(255)
CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL
/
DELIMITER ;
