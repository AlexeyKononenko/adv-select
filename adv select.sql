select name_genre,count(s.id) from singers s 
join genre_singers gs on gs.singer_id = s.id 
join genres g on g.id = gs.genres_id 
group by name_genre;


select  year_of_release_album,COUNT(name_track) from albums a
    join tracks t  on a.id = t.album_id
    where  a.year_of_release_album between '01-01-2019' and '31-01-2020'
    group by year_of_release_album;
    
   
   select  name_album,AVG(duration) from albums a
    join tracks t  on a.id = t.album_id
    group by name_album;
    
   
   select  nickname,year_of_release_album from albums a
    join singers_albums sa  ON a.id = sa.album_id 
    join  singers s  ON s.id  = sa.singer_id 
    where  a.year_of_release_album!= '01-01-2020' ;
    
   select  name_digest from digests d
   join composition_digest cd  on d.id = cd.digest_id
   join tracks t  on cd.track_id = t.id
   join albums a  on t.album_id = a.id
   join singers_albums sa  on a.id = sa.album_id
   join singers s  on sa.singer_id  = s.id
   where  s.nickname  like 'singer_2';
        
   select name_album, count(name_genre) from albums a
 	join singers_albums sa  on sa.album_id  = a.id 
	join singers s  on sa.singer_id = s.id  
	join genre_singers gs  on s.id  = gs.singer_id  
	join genres g  on g.id  = gs.genres_id  
	group by name_album 
	having count(name_genre) > 1;
	

select name_track  from tracks t 
left join composition_digest cd  on t.id  = cd.track_id 
where cd.track_id  is null


select nickname, duration from tracks t 
join albums a  on t.album_id  = a.id 
join singers_albums sa  on sa.album_id  = a.id 
join singers s  on sa.singer_id  = s.id  
where duration = (select min(duration) from tracks);

    select  a.name_album, COUNT(t.id) FROM albums a
    join tracks t  ON a.id = t.album_id
    group  by  a.name_album 
    having  count(t.id) in (
        select  COUNT (t.id)
        from albums a
      	join tracks t  ON a.id = t.album_id
        group  by  a.name_album
        order  by  count(t.id)
        limit  1);