.class public Ljy/sdk/common/abs/ComConstants;
.super Ljava/lang/Object;
.source "ComConstants.java"


# static fields
.field public static BASE_PAY:Ljava/lang/String;

.field public static BASE_USER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    sget-boolean v0, Ljy/sdk/common/ReleasePro;->ON_LINE:Z

    const-string v0, "http://nweb.naimanshi.cn/"

    sput-object v0, Ljy/sdk/common/abs/ComConstants;->BASE_USER:Ljava/lang/String;

    .line 8
    sget-boolean v0, Ljy/sdk/common/ReleasePro;->ON_LINE:Z

    const-string v0, "http://npay.naimanshi.cn/"

    sput-object v0, Ljy/sdk/common/abs/ComConstants;->BASE_PAY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrderUrl()Ljava/lang/String;
    .registers 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljy/sdk/common/abs/ComConstants;->BASE_PAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoleInfoUrl()Ljava/lang/String;
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljy/sdk/common/abs/ComConstants;->BASE_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "polyUserInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSidUrl()Ljava/lang/String;
    .registers 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljy/sdk/common/abs/ComConstants;->BASE_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "verifyToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
