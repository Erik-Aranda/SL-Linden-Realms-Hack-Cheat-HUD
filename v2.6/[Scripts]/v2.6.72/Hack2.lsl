string COK;
vector pos_now_diamante;
integer A;
integer B;
float SPEED1 = 0.85;
float SPEED2 = 0.15;
float OFFSET2 = -0.1;
float OFFSET3 = 0.2;
float H1 = 0.05;
float H2 = 0.05;
float TIMER2 = 1.0;
float TIMER3 = 0.7;
integer OKEYLOL;
integer RUNING;
integer ohfuck = 0;

list LR3 = ["LR 5","LR 25","LR 45","LR 145","LR 165","LR 185"];

vector finalmeta;

/*list pos = [
<207.06270, 121.90470, 33.58998>,
<203.97330, 83.14226, 44.37601>,
<177.54320, 62.42011, 47.18359>,
<149.66340, 45.14540, 47.98776>,
<118.74220, 38.08360, 47.14722>,
<117.49450, 58.50884, 47.21843>,
<116.92970, 82.99640, 47.46802>,
<81.26814, 90.54796, 47.40375>,
<24, 90, 150.40375>,
<-10.0, 90, 150.40375>,
<225.11070, 45.27156, 150.65418>,
<173.68050, 39.59608, 45.43098>,
<139.69220, 35.06337, 45.17567>,
<103.89190, 46.35436, 45.56430>,
<94,60,60>,
<62.42292, 88.95752, 45.16331>,
<62.64774, 109.63710, 45.39857>,
<36.62313, 157.30040, 45.68987>,
<81.79018, 180.86690, 45.44891>,
<119.62930, 202.61710, 45.68902>,
<121.69730, 232.03740, 45.27982>,
<84.97099, 252.43140, 45.69100>,
<84.97099, 260.0, 45.69100>,
<76.09387, 19.78930, 45.88945>,
<69.94662, 56.03041, 45.80716>,
<60.23677, 76.91305, 45.87012>,
<44.07113, 96.18721, 45.97919>,
<37.24153, 117.95130, 45.68359>,
<83.16047, 179.26370, 45.93412>,
<109,173,45>,
<114.59140, 205.62700, 45.20628>,
<159.23900, 225.52010, 45.57093>,
<202.24300, 198.74730, 45.21492>,
<172.72450, 121.55000, 45.78370>,
<194.35430, 59.24458, 55.85027>,
<223.68980, 6.68967, 45.07865>,
<223.68980, -10.0, 150.07865>,
<250,152,150>,
<260.0,152,150>,
<68.66127, 109.97980, 150.43517>,
<60.40542, 135.83000, 47.97721>,
<54.21893, 166.90630, 47.66426>,
<52.28639, 190.88940, 40.57625>,
<53.63313, 213.82000, 36.62672>,
<66.72683, 222.69480, 36.20720>,
<97.72859, 200.67190, 33.65221>,
<114.48970, 192.48970, 33.35702>,
<149.18210, 173.87520, 33.90932>,
<177.92150, 161.05380, 35.28635>,
<167.74780, 188.15950, 36.64512>,
<202.35040, 190.70940, 47.15454>,
<154.35720, 229.09080, 36.54658>,
<182.54780, 254.92690, 36.06098>,
<182.54780, 260.00000, 36.06098>,
<186.35330, 12.54137, 50.05774>,
<195.87830, 32.25896, 50.08196>,
<193.82920, 58.37637, 50.03783>,
<193.91010, 90.57433, 50.07334>,
<194.25760, 118.81420, 50.04789>,
<178.32350, 114.41400, 50.07826>,
<141.21720, 140.29160, 50.04401>,
<124.49130, 164.54770, 50.03981>,
<109.63350, 146.13730, 50.04084>,
<137.98610, 96.60983, 50.01275>,
<146.64130, 50.85603, 50.07299>,
<232.81250, 17.81922, 50.09128>,
<254.81250, 17.81922, 50.09128>,
<260.0, 17.81922, 50.09128>,
<44.21754, 21.46499, 57.33752>,
<60.30156, 69.46296, 57.17619>,
<52.50202, 91.87811, 57.75840>,
<45.28972, 122.62040, 57.10695>,
<48.58495, 152.49040, 57.12436>,
<60.45473, 179.04790, 57.38628>,
<84.84882, 194.41070, 57.81246>,
<109.65950, 193.80550, 57.43344>,
<156.15270, 160.39650, 57.89534>,
<185.79740, 148.67050, 57.67238>,
<204.13210, 61.22859, 57.20490>,
<198.72570, 13.41580, 57.79675>,
<198.72570, -10.0, 57.79675>,
<200.15100, 240.68640, 50.0>,
<165.77000, 173.23980, 50.0>,
<112.02280, 159.26910, 50.0>,
<89.67052, 141.80860, 50.0>,
<23.18815, 118.39160, 50.0>,
<38.40459, 79.34423, 50.0>,
<87.99603, 96.38289, 57.0>,
<124.69990, 75.30724, 57.0>,
<151.62650, 74.03288, 57.0>,
<186.20830, 24.57173, 50.0>,
<214.21200, 14.90245, 50.0>,
<246.78890, 6.95920, 50.0>,
<260.0, 6.95920, 50.0>,
<40.63087, 17.96940, 50.02510>,
<50.67601, 43.58294, 50.09523>,
<28.51935, 72.79016, 50.06686>,
<40.23674, 111.91390, 50.02673>,
<38.94442, 135.08630, 50.05827>,
<33.43270, 180.84140, 60.09402>,
<54.71522, 200.49220, 60.05317>,
<88.01340, 196.91350, 60.06602>,
<126.83670, 167.34290, 50.08151>,
<115.96230, 126.28350, 50.01832>,
<118.89880, 99.92361, 50.07605>,
<104.66940, 74.89396, 50.00522>,
<87.51409, 54.98374, 50.02116>,
<77.38003, 24.84316, 50.00313>,
<77.38003, -10.0, 50.00313>,
<64.11971, 236.89200, 40.24330>,
<84.77866, 224.94690, 40.59595>,
<89.72079, 197.10690, 40.21781>,
<88.23599, 172.04480, 40.74099>,
<87.09232, 148.48330, 40.09775>,
<91.76913, 119.82300, 40.39384>,
<92.93792, 96.31706, 40.98513>,
<79.53257, 60.37431, 40.17332>,
<56.76044, 46.58113, 40.10851>,
<31.30691, 40.47429, 40.50407>,
<11.61413, 38.38977, 40.24496>,
<-10.0, 38.38977, 40.24496>,
<185.17400, 65.49997, 61.71744>,
<182.13480, 109.18060, 62.38009>,
<165.33450, 153.12430, 65.67344>,
<133.21610, 195.03920, 66.75014>,
<108.07590, 185.74580, 70.96112>,
<88.80546, 161.74600, 70.37146>,
<64.54684, 142.68410, 68.61354>,
<48.82917, 123.51600, 67.82245>,
<59.10817, 94.34195, 79.52154>,
<111.49260, 97.99940, 77.02693>,
<133.30310, 73.25334, 73.54406>,
<139.37890, 27.82321, 61.34154>,
<149.95460, 5.06278, 54.65660>,
<149.95460, -5.0, 54.65660>,
<125.86980, 249.93640, 56.95389>,
<103.71750, 247.30770, 58.87203>,
<78.70016, 242.11980, 55.07681>,
<47.18739, 237.78010, 53.03855>,
<28.12142, 240.44780, 48.09759>,
<28.12142, 260.0, 48.09759>,
<8.36684, 34.25046, 69.98505>,
<-10.0, 34.25046, 69.98505>,
<234.95430, 56.82526, 68.87923>,
<208.50450, 100.33190, 47.99008>,
<203.51980, 162.43830, 37.54381>,
<208.61510, 186.52000, 33.88907>,
<208.47290, 223.10060, 33.55053>,
<190.96790, 212.34080, 33.70350>,
<171.95180, 172.68180, 31.35089>,
<153.33130, 148.82390, 40.91491>,
<160.36220, 117.38680, 40.88820>,
<156.41900, 65.47306, 43.99291>,
<128.27390, 66.92007, 45.99010>,
<113.39250, 91.61139, 43.10703>,
<91.82133, 72.70723, 47.38964>,
<64.44293, 91.32243, 43.07442>,
<65.26064, 133.57700, 33.77855>,
<72.48517, 150.37020, 36.06319>,
<42.99390, 189.81300, 32.70437>,
<32.23305, 210.16720, 27.69009>,
<36.89362, 228.56310, 22.37452>,
<32.75909, 253.63020, 23.32833>,
<32.75909, 260.0, 23.32833>,
<6.91435, 24.57360, 22.54200>,
<81.26814, 90.54796, 47.40375>,
<116.92970, 82.99640, 47.46802>,
<117.49450, 58.50884, 47.21843>,
<117.49450, 58.50884, 47.21843>,
<118.74220, 38.08360, 47.14722>,
<149.66340, 45.14540, 47.98776>,
<177.54320, 62.42011, 47.18359>,
<203.97330, 83.14226, 44.37601>,
<207.06270, 121.90470, 33.58998>,
<243.62770, 142.96450, 25.80481>,
<0,0,0>
];*/

