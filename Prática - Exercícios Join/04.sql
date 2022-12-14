SELECT  users.id,
         users.name, 
         roles.name AS role, 
         companies.name AS companie, 
         experiences."startDate", 
         experiences."endDate" 
FROM users 
JOIN experiences ON users.id=experiences."userId" 
JOIN roles ON experiences."roleId"=roles.id 
JOIN companies ON experiences."companyId"=companies.id 
WHERE users.id=50 
AND experiences."endDate" IS NOT NULL;