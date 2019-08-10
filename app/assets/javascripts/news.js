$(document).ready(function(){
	$("#slide").skippr({
		//スライドショーの変化
		tranditon : 'slide',
		//変化にかかる時間
		speed : 1000,
		//easingの種類
		easing : 'easeOutQuart',
		//ナビゲーション
		navType : 'block',
		//子要素の種類
		childrenElementType : 'div',
		//ナビゲーションの矢印の表示
		arrows : true,
		//スライドショーの自動再生
		autoPlay : true,
		//スライド切り替え間隔
		autoPlayDuration : 3000,
		//キーボードの矢印キーによるスライド送りの設定
		keyboardOnAlways : true,
		//一枚目のスライド表示時に戻る矢印を表示するかどうか
		hidePrevious : false
	});
});