list pos = [

/*<240,20,50>,
<220,20,50>,
<200,20,50>,
<180,20,50>,
<160,20,50>,
<140,20,50>,
<120,20,50>,
<100,20,50>,
<80,20,50>,
<60,20,50>,
<40,20,50>,
<20,20,50>,

<240,70,50>,
<220,70,50>,
<200,70,50>,
<180,70,50>,
<160,70,50>,
<140,70,50>,
<120,70,50>,
<100,70,50>,
<80,70,50>,
<60,70,50>,
<40,70,50>,
<20,70,50>,

<240,120,50>,
<220,120,50>,
<200,120,50>,
<180,120,50>,
<160,120,50>,
<140,120,50>,
<120,120,50>,
<100,120,50>,
<80,120,50>,
<60,120,50>,
<40,120,50>,
<20,120,50>,

<240,170,50>,
<220,170,50>,
<200,170,50>,
<180,170,50>,
<160,170,50>,
<140,170,50>,
<120,170,50>,
<100,170,50>,
<80,170,50>,
<60,170,50>,
<40,170,50>,
<20,170,50>,

<240,220,50>,
<220,220,50>,
<200,220,50>,
<180,220,50>,
<160,220,50>,
<140,220,50>,
<120,220,50>,
<100,220,50>,
<80,220,50>,
<60,220,50>,
<40,220,50>,
<20,220,50>,*/


<236.83170, 145.11850, 50.39278>,
<237.97250, 178.55050, 50.22407>,
<231.76200, 205.46950, 50.10040>,
<215.46330, 201.01960, 50.43554>,
<196.10910, 183.83620, 50.86104>,
<169.62960, 206.95290, 50.27440>,
<166.19510, 225.78850, 50.30024>,
<169.61810, 239.75950, 58.86073>,
<174.48290, 246.90550, 58.82789>,
<151.18070, 247.81760, 59.29323>,
<140.14640, 232.55750, 59.27515>,
<133.03370, 216.71240, 52.45975>,
<138.99460, 180.36430, 56.68092>,
<138.92200, 162.10010, 57.73389>,
<106.50120, 199.09600, 56.21889>,
<104.24470, 237.86630, 56.46902>,
<85.04722, 244.85540, 50.31826>,
<72.42500, 233.18230, 50.14780>,
<74.21605, 215.60340, 50.48747>,
<39.29575, 217.77040, 50.57753>,
<46.31153, 196.29580, 50.28514>,
<80.39409, 171.87510, 50.06134>,
<97.23461, 149.40950, 50.58001>,
<130.24580, 146.46950, 50.49590>,
<152.88970, 114.39840, 50.54626>,
<173.84790, 108.04560, 50.16504>,
<199.27560, 112.69850, 50.59119>,
<231.32450, 102.10770, 50.75712>,
<235.56260, 82.25412, 50.04881>,
<217.72750, 72.89468, 50.51107>,
<202.07240, 71.76588, 50.53232>,
<179.60760, 53.43968, 50.11433>,
<160.93570, 40.59840, 50.45301>,
<139.48920, 19.57846, 50.80694>,
<128.93310, 41.82425, 50.47301>,
<126.63970, 63.04670, 50.88948>,
<127.88360, 85.04847, 50.73211>,
<112.08230, 91.64642, 50.15737>,
<98.71488, 82.25650, 50.35266>,
<103.10230, 62.02186, 50.89410>,
<96.04760, 46.49353, 50.86275>,
<80.24220, 67.04556, 50.77219>,
<73.58453, 91.64517, 50.60571>,
<67.71743, 117.24560, 50.88643>,
<58.53094, 132.71490, 50.19551>,
<51.08496, 153.59620, 50.93871>,
<51.24342, 161.89200, 50.37925>,

<127,127,100>, //esto es para agarrar si hay un ultimo
<127,127,150>,
    //aca pasar a la otra region

<0,0,0>

];

