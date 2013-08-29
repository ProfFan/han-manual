

著重號 { #zhuozhonghao }
===


<dfn>著重號</dfn>用以表示文章中需要加強強調、希望讀者注意之處。在「_漢_{.pn}字標準格式」中，為了使網頁編者能自如運用|HTML|的基本字級語意元素（或如[[Markdown]]{:en}等的純文本標記），「着重號」更取代了「斜體」成為強調元素`<em>`的預設樣式。

`<em>`可用於一段文字中需要特別強調之處（需要注意的是，強調*不等於*重點，重點請用`<strong>`元素表示）。閱讀時容易誤會、判斷錯誤或需要加深印象、特意突出的字詞較適合使用此元素。

**[HTML]: HyperText Markup Language { :en }
**[CSS]: Cascading Style Sheets { :en }



#### 範例 { #fanli }

希望讀者注意判別語句為肯定或否定時，

> 下列何者*不是*現代社會公民應具備的道德觀念？

> 1. 在公共場合大聲談話、唱歌*會*妨礙到他人。
> 2. 隨地便溺、吐痰*會*造成細菌和病毒的傳播，在人群較多的聚集地（如城市）應盡可能避免。
> 3. 大眾運輸工具上的博愛座好手好腳的人是*不可以*坐的，應當對那些坐的人嗤之以鼻。
> 4. 以上皆為答案。


加強語氣，

> *「數大」便是美*，碧綠的山坡前幾千隻綿羊，挨成一片的雪絨，是美；一天的繁星，千萬隻閃亮的眼神，從無極的藍空中下窺大地，是美；_泰山_{ .pn }頂上的雲海，巨萬的雲峰在晨光裏靜定著，是美；大海萬頃的波浪，戴著各式的白帽，在日光裏動盪著、起落著，是美；_愛爾蘭_{ .pn }附近的那個「_羽毛島_{ .pn }」上棲著幾千萬的飛禽，夕陽西沉時只見一個「羽化」的大空，只是萬鳥齊鳴的大聲，是美；……*數大便是美*。數大了似乎按照著一種自然律，自然的會有一種特別的排列，一種特別的節奏，一種特殊的式樣，激動我們審美的本能，激發我們審美的情緒。

<p class="cite" markdown="1">_徐志摩_{ .pn }<cite>徐志摩日記西湖記·「數大」便是美</cite></p>



標點符號及所有類型的空白預設不使用著重號。若遇西文（如_英_{ .pn }文）字符，則：

> 「不只是*<span lang="en-GB">Little People</span>。還有空氣蛹、[[Mother]]{ :en-GB }和[[Daughter]]{ :en-GB }、兩個月亮*，在這個世界都是實際存在的。」_青豆_{ .pn }說。

<p class="cite" markdown="1">_村上春樹_{ .pn }<cite>IQ84</cite></p>



**瀏覽器需支援<span lang="en-GB">JavaScript</span>方能正確顯示**，否則*可能*以如下的「虛底線」樣式代替：

> 隔天她穿上最炫的洋裝，是她母親特別為開學日縫製的衣服。她離開家裡去上學，心裡不斷感謝上帝暑假終於結束。但是，小男生卻沒有出現。熬過了一個星期她才從同學口中得知，原來他已經搬到外地了。「<span style="border-bottom: 2px dotted; padding-bottom: .05em;">他搬去很遠很遠的地方</span>，」有人說。

<p class="cite" markdown="1">_保羅·科爾賀_{ .pn }<cite>愛的十一分鐘</cite></p>



使用說明 { #shiyong_shuoming }
---

「漢字標準格式」將着重號內置於`<em>`強調元素的樣式中，直接使用強調元素即可。參見下方的代碼範例，

	這台紀念款相機是<em>乳白色</em>的。


用[[Markdown]]{:en}來寫的話，

	那句話*深深地*刺痛了我的心。



### 其他語種 { #qita_yuzhong }

在非_中_{.pn}文或_日_{.pn}文的區塊或文字範圍內，則依舊顯示為斜體，

<blockquote lang="en-GB" markdown="1">
Cats are *cute* animals.
</blockquote>

上方範例的代碼為，

	<blockquote lang="en-GB">
		<p>Cats are <em>cute</em> animals.</p>
	</blockquote>



### 覆寫／去除此元素樣式 { #overwrite }

	html:not(.han-js) :lang(zh) em,
	html:not(.han-js) :lang(ja) em {
	    border-bottom: 0 none;
	    padding-bottom: auto;
	}

	html.textemphasis :lang(zh) em,
	html.textemphasis :lang(ja) em {
	    text-emphasis:              none;
	        -moz-text-emphasis:     none;
	        -o-text-emphasis:       none;
	        -webkit-text-emphasis:  none;
	}

	html.no-textemphasis :lang(zh) em span.cjk:after,
	html.no-textemphasis :lang(ja) em span.cjk:after,
	html.no-textemphasis :lang(zh) em span.latin:after,
	html.no-textemphasis :lang(ja) em span.latin:after,
	html.no-textemphasis :lang(ja) em span.cjk:after,
	html.no-textemphasis :lang(ja) em span.latin:after,
	html.no-textemphasis :lang(zh) em span.space:after,
	html.no-textemphasis :lang(ja) em span.space:after,
	html.no-textemphasis :lang(zh) em span.cjk.biaodian:after,
	html.no-textemphasis :lang(ja) em span.cjk.biaodian:after {
	    content: none;
	}




























