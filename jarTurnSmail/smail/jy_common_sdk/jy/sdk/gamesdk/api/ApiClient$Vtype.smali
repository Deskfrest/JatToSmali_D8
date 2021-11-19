.class public final enum Ljy/sdk/gamesdk/api/ApiClient$Vtype;
.super Ljava/lang/Enum;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/api/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Vtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/gamesdk/api/ApiClient$Vtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/gamesdk/api/ApiClient$Vtype;

.field public static final enum PHONE_LOGIN:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

.field public static final enum RESET_PASS:Ljy/sdk/gamesdk/api/ApiClient$Vtype;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 429
    new-instance v0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    const-string v1, "PHONE_LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljy/sdk/gamesdk/api/ApiClient$Vtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->PHONE_LOGIN:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    .line 430
    new-instance v0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    const-string v1, "RESET_PASS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljy/sdk/gamesdk/api/ApiClient$Vtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->RESET_PASS:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    const/4 v0, 0x2

    .line 428
    new-array v0, v0, [Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    sget-object v1, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->PHONE_LOGIN:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->RESET_PASS:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    aput-object v1, v0, v3

    sput-object v0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->$VALUES:[Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/gamesdk/api/ApiClient$Vtype;
    .registers 2

    .line 428
    const-class v0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    return-object p0
.end method

.method public static values()[Ljy/sdk/gamesdk/api/ApiClient$Vtype;
    .registers 1

    .line 428
    sget-object v0, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->$VALUES:[Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    invoke-virtual {v0}, [Ljy/sdk/gamesdk/api/ApiClient$Vtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    return-object v0
.end method
