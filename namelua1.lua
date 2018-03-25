recipient1 = 3 --1.planet, 2.moon, 3.sun, 4.animal, 5.plant (only works with all as false)
newseed = false-- makes each name completely different (relaces variations with new names)
all = false -- change to false to use above recipient only. Recipients can be changed below
enter = false -- have to press enter before next name. all has to be enabled
sentence1 = false--Shows example sentence
info = false   --info given on generation process (best without all)
complexity = false --shows complexity info
complevel = false --shows complexity level
data = true --Just shows end results of info and complexity

--enable the following recipients you want named. For when all is enabled.
rec = {
   [1] = {
      [1] = "planet",
      [2] = true
   },
   [2] = {
      [1] = "moon",
      [2] = true
   },
   [3] = {
      [1] = "sun",
      [2] = true
   },
   [4] = {
      [1] = "animal",
      [2] = true
   },
   [5] = {
      [1] = "plant",
      [2] = true
   },
}

if all then
   recipient1 = 0
end

finished = false

firstround = true
repeat
   if all then
      repeat
         if recipient1 + 1 > 5 then
            recipient1 = 0
            finished = true
         end
         if rec[recipient1 + 1][2] == true then
            recipient1 = recipient1 + 1
            break
         else
            recipient1 = recipient1+1
         end
      until false
   end
   if firstround or all == false then
      seed = os.time()
      seed = string.sub(tostring(math.sqrt(seed)), 11 , 20 )
      firstround = false
   end
   if finished then
      break
   end
   --seed = 17972
   --remove comment and paste seed for custom name
   if newseed then
      seed = seed + 1
   end
   math.randomseed(seed)

   for i = 0, 100 do
      i = math.random(1, 100)
   end

   compound = false
   addmax = 6
   trymax = 3
   length = 5

   if rec[recipient1][1] == "planet" then
      length = math.random(2,9)
   elseif rec[recipient1][1] =="moon" then
      length = math.random(2,5)
      compound = true
      addmax = 3
   elseif rec[recipient1][1] =="sun" then
      length = math.random(2,11)
      addmax = 8
      trymax = 2
   elseif rec[recipient1][1] =="animal" then
      length = math.random(3,7)
      compound = true
      addmax = 0
   elseif rec[recipient1][1] == "plant" then
      length = math.random(3,9)
      addmax = 0
      trymax = 2
   end
   recipient = rec[recipient1][1]
   --length = 5     --remove comment and add num for custom length


   vowels = { --number below letter denotes rarity. the higher, the rarer.
      [1] = {
         [1]= "a",
         [2] = 1
      },
      [2] = {
         [1]= "e",
         [2] = 1
      },
      [3] = {
         [1]= "i",
         [2] = 1
      },
      [4] = {
         [1]= "o",
         [2] = 1
      },
      [5] = {
         [1]= "u",
         [2] = 3
      },
      [6] = {
         [1]= "y",
         [2] = 2
      }
   }

   consonants = {
      [1] = {
         [1] = "b",
         [2]=1
      },
      [2] = {
         [1]= "c",
         [2] = 1
      },
      [3] = {
         [1]= "d",
         [2] = 1
      },
      [4] = {
         [1]= "f",
         [2] = 1
      },
      [5] = {
         [1]= "g",
         [2] = 1
      },
      [6] = {
         [1]= "h",
         [2] = 2
      },
      [7] = {
         [1]= "j",
         [2] = 4
      },
      [8] = {
         [1]= "k",
         [2] = 1
      },
      [9] = {
         [1]= "l",
         [2] = 1
      },
      [10] = {
         [1]= "m",
         [2] = 1
      },
      [11] = {
         [1]= "n",
         [2] = 1
      },
      [12] = {
         [1]= "p",
         [2] = 1
      },
      [13] = {
         [1]= "q",
         [2] = 3
      },
      [14] = {
         [1]= "r",
         [2] = 1
      },
      [15] = {
         [1]= "s",
         [2] = 1
      },
      [16] = {
         [1]= "t",
         [2] = 1
      },
      [17] = {
         [1]= "v",
         [2] = 2
      },
      [18] = {
         [1]= "w",
         [2] = 4
      },
      [19] = {
         [1]= "x",
         [2] = 3
      },
      [20] = {
         [1]= "z",
         [2] = 2
      },
      [21] = {
         [1]= "-",
         [2] = 1,
      },
      --[[[22] = {
         [1]="y",
         [2]=2,
      }--]]

   }

   sentencestarts = {
      [1] = "Be careful when you",
      [2]= "Try not to",
      [3]="Never",
      [4]="Always",
      [5]="Lets",
      [6]="We will",
      [7] = "I dont want to",
      [8]= "It is fun to",
      [9]="It is not safe to",
      [10]="You learn alot when you",
      [11]="You can't",
      [12]="Don't you dare",
      [13] = "Don't",
      [14]= "I remember when we used to",
      [15]="Stop trying to",
      [16]="Go",
      [17]="I will",
      [18]="You should",
      [19] = "We might",
      [20] = "If you want to die, go",
      [21]="We need to",
      [22]="You can",
      [23]="To celebrate, we will",
      [24]="We could",
      [25] = "For the last time,",
      [26] = "If you want peace of mind,"
   }

   spacesentences = {
      [1] = "stop by",
      [2]= "land on",
      [3]="fly by",
      [4]="look at",
      [5]="travel to",
      [6]="go on a trip to",
      [7] = "eat on",
      [8]= "sleep on",
      [9]="warp to",
      [10]="veiw",
      [11]="crash into",
      [12]="die on",
      [13] = "live on",
      [14]= "explore",
      [15]="fuel up on",
      [16]="upload data on",
      [17]="stop to rest on",
      [18]="hunt on",
      [19] = "discover",
      [20]= "rename",
      [21]="showoff",
      [22] = "orbit",
      [23] = "destroy",
      [24]="colonize",
      [25] = "terraform",
      [26]= "mine on",
      [27]="hide on",
      [28] = "move to",
      [29] = "raid",
   }
   sunsentences = {
      [1] = "look at",
      [2]= "crash into",
      [3]="orbit",
      [4]="slingshot around",
      [5]="leave",
      [6]="observe",
      [7] = "visit the station by",
      [8]= "harness the power of",
      [9]="rename",
      [10]="discover",
      [11]="die in",
      [12]="warp to",
      [13] = "travel to",
      [14]= "fly by",
      [15]="blow up",
      [16]="pass by",
      [17] = "go to",
      [18]= "black out",
      [19]="watch the death of",
      [20] = "watch the birth of",
      [21] = "launch the prisoners into",
   }

   animalsentences = {
      [1] = "hunt the",
      [2]= "kill the",
      [3]="obliterate all",
      [4]="eat",
      [5]="die by the",
      [6]="get killed by",
      [7] = "get stalked by a",
      [8]= "attack the",
      [9]="breed some",
      [10]="capture the",
      [11]="poach",
      [12]="murder",
      [13] = "slaughter",
      [14]= "ride the",
      [15]="endanger the",
      [16]="train the",
      [17]="watch the",
      [18]="find the",
      [19] = "discover the",
      [20]= "feed the dead to the",
      [21]="release the",
      [22] = "bring me the heads of the",
      [23] = "maim the",
      [24]="kidnap the babies of the",
      [25] = "make a fur coat out of the",
   }

   plantsentences = {
      [1] = "eat a",
      [2]= "find some",
      [3]="study the",
      [4]="kill all the",
      [5]="harvest the",
      [6]="water the",
      [7] = "plant the",
      [8]= "uproot the",
      [9]="kill the",
      [10]="poison the",
      [11]="care for the",
      [12]="feed an insect to the",
      [13] = "be careful of",
      [14]= "watchout for the",
      [15]="see the",
      [16]="make a salad out of the",
      [17]="get hurt by the",

   }
   additions = {
      [1] = "I",
      [2]= "II",
      [3]="III",
      [4]="IV",
      [5]="V",
      [6]="VI",
      [7] = "VII",
      [8]= "VIII",
      [9]="IX",
      [10]="X",
      [11]="Alpha",
      [12]="Beta",
      [13] = "Gamma",
      [14]= "Delta",
      [15]="Epsilon",
      [16]="Zeta",
      [17]="Eta",
      [18]="Theta",
      [19] = "Iota",
      [20]= "Kappa",
      [21]="Lambda",
      [22] = "Mu",
      [23]="Nu",
      [24]="Zi",
      [25]="Omicron",
      [26]="Pi",
      [27] = "Rho",
      [28]= "Sigma",
      [29]="Tau",
      [30] = "Upsilon",
      [31]="Phi",
      [32]="Chi",
      [33] = "Psi",
      [34]= "Omega"
   }
   plantitions = {
      [1] = "Tall",
      [2]= "Broad",
      [3]="Short",
      [4]="Small",
      [5]="Large",
      [6]="Stout",
      [7] = "Posion",
      [8]= "Spiny",
      [9]="Prickly",
      [10]="Thorny",
      [11]="Strong",
      [12]="Glowing",
      [13]="Glistening",
      [13]="Sand",
      [14] = "Dirt",
      [15]= "Wet",
      [16]="Bright",
      [17]="Dark",
      [18]="Electric",
      [19] = "Funnel",
      [20]= "Leafy",
      [21]="Bumpy",
      [22] = "Spikey",
      [23]="Smooth",
      [24]="Soft",
      [25]="Rough",
      [26]="Sticky",
      [27] = "Sweet",
      [28]= "Sour",
      [29]="Bitter",
      [30] = "Shiny",
      [31]="Sharp",
      [32]="Hairy",
      [33] = "Weak",
      [34]= "Strong",
      [35] = "Brittle",
      [36] = "Dry",

   }
   animalitions = {
      [1] = "Furry",
      [2]= "Chubby",
      [3]="Small",
      [4]="Large",
      [5]="Wide",
      [6]="Short",
      [7] = "Long",
      [8]= "Stout",
      [9]="Poison",
      [10]="Big",
      [11]="Scary",
      [12]="Sand",
      [13] = "Dirt",
      [14]= "Wet",
      [15]="Bright",
      [16]="Dark",
      [17]="Electric",
      [18]="Cricked",
      [19] = "Smooth",
      [20]= "Rough",
      [21]="Bumpy",
      [22] = "Soft",
      [23]="Hard",
      [24]="Sharp",
      [25]="Bent",
      [26]="Straight",
      [27] = "Twisted",
      [28]= "Broken",
   }
   colors = {
      [1] = "Ivory",
      [2]= "Beige",
      [3]="Tan",
      [4]="Silver",
      [5]="Gray",
      [6]="Charcoal",
      [7] = "Blue",
      [8]= "Azure",
      [9]="Cyan",
      [10]="Teal",
      [11]="Green",
      [12]="Olive",
      [13] = "Lime",
      [14]= "Golden",
      [15]="Pink",
      [16]="Fuchsia",
      [17]="Lavender",
      [18]="Plum",
      [19] = "Indigo",
      [20]= "Maroon",
      [21]="Crimson",
      [22] = "Turquoise",
      [23]="White",
      [24]="Black",
      [25]="Brown",
      [26]="Violet",
      [27] = "Chocolate",
      [28]= "Silk",
      [29]="Cream",
      [30] = "Magenta",
      [31]="Orange",
      [32]="Purple",
      [33] = "Red",
      [34]= "Yellow",
      [35] = "Orchid",
      [36] = "Rose",
      [37] = "Neon",
      [38] = "Silver",
      [39] = "Snow",
      [40] = "Aqua",
      [31] = "Scarlet"
   }
   plantbodies = {
      [1] = "Stemmed",
      [2]= "Leafed",
      [3]="Petaled",
      [4]="Fruited",
      [5]="Seeded",
      [6]="Budded",
      [7] = "Thorned",
      [8] ="Jeweled",
      [9] ="Striped"
   }
   animalbodies = {
      [1] = "Tailed",
      [2]= "Bellied",
      [3]="Beaked",
      [4]="Winged",
      [5]="Legged",
      [6]="Footed",
      [7] = "Nosed",
      [8]= "Snouted",
      [9]="Horned",
      [10]="Faced",
      [11]="Eyed",
      [12]="Haired",
      [13] = "Mouthed",
      [14]= "Toothed",
      [15]="Eared",
      [16]="Necked",
      [17]="Bodied",
      [18]="Armed",
      [19] = "Fingered",
      [20]= "Clawed",
      [21]="Kneed",
      [22] = "Toed",
      [23]="Gilled",
      [24]="Finned",
      [25]="Feathered",
      [26]="Scaled",
      [27] = "Leathered",
      [28]= "Slimed",
      [29]="Shelled",
      [30] = "Whiskered",
      [31]="Tusked",
      [32]="Fanged",
      [33] = "Spined",
      [34]= "Ribbed",
      [35] = "Backed",
      [36] ="Striped",
      [37] ="Venomed",
      [38]="Tentacled",
   }

   numbers = {
      [1] = "1",
      [2]= "2",
      [3]="3",
      [4]="4",
      [5]="5",
      [6]="6",
      [7] = "7",
      [8]= "8",
      [9]="9",
      [10]="0",
   }

   numbersspelled = {
      [1] = "One",
      [2]= "Two",
      [3]="Three",
      [4]="Four",
      [5]="Five",
      [6]="Six",
      [7] = "Seven",
      [8]= "Eight",
      [9]="Nine",
      [10]="No",
      [11]= "Triple",
      [12]="Double",
      [13]="Multi",
      [14]= "Single",
   }

   function tabl(tab, multi)
      size = tablelength(tab)
      if multi then
         accepted = false
         repeat
            val = math.random(1,size)
            val2 = math.random(1,tab[val][2]*math.floor(trymax/2))
            if val2 == 1 then

               accepted = true
               if complexity then
                  print(tab[val][1].." : "..tab[val][2].."-"..tab[val][2]*math.floor(trymax/2).." Chosen "..val2)
               end
            else
               if complexity then
                  print(tab[val][1].." : "..tab[val][2].."-"..tab[val][2]*math.floor(trymax/2).." Rejected "..val2)
               end
               would2 = would2..tab[val][1]
               fail2 = true
               if val2 <= math.floor(trymax/2) then
                  would3 = would3..tab[val][1]
                  fail3 = true
               end

            end
         until accepted
         prevrarity = rarity
         rarity = rarity + tab[val][2]
         if complexity then
            print("?Complexity: "..rarity)
         end
         if string.sub(tag,string.len(tag)) == "-" then
            return string.upper(tab[val][1])

         else
            return tab[val][1]
         end
      else
         val = math.random(1,size)
         return tab[val]
      end
   end

   function tablelength(T)
      local count = 0
      for _ in pairs(T) do count = count + 1 end
      return count
   end


   function firstly()
      if first then
         letter = string.upper(string.sub(letter,1,1))
         first = false
      end
   end


   function vowel()
      letter = tabl(vowels, true)
      vow = true
   end


   function consonant()
      letter = tabl(consonants, true)
      vow = false
   end

   function addition()
      if addmax > 0 then
         will = math.random(1,addmax)
         if will == 1 then
            size = tablelength(additions)
            val = math.random(1,size)
            --print(vowels[val])
            letter = additions[val]
            tag = tag.." "..letter
            vow = nil
         elseif will == 2 then
            if recipient == "moon" then
               numb = math.random(1,9)
               tag = tag.." "..numb
               choose()
               tag = string.gsub(tag,"%d+qu",numb.."q")
               if math.random(1,2) == 1 then
                  tag = string.gsub(tag,"%d+%a+",string.upper)
               end
            end
         end
      end
   end

   function organition()
      if recipient == "plant" then
         tition = plantitions
         bodies = plantbodies
      elseif recipient == "animal" then
         tition = animalitions
         bodies = animalbodies
      end
      will = math.random(1,3)
      if will == 1 then
         what = math.random(1,6)
         if what == 1 then
            tag = tabl(bodies, false).." "..tag
            vow = nil
         elseif what == 2 then
            tag = tabl(tition, false).." "..tag
            vow = nil
         elseif what == 3 then
            tag = tabl(colors, false).." "..tag
            vow = nil
         elseif what == 4 then
            tag = tabl(colors, false).."-"..tabl(bodies, false).." "..tag
            vow = nil
         elseif what == 5 then
            tag = tabl(tition, false).."-"..tabl(bodies, false).." "..tag
            vow = nil
         elseif what == 6 then
            tag = tabl(numbersspelled, false).."-"..tabl(bodies, false).." "..tag
            vow = nil

         elseif what == 7 then
            tag = tabl(tition, false).." "..tabl(colors, false).."-"..tabl(bodies, false).." "..tag
            vow = nil
         elseif what == 8 then
            tag = tabl(colors, false).." "..tabl(tition, false).."-"..tabl(bodies, false).." "..tag
            vow = nil
         end
      end
   end

   parts = {
      [1] = vowel,
      [2] = consonant
   }

   function id(let)
      for i = 0, tablelength(vowels) - 1 do
         i = i + 1
         --print(type(vowels[i]))
         if let == vowels[i][1] then
            return "vowel"
         end
      end
      for i = 0, tablelength(consonants) do
         i = i + 1
         if let == consonants[i][1] then
            return "consonant"
         end
         for i = 0, tablelength(numbers) do
            i = i + 1
            if let == numbers[i] then
               return "number"
            end
         end
      end
      if info or advinfo then
         print("Error: "..let)
         print("Type: "..type(let).."\n")
      end
   end

   function pass(l1,l2,en,ec)
      if info then
         print("Exception "..en)
         print("Code: "..ec)
         print("Passed: "..l1..l2.."\n")
      end
   end

   function exceptions(let1, let2)
      -------1
      if (let1 == "h" or let2 == "h") and let1 ~= let2 and (string.len(tag) + 1) ~= length and string.len(tag) > 1 and math.random(1,trymax) == 1 then
         pass(let1,let2,1,"Two Con But H Try Pass")
         rarity = rarity + 1
         if complexity then
            print("!Complexity: "..rarity)
         end
         return true
      end
      ------2
      if (let1 == "t" or let1 == "l" or let1 == "m" or let1 == "n" or let1 == "r"or let1 == "s")  and let2 == let1 and (string.len(tag) + 1) ~= length and  string.len(tag) > 1 then
         pass(let1,let2,2, "Two Con But Acc")
         return true
      end
      -------3
      if (let1 == "b" or let1 == "c" or let1 == "d" or let1 == "f" or let1 == "g" or let1 == "k" or let1 == "p" or let1 == "t" or let1 == "w") and let2 == "r" and (string.len(tag) + 1) ~= length then
         pass(let1,let2,3, "Two Con But R Acc")
         return true
      end
      -------4
      if (let2 == "c" or let2 == "h" or let2 == "k" or let2 == "l" or let2 == "m" or let2 == "n" or let2 == "p" or let2 == "q"or let2 == "t"or let2 == "w") and let1 == "s" and (string.len(tag) + 1) ~= length then
         pass(let1,let2,4, "Two Con But S Acc")
         return true
      end
      -------5
      if (let1 == "b" or let1 == "c" or let1 == "f" or let1 == "g" or let1 == "k" or let1 == "p" or let1 == "s") and let2 == "l" and  (string.len(tag) + 1) ~= length then
         pass(let1,let2,5, "Two Con But L Acc")
         return true
      end
      ------6
      if let1 == "c" and let2 == "k" and  string.len(tag) > 1 then
         pass(let1,let2,6, "Two Con But ck Acc")
         return true
      end
      ------7
      if let1 == "-" or let2 == "-" then
         pass(let1,let2,7, "- Acc")
         rarity = rarity + 1
         if complexity then
            print("!Complexity: "..rarity)
         end
         return true
      end
      ------8
      if string.len(tag) >= 1 and id(let1) == "vowel" and (let2 == "e" or let2 == "y")then
         if math.random(1,2) == 1 then
            pass(let1,let2,8, "Two Vow But E/Y Acc Try Pass")
            return true
         end
      end
      return false
   end

   function rules()
      cont = true
      pptletter = string.lower(string.sub(tag, string.len(tag) - 1 ,string.len(tag) - 1))
      ptletter = string.lower(string.sub(tag, string.len(tag) ,string.len(tag)))
      tletter = string.lower(letter)

      --------1

      if ptletter == tletter and vow ~= true and exceptions(ptletter, tletter) ~= true then
         rulenum = 1
         rulecode = "Con Rep Twi"
         reason =  tostring(ptletter..tletter)
         cont = false
      end

      --------2

      if pptletter == ptletter and ptletter == tletter then
         cont = false
         rulenum = 2
         rulecode = "Tri Let Rep"
         reason = tostring(pptletter..ptletter..tletter)
      end
      ---------3
      if string.len(tag) >= 1 then
         if id(ptletter) == "consonant" and id(tletter) == "consonant" and exceptions(ptletter, tletter) ~= true then
            rulenum = 3
            rulecode = "Two Consec Con"
            reason =  tostring(ptletter..tletter)
            cont = false
         end
      end
      ------4

      if string.len(tag) >= 2 then
         if id(ptletter) == "vowel" and id(tletter) == "vowel" and id(pptletter) == "vowel" then
            rulenum = 4
            rulecode = "Thr Consec Vow"
            reason =  tostring(pptletter..ptletter..tletter)
            cont = false
         end
      end
      ------5
      if string.len(tag) >= 2 then
         if id(ptletter) == "consonant" and id(tletter) == "consonant" and id(pptletter) == "consonant" and ptletter ~= "-" and tletter ~= "-" and pptletter ~= "-" then
            rulenum = 5
            rulecode = "Thr Consec Con"
            reason =  tostring(pptletter..ptletter..tletter)
            cont = false
         end
      end
      -----6
      if letter == "-" and ((compound == true or string.len(tag) < 3) or length - string.len(tag) + 1 < 4 or (string.len(tag) >= 2 or ( (id(pptletter) == "consonant" and id(ptletter) == "consonant")))) then
         rulenum = 6
         rulecode = "Bad Comp"
         reason =  tostring(letter)
         cont = false
      elseif letter == "-" then
         compound = true
      end
      -----7
      if string.len(tag) > 1 and pptletter == "-" and id(ptletter) == "vowel" and id(tletter) == "vowel" then
         rulenum = 7
         rulecode = "- Vow Vow"
         reason =  tostring(pptletter..ptletter..tletter)
         cont = false
      end
      ------8
      if string.len(tag) >= 1 and id(ptletter) == "vowel" and id(tletter) == "vowel" and exceptions(ptletter, tletter) ~= true then
         if math.random(1,trymax) ~= 1 then
            rulenum = 8
            rulecode = "Two Vow Try Fail"
            reason =  tostring(ptletter..tletter)
            cont = false
         else
            rarity = rarity + 3
            if complexity then
               print("Two Val Try Pass")
               print("!Complexity: "..rarity)
            end
         end
      end
      --------9
      if string.len(tag) >= 1 and ptletter == "y" and id(tletter) == "consonant" and exceptions(ptletter, tletter) ~= true then
         if math.random(1,trymax) ~= 1 then
            rulenum = 9
            rulecode = "Y Con Try Fail"
            reason =  tostring(ptletter..tletter)
            cont = false
         else
            rarity = rarity + 2
            if complexity then
               print("Y Con Try Pass")
               print("!Complexity: "..rarity)
            end
         end
      end
      -------10
      if string.len(tag) == length - 1 and tletter == "q" then
         rulenum = 10
         rulecode = "Last Let Q"
         reason = tostring(ptletter..tletter)
         cont = false
      end
      ---------11
      if string.len(tag) > 1 and (pptletter == "q" and id(tletter) == "consonant") then
         rulenum = 11
         rulecode = "Qu then Cons"
         reason = tostring(pptletter..ptletter..tletter)
         cont = false
      end
      -------End
      if info then
         if cont == false then
            print("")
            print("Rule "..rulenum)
            print("Code: "..rulecode)
            print("Failed: "..reason.."\n")

         end
      end
      if cont == false then
         fail = true
      end
   end

   function sentence()
      senone = tabl(sentencestarts)
      if recipient == "planet" or recipient == "moon" then
         sentwo = tabl(spacesentences)
      elseif recipient == "sun" then
         sentwo = tabl(sunsentences)
      elseif recipient == "animal" then
         sentwo = tabl(animalsentences)
      else
         sentwo = tabl(plantsentences)
      end
      if math.random(1,3) > 1 then
         punc = "."
      else
         punc = "!"
      end
      senfull = senone.." "..sentwo.." "..prevtag..punc
   end
   function fsylable()
      nnext = id(tletter)
      sylable = sylable + 1
      if sylable > 2 then
         rarity = rarity + 2
      end
      if complexity == true then
         print("Sylable "..sylable)
         print("!Complexity: "..rarity)
      end
   end

   function choose()
      repeat
         size = tablelength(parts)
         preval = val1
         val1 = math.random(1,size)
         parts[val1]()
         rules()
         if cont == false then
            would = would..letter
            rarity = prevrarity
            would3 = string.sub(would3,1,string.len(would3)-1)
            fail3 = false
         end
         if complexity then
            print("!Complexity: "..rarity)
         end
         if rarity > 5 and cont then
            trymax = trymax + 1
            if complexity then
               print("Trymax now: "..trymax)
            end
         end
         if rarity > 9 and cont and string.len(tag) + 1 ~= length - 1 and string.len(tag) + 1 < length  and sylable > 1 then

            length = length - 1
            shortened = shortened + 1
            if complexity then
               print("Length now: "..length)
            end
         end
      until cont
      --Syl check
      if string.len(tag)== 0 then
         nnext = id(tletter)
         if id(tletter) == "vowel" then
            fsylable()
         end
      else
         if id(ptletter) == nnext and id(tletter) ~= nnext then
            if id(tletter) == "vowel" and (tletter ~= "e" or (tletter == "e" and  ptletter == "g" or ptletter == "j")) then
               fsylable()
            elseif string.len(tag) > 1 and tletter == "e" and id(pptletter) == "consonant" then
               fsylable()
            elseif string.len(tag) == 1 and tletter == "e" then
               fsylable()
            elseif id(tletter) == "vowel" and tletter == "e" then
               echeck = string.len(tag)
            else
               nnext = id(tletter)
            end --]]
         elseif id(ptletter) == nnext and id(tletter) == nnext and nnext == "vowel" and ptletter ~= tletter and tletter ~= "y" and (tletter ~= "e" or (tletter == "e" and string.len(tag) > 1 and ptletter ~= "u" and pptletter ~= "q")) then
            fsylable()
         end
         if string.len(tag) == echeck + 1 and ((tletter == "e" and ptletter == "e") or id(tletter) == "consonant")   then
            fsylable()
         end--]]
      end
      firstly()
      tag = tag..letter
      if string.lower(letter) == "q" then
         tag=tag.."u"
      end
   end

   function name()
      i = 0
      repeat -- amount of letters

         choose()
         --[[print("try: "..(string.len(tag)))
      print("len: "..length)--]]
      until string.len(tag) >= length
      addition()
      if recipient == "animal" or recipient == "plant" then
         organition()
      end
      print("")
      if all and recipient == "planet" then
         print(string.upper(recipient)..string.rep(" ", 22 - string.len(recipient)).."Seed:")
      elseif all == false then
         print(string.upper(recipient)..string.rep(" ", 22 - string.len(recipient)).."Seed:")
      else
         print(string.upper(recipient))
      end
      if all and recipient == "planet" then
         print(tag..string.rep(" ", 22 - string.len(tag))..seed)
      elseif all == false then
         print(tag..string.rep(" ", 22 - string.len(tag))..seed)
      else
         print(tag)
      end
      if data or info or complexity then
         print("")
      end
      if fail and (info or data) then
         print("Info:  "..would)
      end
      if (complexity or data) and fail2 then
         stringrare ="Rarity:  "..would2
         print(stringrare)
      end
      if (complexity or data) and fail3 then
         stringcomp="Complexity: "..would3
         stringcomp2 = string.rep(" ", string.len(stringrare)-string.len(stringcomp))..stringcomp
         print(stringcomp2)
      end
      if complexity or complevel or data then
         stringlevel = "Level: "..rarity
         stringshort="Cut: "..shortened
         length1 = "Length: "..length
         if fail3 and (complexity or data) then
            print(string.rep(" ", string.len(stringcomp2)-string.len(stringlevel))..stringlevel)
            print(stringshort)
            print(length1)
         else
            print("Complexity "..stringlevel)
            print(stringshort)
            print(length1)
         end
      end
      if data or info or complexity then
         print("Sylables: "..sylable)
         print("")
      end
      prevtag = tag
   end





   for i = 0, 0 do --amount of names generated
      i = i + 1
      tag = ""
      would = ""
      would2 = ""
      would3 = ""
      fail = false
      fail2 = false
      fail3 = false
      val = 0
      first = true
      val1 = ""
      letter = ""
      vow = true
      rarity = 0
      shortened = 0
      sylable = 0
      echeck = -2


      name()
      if sentence1 then
         sentence()
         print(senfull)
      end
   end
   print(string.rep("-",string.len(prevtag)))
   if all == false then
      break
   end
   if enter and all then
      print("\"ENTER\" to continue.")
      io.read()
   end
until finished
print("\n\n")