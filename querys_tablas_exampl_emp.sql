     SELECT 
            c.id_terc,
            cli.descripcion AS nombre_cliente,
            '02' AS id_suc,
            emp.descripcion AS nombre_empresa,
            c.id_co,
            co.descripcion AS nombre_centro_operacion,
            c.id_ccosto,
            cc.descripcion AS nombre_centro_costo,
            c.id_cargo,
            car.descripcion AS nombre_cargo,
            cli.email,
            c.fecha_ingreso,
            c.fecha_retiro,
            c.estado
        FROM public.contratos c
        INNER JOIN public.clientes cli ON c.id_terc = cli.codigo
        INNER JOIN public.cargos car ON c.id_cargo = car.codigo
        INNER JOIN public.centro_operacion co ON c.id_co = co.codigo
        INNER JOIN public.centro_costo cc ON c.id_ccosto = cc.codigo
        INNER JOIN public.empresas emp ON emp.codigo = '02'
        WHERE c.estado = 'A'
        AND cli.cli_clase = '010105'
        
        
        
        SELECT 
            c.id_terc,
            cli.descripcion AS nombre_cliente,
            '01' AS id_suc,
            emp.descripcion AS nombre_empresa,
            c.id_co,
            co.descripcion AS nombre_centro_operacion,
            c.id_ccosto,
            cc.descripcion AS nombre_centro_costo,
            c.id_cargo,
            car.descripcion AS nombre_cargo,
            cli.email,
            c.fecha_ingreso,
            c.fecha_retiro,
            c.estado
        FROM public.contratos c
        INNER JOIN public.clientes cli ON c.id_terc = cli.codigo
        INNER JOIN public.cargos car ON c.id_cargo = car.codigo
        INNER JOIN public.centro_operacion co ON c.id_co = co.codigo
        INNER JOIN public.centro_costo cc ON c.id_ccosto = cc.codigo
        INNER JOIN public.empresas emp ON emp.codigo = '01'
        WHERE c.estado = 'A'
        AND cli.cli_clase = '010105'
        
        
        SELECT 
            c.id_terc,
            cli.descripcion AS nombre_cliente,
            '01' AS id_suc,
            emp.descripcion AS nombre_empresa,
            c.id_co,
            co.descripcion AS nombre_centro_operacion,
            c.id_ccosto,
            cc.descripcion AS nombre_centro_costo,
            c.id_cargo,
            car.descripcion AS nombre_cargo,
            cli.email,
            c.fecha_ingreso,
            c.fecha_retiro,
            c.estado
        FROM public.contratos c
        INNER JOIN public.clientes cli ON c.id_terc = cli.codigo
        INNER JOIN public.cargos car ON c.id_cargo = car.codigo
        INNER JOIN public.centro_operacion co ON c.id_co = co.codigo
        INNER JOIN public.centro_costo cc ON c.id_ccosto = cc.codigo
        INNER JOIN public.empresas emp ON emp.codigo = '01'
        WHERE c.estado = 'A'
        AND cli.cli_clase = '010105'
        """
        
        SELECT 
            c.id_terc,
            ter.descripcion AS nombre_cliente,
            '02' AS id_suc,
            emp.descripcion AS nombre_empresa,
            c.id_co,
            co.descripcion AS nombre_centro_operacion,
            c.id_ccosto,
            cc.descripcion AS nombre_centro_costo,
            c.id_cargo,
            car.descripcion AS nombre_cargo,
            ter.email,
            c.fecha_ingreso,
            c.fecha_retiro,
            c.estado
        FROM public.contratos c
        INNER JOIN public.terceros ter ON c.id_terc = ter.codigo
        INNER JOIN public.cargos car ON c.id_cargo = car.codigo
        INNER JOIN public.centro_operacion co ON c.id_co = co.codigo
        INNER JOIN public.centro_costo cc ON c.id_ccosto = cc.codigo
        INNER JOIN public.empresas emp ON emp.codigo = '02'
        WHERE c.estado = 'A'
        AND c.id_cargo <> '003001'
        
        
