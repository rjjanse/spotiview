#-----------------------------#
# Flex dashboard for Spotify
# Roemer J. Janse - 14/09/2022
#-----------------------------#

pacman::p_load("tidyverse", "ggplot2", "readr")

# 0. Data loading and cleaning ----
setwd("C:/Users/rjjan/OneDrive/Documents/Personal/Spotify Playlists")

dat.temp01 <- read_csv("_craft_thyne_tongue_into_a_blade_and_slay_those_symphonies_.csv") %>%
    mutate(playlist = "'Craft thyne tongue into a blade and slay those sypmhonies'", folder = "Genres")
dat.temp02 <- read_csv("_make_your_tongue_a_machete_and_kill_those_beats_.csv") %>%
    mutate(playlist = "'Make your tongue a machete and kill those beats'", folder = "Genres")
dat.temp03 <- read_csv("_sn_j_azzy_reading.csv") %>%
    mutate(playlist = "[Sn]J]azzy reading", folder = "Genres")
dat.temp04 <- read_csv("a_monkey_needs_to_dance_and_so_do_you.csv") %>%
    mutate(playlist = "A monkey needs to dance and so do you", folder = "Genres")
dat.temp05 <- read_csv("ak.csv") %>%
    mutate(playlist = "AK", folder = "Artists")
dat.temp06 <- read_csv("all_i_wanted_to_listen_to_when_i_was_10.csv") %>%
    mutate(playlist = "All I wanted to listen to when I was 10", folder = "Genres")
dat.temp07 <- read_csv("all_the_lights_in_the_sky.csv") %>%
    mutate(playlist = "All the lights in the sky", folder = "Albums")
dat.temp08 <- read_csv("american_idiot.csv") %>%
    mutate(playlist = "American Idiot", folder = "Albums")
dat.temp09 <- read_csv("annenmaykantereit.csv") %>%
    mutate(playlist = "AnnenMayKantereit", folder = "Artists")
dat.temp10 <- read_csv("at_the_playlists_of_madness.csv") %>%
    mutate(playlist = "At the playlists of madness", folder = "Melodic")
dat.temp11 <- read_csv("avatar.csv") %>%
    mutate(playlist = "Avatar", folder = "Artists")
dat.temp12 <- read_csv("avatar_country.csv") %>%
    mutate(playlist = "Avatar country", folder = "Albums")
dat.temp13 <- read_csv("baets.csv") %>%
    mutate(playlist = "Baets", folder = "Genres")
dat.temp14 <- read_csv("beaty.csv") %>%
    mutate(playlist = "Beaty", folder = "Melodic")
dat.temp15 <- read_csv("beuken.csv") %>%
    mutate(playlist = "Beuken", folder = "Genres")
dat.temp16 <- read_csv("bounce.csv") %>%
    mutate(playlist = "Bounce", folder = "Genres")
dat.temp17 <- read_csv("carolus_rex.csv") %>%
    mutate(playlist = "Carolus Rex", folder = "Albums")
dat.temp18 <- read_csv("chill.csv") %>%
    mutate(playlist = "Chill", folder = "Genres")
dat.temp19 <- read_csv("cлавянская_музыка.csv") %>%
    mutate(playlist = "cлавянская музыка", folder = "Genres")
dat.temp20 <- read_csv("dark_side_of_the_moon.csv") %>%
    mutate(playlist = "Dark Side of the Moon", folder = "Albums")
dat.temp21 <- read_csv("dax.csv") %>%
    mutate(playlist = "Dax", folder = "Artists")
dat.temp22 <- read_csv("dean_lewis_capaldi.csv") %>%
    mutate(playlist = "Dean Lewis Capaldi", folder = "Artists")
dat.temp23 <- read_csv("disney.csv") %>%
    mutate(playlist = "Disney", folder = "Miscellaneous")
dat.temp24 <- read_csv("dromck.csv") %>%
    mutate(playlist = "Dromck", folder = "Miscellaneous")
dat.temp25 <- read_csv("ed_sheeran.csv") %>%
    mutate(playlist = "Ed Sheeran", folder = "Artists")
