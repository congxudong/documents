team_count=0
restore_count=0
cur_time=$(date +%Y%m%d%H%M%S)
while true;
do

hero_restore_red(){
	echo 恢复气血:$cur_time
	input tap 1150 40;
	sleep 0.1
	input tap 1000 135;
  	sleep 0.1
}

hero_restore_blue(){
	cur_time=$(date +%Y%m%d%H%M%S)
	echo 恢复魔法:$cur_time
	input tap 1150 40;
	sleep 0.1
	input tap 1100 135;
	sleep 0.1
}

summon_resotre_blue(){
	echo summon魔法:$cur_time
	input tap 1030 45;
	sleep 0.1
	#input tap 980 135;
	#sleep 0.1
}

enjoy_team(){
	cur_time=$(date +%Y%m%d%H%M%S)
	echo 加入团队:$cur_time
	input tap 840 40;
	sleep 0.1
	input tap 860 225;
	sleep 0.1
	input tap 738 350;
	sleep 0.1
}

#去对话框
#input tap 800 590;
#sleep 0.01;

#自动
input tap 1160 680;
#sleep 0.01;

#巫医
#echo 巫医
input tap 948 335;
#sleep 0.01;

if [ $team_count == 10 ]
then
	#enjoy_team
	team_count=0
fi

if [ $restore_count == 50 ]
then
	restore_count=0
	hero_restore_blue
	hero_restore_red
	summon_resotre_blue
fi

((team_count++))
((restore_count++))
echo "----------team_count:$team_count--restore_count:$restore_count-------------"
done

