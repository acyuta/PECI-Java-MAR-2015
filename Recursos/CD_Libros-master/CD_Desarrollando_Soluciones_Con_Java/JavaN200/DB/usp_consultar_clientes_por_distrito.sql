DELIMITER $$

CREATE PROCEDURE usp_consultar_clientes_por_distrito
( distrito varchar(50) )
begin

	set distrito = concat('%',distrito,'%');

	select 
		chr_cliecodigo as codigo,
		concat(vch_cliepaterno,space(1),vch_cliematerno,',',space(1),vch_clienombre) as nombre
	from cliente
	where vch_cliedireccion like distrito;
  
end$$

DELIMITER ;