def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year from books inner join series on books.series_id = series.id order by year limit 3"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters order by LENGTH(motto) desc LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(species) from characters group by species order by count(species) desc limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from authors inner join series on series.author_id = authors.id inner join subgenres on subgenres.id = series.id"
end

def select_series_title_with_most_human_characters
  "select series.title  from characters  join series on characters.series_id = series.id where species = 'human' group by species, series_id limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.id) from characters inner join character_books on character_books.character_id = characters.id group by characters.name order by count(character_books.id) desc"
end
