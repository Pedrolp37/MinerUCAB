CREATE OR REPLACE FUNCTION borrar_tablas() RETURNS void AS $$
DECLARE
  cur_name text;
BEGIN
  FOR cur_name IN (SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' AND table_type = 'BASE TABLE') LOOP
    EXECUTE 'DROP TABLE IF EXISTS public.' || quote_ident(cur_name) || ' CASCADE';
  END LOOP;
END;
$$ LANGUAGE plpgsql VOLATILE;

-- Llamar a la función para eliminar todas las tablas en la base de datos 'minerucab'
select borrar_tablas();