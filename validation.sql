
DECLARE
  
   hplocalobjid      ngmssintegration.object_xref.local_object_id%TYPE
                                                                   := ;
   business_entity   ngmssintegration.object_xref.business_entity%TYPE  := '';

BEGIN
   INSERT INTO ngmssintegration.object_xref
               (object_xref_id, object_state,
                global_object_id,
                local_object_id, bus_system_id, business_entity,
                created_user, created_date, created_system_user,
                created_system_date, last_update_system_user,
                last_update_system_date
               )
        VALUES (ngmssintegration.object_xref_id_seq.NEXTVAL, 'Active',
                ngmssintegration.global_object_id_xref.NEXTVAL,
                hplocalobjid, 18, business_entity,
                'NGMSSIntegration', SYSDATE, 'NGMSSIntegration',
                SYSDATE, 'NGMSSIntegration',
                SYSDATE
               );

   INSERT INTO ngmssintegration.object_xref
               (object_xref_id, object_state,
                global_object_id, local_object_id,
                bus_system_id, business_entity, created_user, created_date,
                created_system_user, created_system_date,
                last_update_system_user, last_update_system_date
               )
        VALUES (ngmssintegration.object_xref_id_seq.NEXTVAL, 'Active',
                ngmssintegration.global_object_id_xref.CURRVAL, nglocalobjid,
                40, business_entity, 'NGMSSIntegration', SYSDATE,
                'NGMSSIntegration', SYSDATE,
                'NGMSSIntegration', SYSDATE
               );
END;
/
