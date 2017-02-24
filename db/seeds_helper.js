// based on justin beiber ipsum  https://github.com/theverything/jbipsum/blob/master/src/jb_ipsum.js

const SWAG = ["You can crush me but you can't crush my spirit!",

"You, a bobsleder!? That I'd like to see! My fellow Earthicans, as I have explained in my book 'Earth in the Balance'', and the much more popular ''Harry Potter and the Balance of Earth', we need to defend our planet against pollution. Also dark wizards.",

"Oh right. I forgot about the battle. Shinier than yours, meatbag. Hello Morbo, how's the family? Negative, bossy meat creature! I daresay that Fry has discovered the smelliest object in the known universe!",

"Leela, Bender, we're going grave robbing.",

"Say it in Russian! Wow, you got that off the Internet? In my day, the Internet was only used to download pornography. This is the worst kind of discrimination: the kind against me! That's right, baby. I ain't your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him!",

"But I've never been to the moon!",

"Yeah, lots of people did.",
"No! The kind with looting and maybe starting a few fires!",

"Are you crazy? I can't swallow that.",

"And remember, don't do anything that affects anything, unless it turns out you were supposed to, in which case, for the love of God, don't not do it! Who said that? SURE you can die! You want to die?! Bender?! You stole the atom.",

"Fry! Quit doing the right thing, you jerk!",
"You lived before you met me?!",
"Yep, I remember. They came in last at the Olympics, then retired to promote alcoholic beverages!",
"What kind of a father would I be if I said no? Bender, we're trying our best. You know, I was God once. And then the battle's not so bad?",

"The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate. These old Doomsday Devices are dangerously unstable. I'll rest easier not knowing where they are.",

"No! Don't jump! But existing is basically all I do! Why, those are the Grunka-Lunkas! They work here in the Slurm factory. The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate.",

"Dear God, they'll be killed on our doorstep! And there's no trash pickup until January 3rd. I'm a thing. Oh God, what have I done? Can I use the gun? It's a T. It goes 'tuh'.",

"You seem malnourished. Are you suffering from intestinal parasites? Meh. Please, Don-Bot… look into your hard drive, and open your mercy file! Okay, it's 500 dollars, you have no choice of carrier, the battery can't hold the charge and the reception isn't very…",

"Ummm…to eBay? Now that the, uh, garbage ball is in space, Doctor, perhaps you can help me with my sexual inhibitions? I don't know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas.",

"Hello, little man. I will destroy you! Dear God, they'll be killed on our doorstep! And there's no trash pickup until January 3rd. Ven ve voke up, ve had zese wodies. You guys realize you live in a sewer, right?",

"Oh, how I wish I could believe or understand that! There's only one reasonable course of action now: kill Flexo! You, a bobsleder!? That I'd like to see! And I'd do it again! And perhaps a third time! But that would be it.",

"Are you crazy? I can't swallow that. Now what? It's toe-tappingly tragic!",
"You seem malnourished. Are you suffering from intestinal parasites?", "The alien mothership is in orbit here. If we can hit that bullseye, the rest of the dominoes will fall like a house of cards. Checkmate.",

"Bender, being God isn't easy. If you do too much, people get dependent on you, and if you do nothing, they lose hope. You have to use a light touch. Like a safecracker, or a pickpocket. I'll get my kit!",

"Oh, how I wish I could believe or understand that! There's only one reasonable course of action now: kill Flexo! Are you crazy? I can't swallow that. Calculon is gonna kill us and it's all everybody else's fault!"];

function times(count, callback) {
  for (var i = 0; i < count; i++) {
    callback(i);
  }
}

export default class MyIpsum {
  constructor(number_of_paragraphs) {
    this.number_of_paragraphs = number_of_paragraphs || 1;
    this.paragraphs = [];
  }

  return_requested_paragraphs() {
    if (this.number_of_paragraphs > 10) {
      times(10, () => this.paragraphs.push(this.make_a_paragraph()));
    } else {
      times(this.number_of_paragraphs, () => this.paragraphs.push(this.make_a_paragraph()));
    }

    return this.paragraphs;
  }


  make_a_paragraph(){
    var paragraph = [];

    times(8, () => paragraph.push(this.make_a_sentence()));

    return paragraph.join(" ");
  }

  make_a_sentence() {
    var sentence = [];
    sentence.push(this.capitalize());
    sentence.push(this.random_phrase());
    sentence.push(this.period());

    return sentence.join(" ");
  }

  capitalize() {
    return this.random_phrase().replace(/^[a-z]/, (match) => match[0].toUpperCase());
  }

  period() {
    return this.random_phrase() + ".";
  }

  random_phrase() {
    return SWAG[Math.floor(Math.random() * SWAG.length)];
  }

}
