select * from pessoa p join hobby b 
on p.id = b.id_pessoa

select * from  hobby b right join pessoa p
on p.id = b.id_pessoa

select * from pessoa p full join hobby b 
on p.id = b.id_pessoa