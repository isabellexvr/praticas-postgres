//Falha tentativa de bônus abaixo:

SELECT  schools.id, 
        schools.name AS school, 
        courses.name AS course, 
        companies.name AS company, 
        roles.name AS role 
FROM applicants 
JOIN jobs ON applicants."userId"=jobs.id 
JOIN companies ON jobs."companyId"=companies.id 
JOIN roles ON jobs."roleId"=roles.id 
JOIN educations ON applicants."userId"=educations."userId" 
JOIN schools ON educations."schoolId"=schools.id 
JOIN courses ON educations."courseId"=courses.id 
WHERE roles.name LIKE '%Software Engineer%'
AND companies.id=10 
AND jobs.active='t';