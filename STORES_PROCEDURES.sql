-- STORE PROCEDURE
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_ROUTES_1`(IN old_src VARCHAR(255), IN new_src VARCHAR(255))
BEGIN
	UPDATE img_artista SET src_img = replace(src_img, old_src, new_src);
	UPDATE img_album SET src_img = replace(src_img, old_src, new_src);
    UPDATE cancion SET src_audio = replace(src_audio, old_src, new_src);
END

-- STORE PROCEDURE
CREATE DEFINER=`root`@`localhost` PROCEDURE `UPDATE_ROUTES_2`(IN old_src VARCHAR(255), IN new_src VARCHAR(255))
BEGIN
    UPDATE cancion SET src_audio = replace(src_audio, old_src, new_src);
END