dat.temp26 <- read_csv("eden.csv") %>%
    mutate(playlist = "EDEN", folder = "Artists")
dat.temp27 <- read_csv("e-dubble.csv") %>%
    mutate(playlist = "E-Dubble", folder = "Artists")
dat.temp28 <- read_csv("extraterrestrial.csv") %>%
    mutate(playlist = "Extraterrestrial", folder = "Melodic")
dat.temp29 <- read_csv("find_your_strength.csv") %>%
    mutate(playlist = "Find your strength", folder = "Genres")
dat.temp30 <- read_csv("froukje.csv") %>%
    mutate(playlist = "Froukje", folder = "Artists")
dat.temp31 <- read_csv("galvanic_shivers.csv") %>%
    mutate(playlist = "Galvanic shivers", folder = "Genres")
dat.temp32 <- read_csv("headbanging_kinda_hurts_tbh.csv") %>%
    mutate(playlist = "Headbanging kinda hurts tbh", folder = "Genres")
dat.temp33 <- read_csv("hollywood_undead_.csv") %>%
    mutate(playlist = "Hollywood Undead", folder = "Artists")
dat.temp34 <- read_csv("'i_heard_this_song_somewhere_and_liked_it'-list.csv") %>%
    mutate(playlist = "'I heard this song somewhere and liked it'-list", folder = "Genres")
dat.temp35 <- read_csv("i_should've_learned_violin.csv") %>%
    mutate(playlist = "I should've learned violin", folder = "Genres")
dat.temp36 <- read_csv("i'm_so_alternative.csv") %>%
    mutate(playlist = "I'm so alternative", folder = "Genres")
dat.temp37 <- read_csv("instrumentals.csv") %>%
    mutate(playlist = "Instrumentals", folder = "Miscellaneous")
dat.temp38 <- read_csv("locomotion.csv") %>%
    mutate(playlist = "Locomotion", folder = "Genres")
dat.temp39 <- read_csv("mackle-more.csv") %>%
    mutate(playlist = "Mackle-more", folder = "Artists")
dat.temp40 <- read_csv("march_of_warriors.csv") %>%
    mutate(playlist = "March of warriors", folder = "Melodic")
dat.temp41 <- read_csv("mellow.csv") %>%
    mutate(playlist = "Mellow", folder = "Genres")
dat.temp42 <- read_csv("nationalism_ain't_so_bad.csv") %>%
    mutate(playlist = "Nationalism ain't so bad", folder = "Genres")
dat.temp43 <- read_csv("olivia_dean.csv") %>%
    mutate(playlist = "Olivia Dean", folder = "Artists")
dat.temp44 <- read_csv("omg_this_is_from_insert_franchise_.csv") %>%
    mutate(playlist = "Omg this is from [insert franchise]", folder = "Genres")
dat.temp45 <- read_csv("percusiomissed.csv") %>%
    mutate(playlist = "Percusiomissed", folder = "Miscellaneous")
dat.temp46 <- read_csv("pomme.csv") %>%
    mutate(playlist = "Pomme", folder = "Artists")
dat.temp47 <- read_csv("quirky_encounters.csv") %>%
    mutate(playlist = "Quirky encounters", folder = "Melodic")
dat.temp48 <- read_csv("ren_+_the_big_push.csv") %>%
    mutate(playlist = "Ren + The Big Push", folder = "Artists")
dat.temp49 <- read_csv("riffi.csv") %>%
    mutate(playlist = "Riffi", folder = "Artists")
dat.temp50 <- read_csv("shanteys.csv") %>%
    mutate(playlist = "Shanteys", folder = "Genres")
dat.temp51 <- read_csv("stadium_arcadium.csv") %>%
    mutate(playlist = "Stadium Arcadium", folder = "Albums")
dat.temp52 <- read_csv("still_feel_that.csv") %>%
    mutate(playlist = "Still feel that", folder = "Genres")
dat.temp53 <- read_csv("stromae.csv") %>%
    mutate(playlist = "Stromae", folder = "Artists")
dat.temp54 <- read_csv("stumpeank.csv") %>%
    mutate(playlist = "Stumpeank", folder = "Genres")
