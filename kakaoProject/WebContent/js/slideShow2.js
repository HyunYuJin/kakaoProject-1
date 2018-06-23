$(function(){
    //이동한 이미지의 index 값 저장
    var movedIndex;
    
    //슬라이드 패널을 움직여주는 함수
    function moveSlide(index){
        //전달받은 index값을 movedIndex에 저장
        //prev와 next 메소드에서 사용
        movedIndex = index;
        
        //슬라이드 이동
        var moveLeft = -(index * 1000); // 왼쪽으로 이동 거리
        $('#slidePanel').animate({'left':moveLeft}, 'slow');
    }
    
    //초기 슬라이더 위치 랜덤하게 지정
    var randomNumber = Math.floor(Math.random()*5);
    moveSlide(randomNumber);
    
    //prev 버튼 클릭하면 이동
    $('#prevButton').on('click', function(){
        if(movedIndex != 0) //첫번째가 아니라면
            movedIndex = movedIndex -1; //인덱스 값 -1
        moveSlide(movedIndex); //인덱스 값 전달
    });
    
    //next 버튼 클릭하면
    $('#nextButton').on('click', function(){
        if(movedIndex != 5) //마지막이 아니라면
            movedIndex = movedIndex +1;
        
        else{
            movedIndex = 0;
        }
        moveSlide(movedIndex);
    });
})