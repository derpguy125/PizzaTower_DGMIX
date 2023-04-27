if levelsign != "none" {
	var levelrank = get_level_rank(levelsign)
	if levelrank = "none" then visible = false
	else visible = true
    if (levelrank == "s")
        image_index = 0
    if (levelrank == "a")
        image_index = 1
    if (levelrank == "b")
        image_index = 2
    if (levelrank == "c")
        image_index = 3
    if (levelrank == "d")
        image_index = 4
} else {
	visible = false;	
}