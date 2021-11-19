.class public Ljy/sdk/shell/proxy/JyUserExtraData;
.super Ljava/lang/Object;
.source "JyUserExtraData.java"


# static fields
.field public static final TYPE_CREATE_ROLE:I = 0x2

.field public static final TYPE_ENTER_GAME:I = 0x3

.field public static final TYPE_EXIT_GAME:I = 0x5

.field public static final TYPE_HONOR:I = 0x7

.field public static final TYPE_LEVEL_UP:I = 0x4

.field public static final TYPE_SELECT_SERVER:I = 0x1

.field public static final TYPE_TASK:I = 0x6

.field public static final TYPE_VIP_UP:I = 0x8


# instance fields
.field private banlance:Ljava/lang/String;

.field private dataType:I

.field private friendShip:Ljava/lang/String;

.field public honor_id:I

.field public honor_name:Ljava/lang/String;

.field private jyUid:Ljava/lang/String;

.field private partyId:I

.field private partyName:Ljava/lang/String;

.field private partyRoleId:I

.field private partyRoleName:Ljava/lang/String;

.field private payTotal:I

.field private power:I

.field private profession:Ljava/lang/String;

.field private professionId:I

.field private remainCoinNum:I

.field private roleCreateTime:I

.field private roleGender:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleLevel:I

.field private roleLevelUpTime:I

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private spare:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public task_id:I

.field public task_name:Ljava/lang/String;

.field public task_status:I

.field private vip:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u65e0"

    .line 100
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->profession:Ljava/lang/String;

    const-string v0, "\u7537"

    .line 105
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleGender:Ljava/lang/String;

    const-string v0, "0"

    .line 130
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->banlance:Ljava/lang/String;

    const-string v0, "\u65e0"

    .line 142
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyName:Ljava/lang/String;

    const-string v0, "\u65e0"

    .line 152
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyRoleName:Ljava/lang/String;

    const-string v0, "\u65e0"

    .line 157
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->friendShip:Ljava/lang/String;

    const/4 v0, 0x1

    .line 172
    iput v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->task_status:I

    return-void
.end method


# virtual methods
.method public getBanlance()Ljava/lang/String;
    .registers 2

    .line 309
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->banlance:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()I
    .registers 2

    .line 192
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->dataType:I

    return v0
.end method

.method public getFriendShip()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->friendShip:Ljava/lang/String;

    return-object v0
.end method

.method public getHonor_id()I
    .registers 2

    .line 397
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->honor_id:I

    return v0
.end method

.method public getHonor_name()Ljava/lang/String;
    .registers 2

    .line 405
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->honor_name:Ljava/lang/String;

    return-object v0
.end method

.method public getJyUid()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->jyUid:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyId()I
    .registers 2

    .line 317
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyId:I

    return v0
.end method

.method public getPartyName()Ljava/lang/String;
    .registers 2

    .line 325
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyRoleId()I
    .registers 2

    .line 333
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyRoleId:I

    return v0
.end method

.method public getPartyRoleName()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyRoleName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayTotal()I
    .registers 2

    .line 293
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->payTotal:I

    return v0
.end method

.method public getPower()I
    .registers 2

    .line 277
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->power:I

    return v0
.end method

.method public getProfession()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->profession:Ljava/lang/String;

    return-object v0
.end method

.method public getProfessionId()I
    .registers 2

    .line 251
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->professionId:I

    return v0
.end method

.method public getRemainCoinNum()I
    .registers 2

    .line 301
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->remainCoinNum:I

    return v0
.end method

.method public getRoleCreateTime()I
    .registers 2

    .line 357
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleCreateTime:I

    return v0
.end method

.method public getRoleGender()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleGender:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()I
    .registers 2

    .line 243
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleLevel:I

    return v0
.end method

.method public getRoleLevelUpTime()I
    .registers 2

    .line 365
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleLevelUpTime:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpare()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->spare:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTask_id()I
    .registers 2

    .line 373
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->task_id:I

    return v0
.end method

.method public getTask_name()Ljava/lang/String;
    .registers 2

    .line 381
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->task_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTask_status()I
    .registers 2

    .line 389
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->task_status:I

    return v0
.end method

.method public getVip()I
    .registers 2

    .line 285
    iget v0, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->vip:I

    return v0
.end method

.method public setBanlance(Ljava/lang/String;)V
    .registers 2

    .line 313
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->banlance:Ljava/lang/String;

    return-void
.end method

.method public setDataType(I)V
    .registers 2

    .line 196
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->dataType:I

    return-void
.end method

.method public setFriendShip(Ljava/lang/String;)V
    .registers 2

    .line 353
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->friendShip:Ljava/lang/String;

    return-void
.end method

.method public setHonor_id(I)V
    .registers 2

    .line 401
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->honor_id:I

    return-void
.end method

.method public setHonor_name(Ljava/lang/String;)V
    .registers 2

    .line 409
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->honor_name:Ljava/lang/String;

    return-void
.end method

.method public setJyUid(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->jyUid:Ljava/lang/String;

    return-void
.end method

.method public setPartyId(I)V
    .registers 2

    .line 321
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyId:I

    return-void
.end method

.method public setPartyName(Ljava/lang/String;)V
    .registers 2

    .line 329
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyName:Ljava/lang/String;

    return-void
.end method

.method public setPartyRoleId(I)V
    .registers 2

    .line 337
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyRoleId:I

    return-void
.end method

.method public setPartyRoleName(Ljava/lang/String;)V
    .registers 2

    .line 345
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->partyRoleName:Ljava/lang/String;

    return-void
.end method

.method public setPayTotal(I)V
    .registers 2

    .line 297
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->payTotal:I

    return-void
.end method

.method public setPower(I)V
    .registers 2

    .line 281
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->power:I

    return-void
.end method

.method public setProfession(Ljava/lang/String;)V
    .registers 2

    .line 263
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->profession:Ljava/lang/String;

    return-void
.end method

.method public setProfessionId(I)V
    .registers 2

    .line 255
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->professionId:I

    return-void
.end method

.method public setRemainCoinNum(I)V
    .registers 2

    .line 305
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->remainCoinNum:I

    return-void
.end method

.method public setRoleCreateTime(I)V
    .registers 2

    .line 361
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleCreateTime:I

    return-void
.end method

.method public setRoleGender(Ljava/lang/String;)V
    .registers 2

    .line 273
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleGender:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    .line 231
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(I)V
    .registers 2

    .line 247
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleLevel:I

    return-void
.end method

.method public setRoleLevelUpTime(I)V
    .registers 2

    .line 369
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleLevelUpTime:I

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    .line 239
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2

    .line 215
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2

    .line 223
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setSpare(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->spare:Ljava/util/HashMap;

    return-void
.end method

.method public setTask_id(I)V
    .registers 2

    .line 377
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->task_id:I

    return-void
.end method

.method public setTask_name(Ljava/lang/String;)V
    .registers 2

    .line 385
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->task_name:Ljava/lang/String;

    return-void
.end method

.method public setTask_status(I)V
    .registers 2

    .line 393
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->task_status:I

    return-void
.end method

.method public setVip(I)V
    .registers 2

    .line 289
    iput p1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->vip:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserExtraData [dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", jyUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->jyUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyUserExtraData;->roleLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