dat.temp55 <- read_csv("tai(dwan)ko.csv") %>%
    mutate(playlist = "Tai(dwan)ko", folder = "Melodic")
dat.temp56 <- read_csv("that's_folk_folks.csv") %>%
    mutate(playlist = "That's folk folks", folder = "Genres")
dat.temp57 <- read_csv("the_90s_were_a_decade_of_all_time.csv") %>%
    mutate(playlist = "The 90s were a decade of all time", folder = "Genres")
dat.temp58 <- read_csv("the_family_tree_the_bastards.csv") %>%
    mutate(playlist = "The Family Tree: the Bastards", folder = "Albums")
dat.temp59 <- read_csv("the_family_tree_the_branches.csv") %>%
    mutate(playlist = "The Family Tree: the Branches", folder = "Albums")
dat.temp60 <- read_csv("the_family_tree_the_leaves.csv") %>%
    mutate(playlist = "The Family Tree: the Leaves", folder = "Albums")
dat.temp61 <- read_csv("the_family_tree_the_roots.csv") %>%
    mutate(playlist = "The Family Tree: the Roots", folder = "Albums")
dat.temp62 <- read_csv("the_humming_of_tom_bombadil.csv") %>%
    mutate(playlist = "The humming of Tom Bombadil", folder = "Melodic")
dat.temp63 <- read_csv("these_songs_are_linked_somehow.csv") %>%
    mutate(playlist = "These songs are linked somehow", folder = "Genres",
           # The date of album release in this playlist is sometimes only the year. If this is the case, add 15 of June as full date.
           `Album Release Date` = ifelse(nchar(`Album Release Date`) != 10, paste0(`Album Release Date`, "-06-15"), `Album Release Date`),
           # Convert character to date
           `Album Release Date` = as.Date(`Album Release Date`, origin = "1970-01-01"))
dat.temp64 <- read_csv("thikîl_ra_zirîn.csv") %>%
    mutate(playlist = "Thikîl ra Zirîn", folder = "Genres")
dat.temp65 <- read_csv("tunes.csv") %>%
    mutate(playlist = "Tunes", folder = "Genres")
dat.temp66 <- read_csv("vibes.csv") %>%
    mutate(playlist = "Vibes", folder = "Genres")
dat.temp67 <- read_csv("vw_volkswiedergabeliste.csv") %>%
    mutate(playlist = "VW: volkswiedergabeliste", folder = "Genres")
dat.temp68 <- read_csv("whipjazz.csv") %>%
    mutate(playlist = "Whipjazz", folder = "Genres")
dat.temp69 <- read_csv("w-rap.csv") %>%
    mutate(playlist = "W-rap", folder = "Genres")

# Bind data together
for(i in 1:69){
    # First dataset makes the new dataset
    if(i == 1){
        dat.spotify <- get("dat.temp01")
    }

    else{
        # Add 0 to i for datasets 01 to 09
        nr <- ifelse(i < 10, paste0("0", i), i)

        # Bind old datasets with new dataset by row
        dat.spotify <- rbind(dat.spotify, get(paste0("dat.temp", nr)))
    }
}

# Remove all datasets except the new one
rm(list = setdiff(ls(), "dat.spotify"))

# Remove unnecessary variables
dat.spotify <- dplyr::select(dat.spotify, -c(`Track URI`, `Artist URI(s)`, `Album URI`, `Album Artist URI(s)`, `Disc Number`, `Track Number`,
                                             `Track Preview URL`, `Added By`))

# Rename remaining variables
dat.spotify <- dat.spotify %>% rename(track = 1, artist = 2, album = 3, album_artist = 4, album_release = 5, album_image = 6,
                                      track_duration = 7, explicit = 8, popularity = 9, added = 10, playlist = 11, folder = 12)

# Clean-up added
dat.spotify <- dat.spotify %>% mutate(added = gsub(" \\d{2}:\\d{2}:\\d{2}", "", added),
                                      added = as.Date(added, origin = "1970-01-01"))

# Save data
save(dat.spotify, file = "dat.spotify")

# Load data
load("dat.spotify")

