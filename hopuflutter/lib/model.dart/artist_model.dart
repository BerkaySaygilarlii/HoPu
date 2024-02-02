
class Artist {
  final String image,logo, title, bio;
  final int id;

  Artist({
    required this.id,
    required this.image,
    required this.title,
    required this.bio,
    required this.logo,
  });
}

List<Artist> products = [
  Artist(
    id: 1,
    title: "ELI & DANI",
    image: "assets/images/hopulogo.svg",
    logo: "assets/images/elidanLogo.png",
    bio: '''
      Eli & Dani is a DJ and Producer duo from Israel that consists of members Eliav and Daniel.The duo are one of the most successful electronic acts in Israel and are starting to gain fame internationally as well.Eli & Dani are known for their Melodic Techno style with uplifting and emotional sound, alongside high-quality low-end that brings out energy and drive in their performances.Over the years, Eli & Dani’s tracks have been played by DJ’s around the world like Armin Van Buuren, Adriatique, Innellea, Massano, Kevin De Vries, Nora En Pure, Maxim Lany, Joris Voorn, Marino Canal, Like Mike, Øostil, The Element, Miss Monique, Andrew Rayel, and many more.Eli & Dani began to gain attention after the release of their official contest winner remix to Andrew Rayel’s “Stars Collide'' which was released on the label ‘Armada Music”.They have also released music on other labels like Siamese, Simulate, Purified, Astral, Techno Blazer, ONISM Record, Awen, and many more releases to come in the future.They also gain attention through their tracks “Anarchists" “What Do You Know”, “Desire", “Reflection Of Voices” “Running Out” which include a Remix from OIBAF & WALLEN, ”Restless” etc.Over the course of their career, Eli & Dani have performed at festivals & Clubs in Israel & Europe including the ADE Event in Amsterdam, “Red Flag Circus” with Matador in Tel Aviv, “One Way“ in Reading 3 in Tel Aviv, Shalvata, Haoman 17, Jimmy Who, residents of ‘Red Flag Festival’ and also the owner of their own production called "Aphelion“ which is a venue that happened once a month in different locations.They also played with artists such as Argy, 8 Kays, Øostil, Matador, Magit Cacoon, Jos & Eli, Guy Mantzur, Adam Ten, Mita Gami, and many more.''',
  ),

];