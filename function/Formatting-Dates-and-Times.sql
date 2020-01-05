-- %y 2 digit , %Y 4 digit , %m 2 digit month , %M month as string , %d day digit ,%D day as string

-- YEAR %y %Y
-- SELECT DATE_FORMAT(NOW(),'%y')
-- SELECT DATE_FORMAT(NOW(),'%Y')

-- MONTH %m %M
-- SELECT DATE_FORMAT(NOW(),'%m'),DATE_FORMAT(NOW(),'%M')

-- YEAR %y %Y and MONTH %m %M
-- SELECT DATE_FORMAT(NOW(),'%M %Y')

--  YEAR %y %Y and MONTH %m %M and day %d %D
-- SELECT DATE_FORMAT(NOW(),'%M %d %Y')

-- TIME FORMAT like date but %H hour %i minute %s second %p 
SELECT TIME_FORMAT(NOW(),'%H:%i:%s %P')