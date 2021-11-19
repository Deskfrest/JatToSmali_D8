.class public Ljy/sdk/shell/proxy/JyPayParams;
.super Ljava/lang/Object;
.source "JyPayParams.java"


# instance fields
.field private buyNum:I

.field private callBackUrl:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private giftId:Ljava/lang/String;

.field private jyOrder:Ljy/sdk/common/bean/JyOrder;

.field private jyUid:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private partyName:Ljava/lang/String;

.field private per_price:I

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private ratio:I

.field private remainCoinNum:I

.field private roleId:Ljava/lang/String;

.field private roleLevel:I

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

.field private time:J

.field private totalPrice:I

.field private vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->jyUid:Ljava/lang/String;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->productId:Ljava/lang/String;

    const-string v0, ""

    .line 26
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->giftId:Ljava/lang/String;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->productName:Ljava/lang/String;

    const-string v0, ""

    .line 34
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->productDesc:Ljava/lang/String;

    const-string v0, ""

    .line 67
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->serverName:Ljava/lang/String;

    const-string v0, ""

    .line 71
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleId:Ljava/lang/String;

    const-string v0, ""

    .line 75
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleName:Ljava/lang/String;

    const-string v0, ""

    .line 83
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->vip:Ljava/lang/String;

    const-string v0, ""

    .line 88
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->extension:Ljava/lang/String;

    const-string v0, ""

    .line 92
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->orderId:Ljava/lang/String;

    const-string v0, ""

    .line 97
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->partyName:Ljava/lang/String;

    const-string v0, ""

    .line 105
    iput-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->callBackUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBuyNum()I
    .registers 2

    .line 219
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->buyNum:I

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 220
    iput v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->buyNum:I

    .line 222
    :cond_7
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->buyNum:I

    return v0
.end method

.method public getCallBackUrl()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->callBackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftId()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->giftId:Ljava/lang/String;

    return-object v0
.end method

.method public getJyOrder()Ljy/sdk/common/bean/JyOrder;
    .registers 2

    .line 127
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->jyOrder:Ljy/sdk/common/bean/JyOrder;

    return-object v0
.end method

.method public getJyUid()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->jyUid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->partyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPer_price()I
    .registers 2

    .line 176
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->per_price:I

    if-nez v0, :cond_8

    .line 177
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->totalPrice:I

    iput v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->per_price:I

    .line 179
    :cond_8
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->per_price:I

    return v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRatio()I
    .registers 2

    .line 286
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->ratio:I

    return v0
.end method

.method public getRemainCoinNum()I
    .registers 2

    .line 238
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->remainCoinNum:I

    return v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    .line 254
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()I
    .registers 2

    .line 270
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleLevel:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .line 294
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->serverName:Ljava/lang/String;

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

    .line 160
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->spare:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 168
    iget-wide v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->time:J

    return-wide v0
.end method

.method public getTotalPrice()I
    .registers 2

    .line 230
    iget v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->totalPrice:I

    return v0
.end method

.method public getVip()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Ljy/sdk/shell/proxy/JyPayParams;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public setBuyNum(I)V
    .registers 2

    .line 226
    iput p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->buyNum:I

    return-void
.end method

.method public setCallBackUrl(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->callBackUrl:Ljava/lang/String;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .registers 2

    .line 282
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->extension:Ljava/lang/String;

    return-void
.end method

.method public setGiftId(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->giftId:Ljava/lang/String;

    return-void
.end method

.method public setJyOrder(Ljy/sdk/common/bean/JyOrder;)V
    .registers 2

    .line 131
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->jyOrder:Ljy/sdk/common/bean/JyOrder;

    return-void
.end method

.method public setJyUid(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->jyUid:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPartyName(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->partyName:Ljava/lang/String;

    return-void
.end method

.method public setPer_price(I)V
    .registers 2

    .line 183
    iput p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->per_price:I

    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .registers 2

    .line 215
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->productDesc:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    .line 207
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->productName:Ljava/lang/String;

    return-void
.end method

.method public setRatio(I)V
    .registers 2

    .line 290
    iput p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->ratio:I

    return-void
.end method

.method public setRemainCoinNum(I)V
    .registers 2

    .line 242
    iput p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->remainCoinNum:I

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    .line 258
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(I)V
    .registers 2

    .line 274
    iput p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleLevel:I

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    .line 266
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2

    .line 250
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2

    .line 298
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->serverName:Ljava/lang/String;

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

    .line 164
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->spare:Ljava/util/HashMap;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    .line 172
    iput-wide p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->time:J

    return-void
.end method

.method public setTotalPrice(I)V
    .registers 2

    .line 234
    iput p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->totalPrice:I

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .registers 2

    .line 306
    iput-object p1, p0, Ljy/sdk/shell/proxy/JyPayParams;->vip:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayParams [jyUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->jyUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", giftId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->giftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->productDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->totalPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", per_price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->per_price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->ratio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buyNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->buyNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainCoinNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->remainCoinNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->roleLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->vip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->partyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callBackUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->callBackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->spare:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", JyOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/shell/proxy/JyPayParams;->jyOrder:Ljy/sdk/common/bean/JyOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
