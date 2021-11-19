.class Ljy/sdk/channel/jy/Jy$PayQuery;
.super Ljava/lang/Object;
.source "Jy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/channel/jy/Jy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayQuery"
.end annotation


# instance fields
.field public orderId:Ljava/lang/String;

.field public params:Ljy/sdk/shell/proxy/JyPayParams;

.field public payListener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

.field public payType:Ljava/lang/String;

.field public querySum:I

.field final synthetic this$0:Ljy/sdk/channel/jy/Jy;


# direct methods
.method public constructor <init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/shell/proxy/JyPayParams;Ljy/sdk/common/abs/innercallbacks/IpayListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 414
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$PayQuery;->this$0:Ljy/sdk/channel/jy/Jy;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Ljy/sdk/channel/jy/Jy$PayQuery;->params:Ljy/sdk/shell/proxy/JyPayParams;

    .line 417
    iput-object p3, p0, Ljy/sdk/channel/jy/Jy$PayQuery;->payListener:Ljy/sdk/common/abs/innercallbacks/IpayListener;

    .line 418
    iput-object p4, p0, Ljy/sdk/channel/jy/Jy$PayQuery;->orderId:Ljava/lang/String;

    .line 419
    iput-object p5, p0, Ljy/sdk/channel/jy/Jy$PayQuery;->payType:Ljava/lang/String;

    return-void
.end method
