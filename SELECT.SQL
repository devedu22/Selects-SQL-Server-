SELECT pt.codigo     AS codfunc,
       pt.nome       AS NOMEFUNC,
       ev.nome       AS NOMEEVENTO,
       ev.codigo     AS CODRUBRICA,
CASE 

  WHEN ev.tipovalor = 1 THEN -1
  WHEN ev.tipovalor = 0 THEN 1
  WHEN ev.tipovalor = 2 THEN 0

 END AS TIPEVENTO,
       pc.ano,
       pc.valor,
       pc.referencia AS INDICE,

      
       pc.mes,
       pc.tipo
FROM   persona.calculostrabalhadores pc
       INNER JOIN persona.eventos ev
               ON ev.evento = pc.evento
       INNER JOIN persona.trabalhadores pt
               ON pt.trabalhador = pc.trabalhador
WHERE  pt.codigo IN ( '086' )
       AND mes IN (6)
       AND ano = 2021
       AND ev.codigo NOT IN ( '0072', '0073', '0134', '0026',
                              '0025', '0075', '0076',
                              '0044', '0045', '0046', '0047',
                              '0064', '0065', '0077', '0135' )

   
       

order by mes,tipevento