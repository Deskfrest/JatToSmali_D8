.class synthetic Ljy/sdk/gamesdk/api/ApiClient$4;
.super Ljava/lang/Object;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/api/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$jy$sdk$gamesdk$api$ApiClient$Vtype:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 441
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->values()[Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljy/sdk/gamesdk/api/ApiClient$4;->$SwitchMap$jy$sdk$gamesdk$api$ApiClient$Vtype:[I

    :try_start_9
    sget-object v0, Ljy/sdk/gamesdk/api/ApiClient$4;->$SwitchMap$jy$sdk$gamesdk$api$ApiClient$Vtype:[I

    sget-object v1, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->PHONE_LOGIN:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Ljy/sdk/gamesdk/api/ApiClient$4;->$SwitchMap$jy$sdk$gamesdk$api$ApiClient$Vtype:[I

    sget-object v1, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->RESET_PASS:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