MoveTarget(vector Pos,key WHOS,float SPEEDZX)
{
    llSleep(TIMER3);
    if(Pos!=ZERO_VECTOR)
    do
    {
        if(llGetRegionName()!=COK)
        {
            Pos=ZERO_VECTOR;
            COK=llGetRegionName();
            llStopMoveToTarget();
            A+=1;
            return;
        }
        else
        {
            llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
            if(Pos!=ZERO_VECTOR)
            llMoveToTarget(Pos,SPEEDZX);
        }
    }
    while(llVecDist(Pos,llGetPos()) > 40.0);
    if(Pos!=ZERO_VECTOR)
    llMoveToTarget(Pos,SPEEDZX);
}

StartServer2()
{
    owner = llGetOwner();
    llSetTimerEvent(0.0);
    llRequestPermissions(owner,0x800);
    ohfuck=0;
    llStopMoveToTarget();
    finalmeta=ZERO_VECTOR;
    A=0;
    RUNING=0;
    FXDUKS=0;
    llSetTimerEvent(0.0);
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
    llStopMoveToTarget();
    llSend("kW3a"+(string)llGetUsedMemory());
}

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}

list Boxes = [
<224,2, 50.0>,
//<53.86840, 158.02270, 50.0>,
<53.86840, 158.02270, 30.0>,

//<146.16490, 158.90610, 50.0>,
<146.16490, 158.90610, 30.0>,

//<187.84520, 68.16219, 50.0>,
<187.84520, 68.16219, 46.0>,

//<166.93430, 219.29380, 50.0>,
<166.93430, 219.29380, 30.0>,

//<187.88240, 174.86230, 50.0>,
<187.88240, 174.86230, 30.0>,

//<128.96990, 76.33781, 50.0>,
<128.96990, 76.33781, 30.0>,

//<160,33, 50.0>,
<160,33, 30.0>,

//<36,86, 50.0>,
<36,86, 30.0>,

//<216,191, 50.0>,
<216,191, 30.0>,

//<92.36569, 99.48085, 50.0>,
<92.36569, 99.48085, 30.0>,

//<107.00680, 134.10600, 50.0>,
<107.00680, 134.10600, 30.0>,

//<105.84550, 196.01010, 50.0>,
<105.84550, 196.01010, 30.0>,

//<95.91953, 69.16455, 50.0>,
<95.91953, 69.16455, 30.0>,

<0,0,0>
];
float XDXD = 3.0;//reach to same position
float SPEED_LINDEN_REALMS5 = 0.045;//speed
float SPEED_LINDEN_REALMS45 = 0.045;

