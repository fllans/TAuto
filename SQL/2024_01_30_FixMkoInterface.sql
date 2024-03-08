CREATE OR ALTER trigger mkochannel_au0 for mkochannel
active after update position 0
AS
declare variable rCardId integer;
declare variable sCardId integer;
declare variable sameGroupChannelId integer;
begin
	if (new.mkointerface <> old.mkointerface) then
	begin
		select cardid from resources where id = new.rresid into :rCardId;
		select cardid from resources where id = new.sresid into :sCardId;
		
		update mkochannel set mkointerface = new.mkoInterface where id in (
			select mkochannel.id
			from mkochannel 
				inner join resources sr on sr.id = mkochannel.sresid
				inner join resources rr on rr.id = mkochannel.rresid
			where (sr.cardid = :rCardId and rr.cardid = :sCardId)
				or (sr.cardid = :sCardId and rr.cardid = :rCardId));
	end
end
EXECUTE;
COMMIT;
	