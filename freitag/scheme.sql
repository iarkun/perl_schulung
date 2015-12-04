CREATE TABLE cds (
	id		SERIAL,
	cdtitle		TEXT,
	cdinterpret	TEXT,
	price		numeric(9,2),
	location	TEXT
);
CREATE UNIQUE INDEX idx_cds ON cds USING btree(id);
CREATE UNIQUE INDEX idx_cds2 ON cds USING btree(cdtitle,cdinterpret);

CREATE TABLE songs (
	title		TEXT,
	interpret	TEXT,
	track		INTEGER,
	cd		INTEGER
);
