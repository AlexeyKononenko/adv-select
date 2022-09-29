select year_of_release_album from albums 
where year_of_release_album between '01-01-2018' and '31-12-2018';

select name_track, duration from tracks 
order by duration desc;

select duration from tracks 
where duration > 3.5;


select name_digest from digests 
where year_of_release_digest between '01-01-2018' and '31-12-2020'; 

select nickname from singers 
where nickname not like '%% %%';

select name_track from tracks
where name_track  like '%my%';