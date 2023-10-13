SELECT d.Name, d.Birthday, d.Commands, p.Genus_name, y.age_month 
FROM dogs d
LEFT JOIN youngsters y ON y.Name = d.Name
LEFT JOIN pets p ON p.Id = d.Genus_id
UNION
SELECT c.Name, c.Birthday, c.Commands, p.Genus_name, y.age_month 
FROM cats c
LEFT JOIN youngsters y ON y.Name = c.Name
LEFT JOIN pets p ON p.Id = c.Genus_id
UNION
SELECT hm.Name, hm.Birthday, hm.Commands, p.Genus_name, y.age_month 
FROM hamsters hm
LEFT JOIN youngsters y ON y.Name = hm.Name
LEFT JOIN pets p ON p.Id = hm.Genus_id
UNION
SELECT h.Name, h.Birthday, h.Commands, pa.Genus_name, y.age_month 
FROM horses h
LEFT JOIN youngsters y ON y.Name = h.Name
LEFT JOIN pack_animals pa ON pa.Id = h.Genus_id
UNION 
SELECT d.Name, d.Birthday, d.Commands, pa.Genus_name, y.age_month 
FROM donkeys d 
LEFT JOIN youngsters y ON y.Name = d.Name
LEFT JOIN pack_animals pa ON pa.Id = d.Genus_id;
