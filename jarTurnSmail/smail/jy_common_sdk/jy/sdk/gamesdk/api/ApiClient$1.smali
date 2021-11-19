.class Ljy/sdk/gamesdk/api/ApiClient$1;
.super Ljava/lang/Object;
.source "ApiClient.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/api/ApiClient;->sdkNormalRegUid(Landroid/app/Activity;Ljy/sdk/gamesdk/api/IApiCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/api/ApiClient;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/api/ApiClient;)V
    .registers 2

    .line 235
    iput-object p1, p0, Ljy/sdk/gamesdk/api/ApiClient$1;->this$0:Ljy/sdk/gamesdk/api/ApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method
