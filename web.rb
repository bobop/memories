require 'sinatra'

get '/' do
  @days_since_nov_11 = params[:days] ? params[:days].to_i : (Date.today - Date.parse('12/11/2016')).to_i

  memory_array = [
    ['When you asked a homeless man if you could buy him any food and ended up just buying him an onion.', 'Benny'],
    ['Growing a goatee and then mum making you shave it off within a day.', 'Tommy'],
    ['When you grew a bright ginger moustache.', 'Benny'],
    ['Thinking it was cool that when we came to watch you play football your team called you "Gazza", like the real Gazza!', 'Tommy'],
    ['Offering to make me a cheese and jam sandwich on the way home from the airport after I\'d arrived back from Uganda.', 'Benny'],
    ['When we first got a digital camera which had a record mode on it, I made a great video of me creeping into the living room while you were asleep, slapping you on the head and then legging it upstairs as you chased me with an angry red face. I even managed to keep the record on until I got up the stairs... good times!', 'Tommy'],
    ['Sitting on your knee and driving the car on a beach.', 'Benny'],
    ['Telling Baxter when he was about 14 that he "would be good in HR". He clearly took your advice more seriously than I ever did!', 'Tommy'],
    ['Catching freebies from the Tour de France entourage with you as it went through La Clusaz.', 'Benny'],
    ['Sitting next to me before Court (twice) and telling me that it was all going to be alright.', 'Tommy'],
    ['When "the monster" kept grabbing your head from behind the door!', 'Benny'],
    ['That time you took me to McDonalds to bribe me to take a piercing out of my ear that I\'d pierced myself which was infected!', 'Katy'],
    ['Buying mum some Wallace and Gromit fridge magnets for her main Christmas present.', 'Tommy'],
    ['Feeling safe and falling to sleep as you were driving on the motorway.', 'Benny'],
    ['The posh caravan we had at Days of Destiny one year, the original Glampers!! The envy of all the whole campsite. You actually hate camping so I\'m impressed that we went so many times.', 'Katy'],
    ['The trip to Tanzania with you. Giving out food to the people on the street in Mwanza, who kicked off about there being jam on the sandwiches!', 'Tommy'],
    ['Feeling cool at the back of the room when you were telling jokes at a "gig"!', 'Benny'],
    ['When I told you I wanted to be an actress and you said I need a plan B.(This career is my plan B!)', 'Katy'],
    ['Getting me my first Playstation for Christmas. I remember hearing you in the kitchen calling round all the different electronics stores and they\'d sold out - I wasn\'t sure you\'d managed to get one until I opened it on the big day!', 'Tommy'],
    ['Feeling more embarrassed than you did after I slapped your bald head and ran off shouting "slap head" while you were talking to some folk.', 'Benny'],
    ['When you and mum financially supported me to complete my return to nursing course and get back on my career.', 'Katy'],
    ['Making us kids (well in my head you made us) do mini-church services on Sunday mornings when we were away on holiday.', 'Tommy'],
    ['When you took me and Katy to hospital to meet our new brother with a bunch of presents (for me!)', 'Benny'],
    ['When you put a poppadum on a plate for me to eat and I said "what\'s that?" and you said "a big crisp". That\'s what I think now whenever I have a poppadum!', 'Katy'],
    ['Dancing with just your thumbs at mum\'s 40th birthday party.', 'Tommy'],
    ['Playing football with you during a sunny evening on the wasteland next to Foyle Avenue.', 'Benny'],
    ['Wrestling with you and my brothers and mum would say "it will end in tears" and it usually did! Was really fun though.', 'Katy'],
    ['Singing Roxy Music songs in the kitchen.', 'Tommy'],
    ['When you supported us after Amy died by encouraging us to see and hold her.', 'Benny'],
    ['Making us bacon sandwiches after school as a "pre-dinner snack" about an hour before dinner!', 'Tommy'],
    ['Recording videos of you looking like a baby in a nappy for a "baby left, baby right" game.', 'Benny'],
    ['When we lived at North Street and our neighbour\'s house got robbed, I was scared and couldn\'t sleep and you said that no robbers would dare come to our house because you lived there and you\'re big and strong, which I was clearly satisfied with and slept like a baby.', 'Tommy'],
    ['Playing with you on my new Commodore 64 in the back room at Nanan and Bobop\'s.', 'Benny'],
    ['Walking through West Park school when me and Baxter were on work experience at the church and loads of the kids knowing your name! Not sure if it was pride or embaressment, maybe both.', 'Tommy'],
    ['When you told me to punch my friend Charles in the stomach if he upset me again!', 'Benny'],
    ['Doing a great preach at our wedding... you hadn\'t been asked to preach but couldn\'t resist. It was appreciated though!', 'Tommy'],
    ['Cheering me on in one of my few football matches for Emmanuel School.', 'Benny'],
    ['Doing a talk at "youth group" at the Riverside Centre about sex and saying "don\'t touch what you don\'t have". CRINGE.', 'Tommy'],
    ['When you taught me how to juggle in your office in Juniper Lodge.', 'Benny'],
    ['Your big hand coming into the back of the car to squeeze one of our legs when we were being naughty on long road trips!', 'Tommy'],
    ['Feeling really embarrassed at McDonalds with Tom, Katy and you when you told 2 lads at the next table (who were around the same age as me) to stop swearing because you had your kids with you.', 'Benny'],
    ['Thinking it was really cool that my dad "toured" with a band.', 'Tommy'],
    ['You being really proud of your UMBRO t-shirt because it meant you were cool and down with the kids... in your mind!', 'Benny'],
    ['Getting back from one of your Africa trips when I was about 5/6 and waking me up at North Street to give me a present, which was a VHS of The Jungle Book. Took me another 5 years to work out you didn\'t buy that in Africa.', 'Tommy'],
    ['', 'Benny'],
    ['Doing something to upset mum (that we never knew about) and then coming in with some flowers, going back out, coming back with some chocolates, going back, coming back with a dress etc etc. Mum still wasn\'t impressed!', 'Tommy'],
    ['Wanting that Beatles album for years and being really disappointed every time you opened a present and it wasn\'t it - you had to get it yourself in the end.', 'Tommy'],
    ['When your tour bus got robbed in Estonia and you came home and told us kids all the "presents" you\'d bought us that were in the back of the van but got stolen... cricket bat, tennis racket... yeah right!', 'Tommy'],
    ['Always being the parent I\'d ask if I wanted anything because you\'re soft!', 'Tommy'],
    ['Wrestling on the living room floor. Mum getting upset and saying "it will end in tears" and me often thinking you were going to kill Ben because he\'s got a weak heart!', 'Tommy']
  ]
  @memory = memory_array[@days_since_nov_11]

  erb :index
end

get '/bg' do
  number = rand(0..9)
  send_file File.expand_path("images/pattern_#{number}.png", settings.public_folder)
end
