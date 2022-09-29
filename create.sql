create table if not exists singers (
	id serial primary key,
	nickname text 
);
create table if not exists albums (
	id serial  primary key,
	name_album text,
	year_of_release_album date not null,
);

create table if not exists tracks (
	id serial primary key,
	name_track text,
	duration integer,
	album_id  integer references albums(id)
);

create table if not exists genres (
	id serial primary key,
	name_genre text
);

create table if not exists digests (
	id serial primary key,
	name_digest text,
	year_of_release_digest date not null
);

create table if not exists genre_singers (
	id serial primary key,
	genres_id  integer references genres(id),
	singer_id  integer references singers(id)
);

create table if not exists singers_albums (
	id serial primary key,
	singer_id  integer references singers(id),
	album_id  integer references albums(id)
	
);

create table if not exists composition_digest (
	id serial primary key,
	digest_id  integer references digests(id),
	track_id  integer references tracks(id)
);