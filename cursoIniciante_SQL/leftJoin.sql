select top 10 * from clientes

select top 10 * from pedido

select * from clientes
left join pedido
on clientes.codigo = pedido.codigo;

--ou

select clientes.codigo, clientes.nome, pedido.codigo, pedido.totalPedido, pedido.codigoCliente
from clientes
left join pedido
on clientes.codigo = pedido.codigo


select nome from clientes where nome like '%ana%'

select nome from clientes where produtos = 'nome'