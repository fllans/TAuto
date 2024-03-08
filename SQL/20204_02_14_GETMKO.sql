create or alter procedure GETMKO (
    DEFINITIONALDOMAIN smallint,
    WHEREID integer)
returns (
    ID integer,
    RECEIVERCARDID integer,
    RNAME varchar(255),
    RDISK varchar(255),
    RECEIVERFIELD varchar(255),
    RPOU varchar(255),
    RPOUID integer,
    RRESOURCE varchar(255),
    RRESOURCEID integer,
    RRESOURCENUMBER integer,
    RCONTROLLER varchar(255),
    RCONTROLLERID integer,
    RGATEWAY varchar(255),
    RGATEWAYID integer,
    SOURCECARDID integer,
    SNAME varchar(255),
    SDISK varchar(255),
    SOURCEFIELD varchar(255),
    SPOU varchar(255),
    SPOUID integer,
    SRESOURCE varchar(255),
    SRESOURCEID integer,
    SRESOURCENUMBER integer,
    SCONTROLLER varchar(255),
    SCONTROLLERID integer,
    SGATEWAY varchar(255),
    SGATEWAYID integer,
    TNAME varchar(255),
    OBJTYPEID integer,
    TUNERCARDID integer,
    SCN integer,
    VER integer,
    MKOINTERFACE integer)
as
begin
  -- Параметр DEFINITIONALDOMAIN больше не используется, оставлен для совместимости
  -- Параметр WHEREID определяет контроллер приемника
  for select A.ID,
             -- Информация по источнику
             A.SCARDID,
             (case when C.VISIBILITY > -1 then C.MARKA else (select DISC from GET_DISC_IOVAR(C.ID, 0)) end) as SNAME,
             (case when C.VISIBILITY > -1 then C.NAME else C.MARKA end) as SDISK,
             A.SFIELD,
             (case when C.VISIBILITY < 1 then 'Глобальная' else G.NAME end) as SPOU, C.VISIBILITY, -- Данные о ПМ в котором находится переменная
             I.NAME, I.ID, I.RESOURCE_NUM, -- Данные по ресурсу
             K.MARKA, K.ID, M.MARKA, M.ID as SGATEWAYID, -- Данные о контроллере и шлюзе
             -- Информация по приемнику
             A.RCARDID,
             (case when D.VISIBILITY > -1 then D.MARKA else (select DISC from GET_DISC_IOVAR(D.ID, 0)) end) as RNAME,
             (case when D.VISIBILITY > -1 then D.NAME else D.MARKA end) as RDISK,
             A.RFIELD,
             (case when D.VISIBILITY < 1 then 'Глобальная' else H.NAME end) as RPOU, D.VISIBILITY, -- Данные о ПМ в котором находится переменная
             J.NAME, J.ID, J.RESOURCE_NUM, -- Данные по ресурсу
             L.MARKA, L.ID, N.MARKA, N.ID as RGATEWAYID, -- Данные о контроллере и шлюзе
             -- Прочая информация
             B.NAME as TNAME, A.TID, AA.STATECARDID, AA.NUMBERCLASTER as SCN, AA."VERSION",
             (select first 1 MKOINTERFACE from MKOCHANNEL AAA where AAA.rresid = AA.sresid and AAA.sresid = AA.rresid) as MKOINTERFACE
      from MKOVAR A
      inner join MKOCHANNEL AA on AA.ID = A.CHANNELID
      inner join ISAOBJ B on B.ID = A.TID
      inner join ISACARDS C on C.ID = A.SCARDID
      inner join ISACARDS D on D.ID = A.RCARDID
      inner join ISAOBJ E on E.ID = C.TID
      inner join ISAOBJ F on F.ID = D.TID
      left join ISAOBJ G on (G.ID = C.VISIBILITY) and (C.VISIBILITY > 0)
      left join ISAOBJ H on (H.ID = D.VISIBILITY) and (D.VISIBILITY > 0)
      inner join RESOURCES I on (I.ID = C.RESID) and (I.ID > 0)
      inner join RESOURCES J on (J.ID = D.RESID) and (J.ID > 0)
      inner join CARDS K on (K.ID = I.CARDID) and (K.ID > 0)
      inner join CARDS L on (L.ID = J.CARDID) and (L.ID > 0)
      inner join CARDS M on (M.ID = K.PLC_ID) and (M.ID > 0)
      inner join CARDS N on (N.ID = L.PLC_ID) and (N.ID > 0)
      where ((AA.NUMBERCLASTER = 1) or
             ((AA.NUMBERCLASTER = 2) and ((select cast(PROPVALUE as integer) from GETPROPERTYVALUEBYNAME(K.ID, 0, 'PLCMODE')) in (3,4,5))) or
             ((AA.NUMBERCLASTER = 3) and ((select cast(PROPVALUE as integer) from GETPROPERTYVALUEBYNAME(K.ID, 0, 'PLCMODE')) in (5)))) and
            (J.CARDID = :WHEREID)
      order by SNAME, A.RFIELD
      into :ID,
           :SOURCECARDID, :SNAME, :SDISK, :SOURCEFIELD, :SPOU, :SPOUID, :SRESOURCE, :SRESOURCEID, :SRESOURCENUMBER, :SCONTROLLER, :SCONTROLLERID, :SGATEWAY, :SGATEWAYID,
           :RECEIVERCARDID, :RNAME, :RDISK, :RECEIVERFIELD, :RPOU, :RPOUID, :RRESOURCE, :RRESOURCEID, :RRESOURCENUMBER, :RCONTROLLER, :RCONTROLLERID, :RGATEWAY, :RGATEWAYID,
           :TNAME, :OBJTYPEID, :TUNERCARDID, :SCN, :VER, :MKOINTERFACE
  do begin suspend;
     end
end

EXECUTE;
COMMIT;