integer OXO;

ProLAVA(list pos,float SPEED2X,float dists)
{
    finalmeta = llList2Vector(pos,A);
    if((finalmeta==ZERO_VECTOR))
    {
        llStopMoveToTarget();
        llStopMoveToTarget();
        llStopMoveToTarget();
        finalmeta=ZERO_VECTOR;
        A=0;
    }
    else if(OKEYLOL==0)
    {
        MoveTarget(finalmeta,owner,SPEED2X);
        float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
        if(ok<=dists)
        {
            ohfuck=0;
            llSensorRemove();
            A+=1;
            llSensorRepeat("", "", AGENT|SCRIPTED, 20.0, PI, DEG_TO_RAD);
            OKEYLOL=1;
        }
    }
}

ProLAVA2(list pos,float SPEED2X,float dists)
{
    finalmeta=llList2Vector(pos,A);
    if(finalmeta==ZERO_VECTOR)
    {
        llStopMoveToTarget();
        finalmeta=ZERO_VECTOR;
        A=0;
    }
    else
    {
        MoveTarget2(finalmeta,owner,SPEED2X);
        if(llVecDist(llGetPos(),finalmeta)<=dists)
        {
            A+=1;
        }
    }
}
MoveTarget2(vector Pos,key WHOS,float SPEEDZX)
{
    do
    {
        llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
        llMoveToTarget(Pos,SPEEDZX);
    }
    while(llVecDist(Pos,llGetPos()) > 40.0);
    llMoveToTarget(Pos,SPEEDZX);
}

