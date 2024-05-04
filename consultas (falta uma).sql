select
	m.nome,
	t.marca,
	t.anofab
from 
	motorista m
	join taxi t 
		on t.placa = m.placa
	where 
		t.anofab > 2018
		
------------------------------

select 
	m.nome as Taxista,
	concat(t.marca, ' - ', t.modelo) as carro,
	cl.nome as cliente,
	c.datapedido
from 
	motorista m 
	join taxi t 
		on t.placa = m.placa
	join corrida c 
		on c.placa = t.placa
	join cliente cl
		on cl.cliid = c.cliid
		

-----------------

select 
	cl.nome as passageiro,
	f.zona as "localização",
	c.datapedido as "Data do Pedido"
from 
	fila f
	join motorista m
		on m.cnh = f.cnh
	join taxi t
		on t.placa = m.placa
	join corrida c
		on c.placa = t.placa
	join cliente cl
		on cl.cliid = c.cliid
order by c.datapedido desc

-----------------------------


select 
	m.nome as taxista,
	concat(t.marca, t.modelo, ' - ano ', t.anofab) as taxi,
	cl.nome as passageiro,
	f.zona as "localização",
	c.datapedido
from 
	taxi t
	join motorista m 
		on m.placa = t.placa
	join corrida c
		on c.placa = t.placa
	join cliente cl
		on cl.cliid = c.cliid
	join fila f
		on f.cnh = m.cnh
where 
	extract(month from c.datapedido) = 12 and
	extract(day from c.datapedido) = 25




























