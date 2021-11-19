.class public Ljy/sdk/common/bean/JyOrder;
.super Ljava/lang/Object;
.source "JyOrder.java"


# instance fields
.field private extend:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ljy/sdk/common/bean/JyOrder;->msg:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Ljy/sdk/common/bean/JyOrder;->extend:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtend()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Ljy/sdk/common/bean/JyOrder;->extend:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Ljy/sdk/common/bean/JyOrder;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setExtend(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Ljy/sdk/common/bean/JyOrder;->extend:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Ljy/sdk/common/bean/JyOrder;->msg:Ljava/lang/String;

    return-void
.end method