list POSRegion12F = [
<226.46560, 234.37460, 46.28009>,
<226.46560, 234.37460, 45.58009>,
<226.46560, 234.37460, 46.28009>,
<226.46560, 234.37460, 45.58009>,
<0,0,0>
];

integer FXDUKS;
string xD = "Linden Realms Profesional HackV2.6:";
integer bahls;
key owner;

default
{
    state_entry()
    {
        StartServer2();
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            StartServer2();
        }
    }
    changed(integer c)
    {
        if(c & CHANGED_REGION) 
        {
            llSleep(1.0);
            if(bahls%2)
            {
                integer jx;
                for (jx = 0; jx < 10; jx++)
                {
                    llOwnerSay("@setenv_preset:Night=force");
                    llSleep(0.1);
                }
            }
            else
            {
                integer jx;
                for (jx = 0; jx < 10; jx++)
                {
                    llOwnerSay("@setenv_preset:Midday=force");
                    llSleep(0.1);
                }
            }
        }
    }
    sensor(integer detected)
    {
        if(ohfuck==1)
        {
            integer detected2=detected;
            while(detected2--)
            {
                key keys = llDetectedKey(detected2);
                list GRZ = llGetObjectDetails(keys,[OBJECT_POS,OBJECT_CREATOR,OBJECT_OWNER]);
                if(llList2Key(GRZ,1)=="2069bbc2-6c4d-4680-9ec0-7dfe260c2d80" & llList2Key(GRZ,2)=="efd3d802-701d-48f0-93ab-fce050e6f2ac")
                {
                    if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
                    {
                        pos_now_diamante = llList2Vector(GRZ,0) + <0,0,0.5>;
                        rotation rot = llEuler2Rot(<90,90,-90> * DEG_TO_RAD);
                        llClearCameraParams();
                        llSetCameraParams([
                            CAMERA_ACTIVE, 1,
                            CAMERA_BEHINDNESS_ANGLE, 0.0,
                            CAMERA_BEHINDNESS_LAG, 0.0,
                            CAMERA_DISTANCE, 10.0,
                            CAMERA_FOCUS, pos_now_diamante+(<1,0,0>*rot),
                            CAMERA_FOCUS_LAG, 0.05 ,
                            CAMERA_FOCUS_LOCKED, TRUE,
                            CAMERA_FOCUS_OFFSET,<-10,-10,-10>,
                            CAMERA_FOCUS_THRESHOLD, 0.0,
                            CAMERA_PITCH, 0.0,
                            CAMERA_POSITION, pos_now_diamante,
                            CAMERA_POSITION_LAG, 0.0,
                            CAMERA_POSITION_LOCKED, TRUE,
                            CAMERA_POSITION_THRESHOLD, 0.0
                        ]);   
                        llSleep(2.0);
                    }
                }
            }
            ohfuck=0;
            llSetTimerEvent(DEG_TO_RAD);
            detected = 0;
            detected2 = 0;
            llSensorRemove();
        }
        else
        {
            integer detected2=detected;
            integer detected1=detected;
            list GRZ;
            integer existe;
            integer serverside = 0;
            while(detected1--)
            {
                key keys = llDetectedKey(detected1);
                //llOwnerSay((string)keys);
                GRZ = llGetObjectDetails(keys,[OBJECT_OWNER,OBJECT_CREATOR,OBJECT_POS]);
                if(llList2Key(GRZ,0)=="f2683489-f313-47ee-864b-a69754b18677" & llList2Key(GRZ,1)=="2069bbc2-6c4d-4680-9ec0-7dfe260c2d80")
                {
                    //llOwnerSay("[AMULET OK]");
                    serverside+=1;
                    jump break;
                }
            }
            @break;
            if(serverside==1)
            {
                while(detected2--)
                {
                    key keys = llDetectedKey(detected2);
                    if(llGetAgentSize(keys)) 
                    {
                        existe=1;
                        list PERSONA = llGetObjectDetails(keys,[OBJECT_POS]);
                        float ok = (float)llVecDist((vector)llList2Vector(PERSONA,0),(vector)llList2Vector(GRZ,2));
                        if(ok>5.0)
                        {
                            //llOwnerSay("[AMULET OK2]");
                            serverside+=1;
                            jump break2;
                        }        
                    }        
                }
                @break2;
            }
            if(existe==0 & serverside==1)
            {
                //llOwnerSay("[AMULET OK2]");
                serverside+=1;
            }
            if(serverside==2)
            {
                llSend("CAMARASENSOR2X");
                llSend("HEREHEHE");
                llStopMoveToTarget();
                llStopMoveToTarget();
                llStopMoveToTarget();
                finalmeta=ZERO_VECTOR;
                A=0;
                A=0;
                OKEYLOL=1;
            }
            else 
            {
                OKEYLOL=0;
            }
            detected = 0;
            detected1 = 0;
            detected2 = 0;
            llSensorRemove();
        }
    }
    no_sensor()
    {
        if(ohfuck==1)
        {
            llSetTimerEvent(DEG_TO_RAD);
            ohfuck=0;
            llSleep(1.0);
        }
        else
        {
            OKEYLOL=0;
        }
    } 
    link_message(integer sender_num, integer num, string str, key id)
    {
        if((str=="XFORKX"))
        {
            llSetTimerEvent(0.0);
            llSetTimerEvent(0.0);
            FXDUKS=0;
            finalmeta=ZERO_VECTOR;
            A=0;
            COK=llGetRegionName();
            ohfuck=0;
            FXDUKS=0;
            finalmeta=ZERO_VECTOR;
            A=0;
            COK=llGetRegionName();
            llSetTimerEvent(DEG_TO_RAD);
            llSetTimerEvent(DEG_TO_RAD);
            llOwnerSay("[OK AUTOSCRISTALES]");
        }
        else if(str=="stopXD")
        {
            llOwnerSay(">> Agarrrando diamante, posicion: "+(string)pos_now_diamante);
            llSensorRemove();
            llSetTimerEvent(0.0);
            llStopMoveToTarget();
            while(1)
            {
                vector reposicion = pos_now_diamante+<0,0,50>;
                MoveTarget2(reposicion,owner,0.045);
                if(llVecDist(llGetPos(),reposicion)<=1.1)
                {
                    jump breakXF;
                }
            }
            @breakXF;
            llStopMoveToTarget();
            while(1)
            {
                vector reposicion = pos_now_diamante+<0,0,1>;
                MoveTarget2(reposicion,owner,0.045);
                if(llVecDist(llGetPos(),reposicion)<=1.0)
                {
                    jump breakXD;
                }
            }
            @breakXD;
            llStopMoveToTarget();
            while(1)
            {
                vector reposicion = pos_now_diamante+<0,0,50>;
                MoveTarget2(reposicion,owner,0.045);
                if(llVecDist(llGetPos(),reposicion)<=1.1)
                {
                    jump breakXDb;
                }
            }
            @breakXDb;
            llOwnerSay(">> Agarrando diamante, DONE.");
            llStopMoveToTarget();
            llSleep(0.1);
            llSetTimerEvent(DEG_TO_RAD);
            //MoveTarget2(finalmeta,owner,SPEED1);
        }
        else if(str=="FXDUK")
        {
            FXDUKS=1;
            ohfuck=0;
            llSetTimerEvent(DEG_TO_RAD);
        }
        else if(str=="YALPTM")
        {
            FXDUKS=0;
        }
        else if(llGetSubString(str,0,3)=="RAY1")
        {
            FXDUKS=0;
            finalmeta=(vector)llDeleteSubString(str,0,3);
        }
        else if(llGetSubString(str,0,3)=="RAY2")
        {
            FXDUKS=0;
            A=(integer)llDeleteSubString(str,0,3);
        }
        else if(llGetSubString(str,0,3)=="RAY3")
        {
            FXDUKS=0;
            OXO=(integer)llDeleteSubString(str,0,3);
        }
        else if(str=="BNBNX")
        {
            bahls=1;
            llOwnerSay("@setenv_preset:Night=force");
            llOwnerSay("@setenv_preset:Night=force");
            llOwnerSay("@setenv_preset:Night=force");
        }
        else if(str=="RAY")
        {
            FXDUKS=0;
            if(RUNING==0)
            {
                finalmeta=ZERO_VECTOR;
                A=0;
                OKEYLOL=0;
                RUNING=1;
                llSend("CLEANMC");
            }
            ProLAVA(Boxes,SPEED_LINDEN_REALMS5,XDXD);
        }
        else if(str=="SensorRO")
        {
            FXDUKS=0;
        }
        else if(str=="XSTOPX")
        {
            llSensorRemove();
            RUNING=0;
            FXDUKS=0;
            llStopMoveToTarget();
        }
        else if(str=="stopnowsensor")
        {
            FXDUKS=0;
        }
        else if(str=="okOKERE")
        {
            FXDUKS=0;
            llOwnerSay("-- AutoCristales reseteado, buscando posicion cercana, no se mueva por favor.");
            vector posicionowner = llGetPos();
            integer OKLIST = llGetListLength(pos);
            list TEST;
            integer i;
            for(i=0; i<OKLIST; i++)
            {
                TEST=[(float)llVecDist((vector)posicionowner,(vector)llList2Vector(pos,i))]+TEST;
            }
            float results = llListStatistics(LIST_STAT_MIN,TEST);
            integer RESULT = llListFindList(TEST,(list)[results]);
            llOwnerSay("-- AutoCristales Iniciado...");
            finalmeta=ZERO_VECTOR;
            A=RESULT;
            COK=llGetRegionName();
            ohfuck=0;
            llSetTimerEvent(DEG_TO_RAD);
        }
        else if(llGetSubString(str,0,4)=="OFFSE")
        {
            llOwnerSay("No esta funcionando. Desabilitado dentro del script.");
        }
        else if((str=="STOPSTOP" & B%2))
        {
            bahls=0;
            FXDUKS=0;
            B=0;
            B=0;
            llOwnerSay("[DEBUG] Se ha parado el AutoCristales por el usuario, use el boton ResetPaseo para volver, en el caso de volver debe estar lo mas cerca posible.");
            llOwnerSay("@setenv_preset:Midday=force");
            llOwnerSay("@setenv_preset:Midday=force");
            llOwnerSay("@setenv_preset:Midday=force");
            ohfuck=0;
            llStopMoveToTarget();
            llSetTimerEvent(0);
            llStopMoveToTarget();
            StartServer2();
        }
        else if((str=="STOPSTOP2" & B%2))
        {
            FXDUKS=0;
            llSend("ResetXB");
            B=0;
            B=0;
            ohfuck=0;
            llStopMoveToTarget();
            llSetTimerEvent(0);
            llStopMoveToTarget();
            StartServer2();
        }
    }
    timer()
    {
        if(FXDUKS%2)
        {
            ProLAVA2(POSRegion12F,0.044444444,0.6);
            if(finalmeta==ZERO_VECTOR)
            {
                finalmeta=ZERO_VECTOR;
                finalmeta=ZERO_VECTOR;
                A=0;
                A=0;
                FXDUKS=0;
                llSleep(0.5);
                llStopMoveToTarget();
                llStopMoveToTarget();
                llStopMoveToTarget();
                llOwnerSay(xD+" Obteniendo los Lindens & Apagando script...");
                llOwnerSay(xD+" Puede usar el hud en otro alter y seguir. Fin del juego.");
                llSend("STOPTOPE");
                llSetTimerEvent(0.0);
                ohfuck=0;
            }
        }
        else
        {
            if(llGetRegionName()!=COK)
            {
                COK=llGetRegionName();
                llStopMoveToTarget();
                A+=1;
            }
            else
            {
                B=1;
                finalmeta = llList2Vector(pos,A);//Se agrego la Z
                if(finalmeta==ZERO_VECTOR)
                {
                    llStopMoveToTarget();
                    llSetTimerEvent(0);
                    ohfuck=0;
                    llStopMoveToTarget();
                    llSend("ResetXB");
                    llOwnerSay("Recoleccion de los diamantes: AutoCristales Finalizado.");
                    StartServer2();
                }
                else
                {
                    MoveTarget2(finalmeta,owner,SPEED1);
                    llSleep(0.5);
                    if(llVecDist(llGetPos(),finalmeta)<=1.6)//al tras cristales usa la distancia esta
                    {
                        llSensor("","",(SCRIPTED),0x7FFFFFFF,PI);//camara cristais
                        //llSleep(TIMER2);
                        ohfuck=1;
                        A+=1;
                        llSetTimerEvent(0.0);
                    }
                }
            }
        }
    }
}
//HACK2 SCRIPT