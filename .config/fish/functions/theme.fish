function theme
	while read -l response --prompt-str="Choose Theme: "
		or return 1
	       switch $response
		       case starwars
			       echo "Loading Star Wars theme..."
			       set currenttheme starwars
			       plasma-apply-wallpaperimage /home/omer/Pictures/Wallpapers/starwars.png
			       mv ~/.config/fastfetch/config.jsonc ~/.config/fastfetch/configdune.jsonc
			       mv ~/.config/fastfetch/configstarwars.jsonc ~/.config/fastfetch/config.jsonc
			       home
			       break
			case dune
			       echo "Loading Dune theme..."
			       plasma-apply-wallpaperimage /home/omer/Pictures/Wallpapers/dune.jpg
			       mv ~/.config/fastfetch/config.jsonc ~/.config/fastfetch/configstarwars.jsonc
			       mv ~/.config/fastfetch/configdune.jsonc ~/.config/fastfetch/config.jsonc
			       home
			       break
			case '*' 
			       echo "No such theme D:"
			       continue
			end
		end
end





