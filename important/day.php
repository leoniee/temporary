 <?php

    $startdate=strtotime("2012-06-05");

    $enddate=strtotime("2013-03-01");

    //上面的php时间日期函数strtotime已经把字符串日期变成了时间戳,这样只要让两数值相减,然后把秒变成天就可以了,比较的简单,如下:

    $days=round(($enddate-$startdate)/3600/24) ;

    echo "天数：".$days; //days为得到的天数;

    ?>
