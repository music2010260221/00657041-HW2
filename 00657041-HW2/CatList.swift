//
//  DogList.swift
//  00657041-HW2
//
//  Created by User04 on 2020/4/13.
//  Copyright © 2020 110. All rights reserved.
//

import SwiftUI

struct CatList:View{
    let Bigcats=[
        Cat(name: "西伯利亞貓", type: "Russian Blue",information:"俄羅斯國貓，最早有文獻記錄都是在11世紀，在很早以前西伯利亞貓的名聲就全世界盡知，但由於數量比較少，所以深入了解該品種的人就比較少了。西伯利亞貓憑藉著霸氣又華麗的外表和俊朗的神態，深受全世界愛貓者的歡迎，還一度被譽為俄羅斯的國寶。"),
        Cat(name: "波斯貓", type: "Persian cat",information:"波斯貓起源於波斯（即今天的伊朗），16世紀首次出現在英國，一般認為首先將波斯貓帶入歐洲的是義大利的旅行家Pietro Della Valle，雪白蓬鬆的長毛被視為高貴的象徵，在歐洲一出現便很受歡迎，經繁殖至今品種愈來愈多。但今天所見的長毛波斯貓的品種則是19世紀時所產生 正確起源不詳。"),
        Cat(name: "峇里貓", type: "Balinese",information:"是一種長毛的家貓，毛色近似暹羅貓，有天藍色的眼睛。它實際就是由暹羅貓培育出來的長毛品種。與暹羅貓一樣，其性格十分活躍。雖然名字里有巴里二字，但它本身與峇里島沒有關係。"),
        Cat(name: "英國長毛貓", type: "BritishLonghair",information:"19世紀的末期，英國的育種專家們在這些土著貓中選出最美麗的貓咪，開始了漫長的培育工作，最終這個被稱為英國長毛貓的品種誕生了。1871年，英國長毛貓參加了倫敦的水晶宮博覽會，起品種也從此開始被命名。1901年，英國貓俱樂部成立了，那時的英國長毛貓還是體型大而結實的藍色毛種，很像法國的卡爾特貓，後來由于它們的後代越來越像，甚至不分彼此。"),
        Cat(name: "涅瓦河假面貓", type: "????",information:"涅瓦河假面貓與其他貓咪、狗狗和孩子都能相處融洽。不管牠們體型如何，都非常敏捷靈活，喜歡跳高高。這種貓需要飼主的關注，但是不喜歡被不認識的人擁抱和撫摸。")
    ]
    let Smallcats=[
        Cat(name: "北美洲短毛貓", type: "American Shorthair",information:"是原產美國的一種貓，其祖先為歐洲早期移民帶到北美的貓種，與英國短毛貓和歐洲短毛貓同類。"),
        Cat(name: "東奇尼貓", type: "TONKINESE",information:"東奇尼貓是英美兩地用暹羅貓和緬甸貓雜交所培育出的純種短毛貓。如同暹羅貓一樣，這種貓也有重點色，不過遠不如暹羅貓明顯。體型介於暹羅貓和巴厘貓之間，不胖也不瘦，它身強體健，肌肉發達。頭部和暹羅貓一樣，呈稍圓的楔子形。有一對呈杏仁形的綠寶石色的大眼，雙耳長在頭部的兩側，前端較圓。它的皮質很好，有點像貂皮。體毛濃密，極為柔軟。"),
        Cat(name: "唐斯芬克斯貓", type: "Sphynx",information:"斯芬克斯貓又稱加拿大無毛貓。這種貓是由於基因突變而產生的品種，在1966年，加拿大多倫多市養貓愛好者從一窩幾乎全都是無毛的幼貓中，經過近交選育，特意為對貓毛過敏的愛貓者培育成的，價格普遍在台幣20,000元以上，像一些品相好的或是純種賽級價格更是高的離譜，在台幣40,000元以上。"),
        Cat(name: "埃及貓", type: "Egyptian Mau",information:"現在並未發現埃及貓的確實起源的紀錄。一般認為牠是非洲野貓的後裔。在古埃及的壁畫上都繪有埃及貓。現代的埃及貓來自義大利。1953年被放逐到義大利的俄羅斯公主Natalie Troubetskoy會見埃及使節。她遇到了使節的貓，並請大使從埃及家鄉帶幾隻埃及貓給她飼養。1968年一隻埃及貓獲得幾個比賽的獎項。以後有英國的飼養者嘗試以阿比西尼亞貓、暹羅貓和虎斑貓混種而生此品種，但生出的雖然外型相似，但並非真正的埃及貓。埃及貓的額上會有一個甲蟲形或M字形的印記。後者通常是來自美國。"),
        Cat(name: "雪鞋貓", type: "Snowshoe",information:"由美國費城的一名培育者用暹羅貓與其他品種的貓雜交而成的貓。早期這種貓曾遭部分人士反對，擔心影響暹邏貓的血統，但現在發展很快。名稱來自於其白色的腳掌。"),
        Cat(name: "塞席爾貓", type: "Seychellois",information:"塞席爾貓的被毛中等長度，耳朵很大，基部寬，位置高，耳尖略圓，兩耳間距很寬。頭部呈楔形，鼻樑高而直，很突出，鼻樑和鼻子都呈黑色，在整個臉上很顯眼，吻部較大，眼睛又圓又大。頸部很長，身體修長，整體感覺十分優雅。"),
        Cat(name: "暹羅貓", type: "Siamese cat",information:"是很早被承認的東方短毛貓品種之一。這個品種的由來尚未確定，相信是來自東南亞。據稱是源自暹羅（今泰國）寺廟裏飼養的貓。在泰國裏被稱Wichien-maat（วิเชียรมาศ），即「月亮鑽石」的意思。在二十世紀開始暹羅貓已成為歐美受歡迎的貓品種之一。")
    ]


    var body: some View{
        NavigationView{
            List{
                ScrollView(.horizontal){
                    HStack(spacing:20){
                        ForEach(0..<9){ (item) in
                            NavigationLink(destination:GridlayoutCat()){
                            Image("cat\(item)")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width:200)
                                .clipped()
                            }
                        }
                    }
                }
                Section(header:Text("ShortHair Cat")) {
                    ForEach(Bigcats.indices){(index) in
                        NavigationLink(destination:CatDetail(cat:self.Bigcats[index])){
                            CatRow(cat:self.Bigcats[index])
                        }
                    }
                }
                Section(header:Text("LongHair Cat")){
                    ForEach(Smallcats.indices){(index) in
                        NavigationLink(destination:CatDetail(cat:self.Smallcats[index])){
                            CatRow(cat:self.Smallcats[index])
                        }
                    }
                }
            }
        }.navigationBarTitle("貓咪")
}

struct CatList_Previews: PreviewProvider {
    static var previews: some View {
        CatList()
    }
}
}
