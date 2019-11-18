delimiter $
create function sfMascara_telefone(tel varchar(18)) returns varchar(18)
begin

	declare ddd, numero1, numero2, telefone_mascara varchar(18);
    declare qtd_numero int;
    set qtd_numero = length(tel);
	if (qtd_numero = 11) then
		set ddd = concat("(", mid(tel, 1, 2), ") ");
        set numero1 = mid(tel, 3, qtd_numero - 6);
        set numero2 = mid(tel, 8, qtd_numero);
        set telefone_mascara = concat(ddd, numero1, "-", numero2);
	else if (qtd_numero = 10) then
		set ddd = concat("(", mid(tel, 1, 2), ") ");
        set numero1 = mid(tel, 3, qtd_numero - 6);
        set numero2 = mid(tel, 7, qtd_numero);
        set telefone_mascara = concat(ddd, numero1, "-", numero2);
	else
		set telefone_mascara = "Sem telefone";
	end if;
    end if;
    
    return telefone_mascara;
    
end$