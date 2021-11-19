.class public Ljy/sdk/gamesdk/entity/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private extraData:Ljy/sdk/shell/proxy/JyUserExtraData;

.field private id:I

.field private lastGame:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez v1, :cond_9

    return v0

    .line 73
    :cond_9
    check-cast p1, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/gamesdk/entity/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getExtraData()Ljy/sdk/shell/proxy/JyUserExtraData;
    .registers 2

    .line 59
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/UserInfo;->extraData:Ljy/sdk/shell/proxy/JyUserExtraData;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 26
    iget v0, p0, Ljy/sdk/gamesdk/entity/UserInfo;->id:I

    return v0
.end method

.method public getLastGame()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/UserInfo;->lastGame:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/UserInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/UserInfo;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setExtraData(Ljy/sdk/shell/proxy/JyUserExtraData;)V
    .registers 2

    .line 62
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->extraData:Ljy/sdk/shell/proxy/JyUserExtraData;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 29
    iput p1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->id:I

    return-void
.end method

.method public setLastGame(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->lastGame:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->sid:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastGame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/entity/UserInfo;->lastGame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
