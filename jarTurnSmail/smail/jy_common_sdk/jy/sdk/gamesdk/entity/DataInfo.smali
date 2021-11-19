.class public Ljy/sdk/gamesdk/entity/DataInfo;
.super Ljava/lang/Object;
.source "DataInfo.java"


# instance fields
.field private extend1:Ljava/lang/String;

.field private extend10:Ljava/lang/String;

.field private extend2:Ljava/lang/String;

.field private extend3:Ljava/lang/String;

.field private extend4:Ljava/lang/String;

.field private extend5:Ljava/lang/String;

.field private extend6:Ljava/lang/String;

.field private extend7:Ljava/lang/String;

.field private extend8:Ljava/lang/String;

.field private extend9:Ljava/lang/String;

.field private id:I

.field private moduleId:I

.field private optCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string v7, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 26
    invoke-direct/range {v0 .. v7}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    const-string v8, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 31
    invoke-direct/range {v0 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->moduleId:I

    .line 38
    iput p2, p0, Ljy/sdk/gamesdk/entity/DataInfo;->optCode:I

    .line 39
    iput-object p3, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend1:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend2:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend3:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend4:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend5:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExtend1()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend1:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend10()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend10:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend2()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend2:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend3()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend3:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend4()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend4:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend5()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend5:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend6()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend6:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend7()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend7:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend8()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend8:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend9()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend9:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 49
    iget v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->id:I

    return v0
.end method

.method public getModuleId()I
    .registers 2

    .line 55
    iget v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->moduleId:I

    return v0
.end method

.method public getOptCode()I
    .registers 2

    .line 61
    iget v0, p0, Ljy/sdk/gamesdk/entity/DataInfo;->optCode:I

    return v0
.end method

.method public setExtend1(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend1:Ljava/lang/String;

    return-void
.end method

.method public setExtend10(Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend10:Ljava/lang/String;

    return-void
.end method

.method public setExtend2(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend2:Ljava/lang/String;

    return-void
.end method

.method public setExtend3(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend3:Ljava/lang/String;

    return-void
.end method

.method public setExtend4(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend4:Ljava/lang/String;

    return-void
.end method

.method public setExtend5(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend5:Ljava/lang/String;

    return-void
.end method

.method public setExtend6(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend6:Ljava/lang/String;

    return-void
.end method

.method public setExtend7(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend7:Ljava/lang/String;

    return-void
.end method

.method public setExtend8(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend8:Ljava/lang/String;

    return-void
.end method

.method public setExtend9(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->extend9:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 52
    iput p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->id:I

    return-void
.end method

.method public setModuleId(I)V
    .registers 2

    .line 58
    iput p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->moduleId:I

    return-void
.end method

.method public setOptCode(I)V
    .registers 2

    .line 64
    iput p1, p0, Ljy/sdk/gamesdk/entity/DataInfo;->optCode:I

    return-void
.end method
