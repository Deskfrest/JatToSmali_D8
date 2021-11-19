.class final enum Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;
.super Ljava/lang/Enum;
.source "NetWorkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/utils/misc/NetWorkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

.field public static final enum TYPE_2G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

.field public static final enum TYPE_3_4G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

.field public static final enum TYPE_OTHER:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

.field public static final enum TYPE_WIFI:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 186
    new-instance v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    const-string v1, "TYPE_2G"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_2G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    new-instance v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    const-string v1, "TYPE_3_4G"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_3_4G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    new-instance v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    const-string v1, "TYPE_WIFI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_WIFI:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    new-instance v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    const-string v1, "TYPE_OTHER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_OTHER:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    .line 185
    new-array v0, v6, [Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    sget-object v1, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_2G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_3_4G:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_WIFI:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->TYPE_OTHER:Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->$VALUES:[Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 190
    iput p3, p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;
    .registers 2

    .line 185
    const-class v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;
    .registers 1

    .line 185
    sget-object v0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->$VALUES:[Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 194
    iget v0, p0, Ljy/sdk/common/utils/misc/NetWorkUtils$NET_TYPE;->code:I

    return v0
.end method
