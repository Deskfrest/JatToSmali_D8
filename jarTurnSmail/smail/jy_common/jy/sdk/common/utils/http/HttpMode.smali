.class public final enum Ljy/sdk/common/utils/http/HttpMode;
.super Ljava/lang/Enum;
.source "HttpMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/http/HttpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/http/HttpMode;

.field public static final enum Get:Ljy/sdk/common/utils/http/HttpMode;

.field public static final enum Post:Ljy/sdk/common/utils/http/HttpMode;


# instance fields
.field private Code:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 5
    new-instance v0, Ljy/sdk/common/utils/http/HttpMode;

    const-string v1, "Get"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljy/sdk/common/utils/http/HttpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    new-instance v0, Ljy/sdk/common/utils/http/HttpMode;

    const-string v1, "Post"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Ljy/sdk/common/utils/http/HttpMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpMode;->Post:Ljy/sdk/common/utils/http/HttpMode;

    .line 4
    new-array v0, v4, [Ljy/sdk/common/utils/http/HttpMode;

    sget-object v1, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpMode;->Post:Ljy/sdk/common/utils/http/HttpMode;

    aput-object v1, v0, v3

    sput-object v0, Ljy/sdk/common/utils/http/HttpMode;->$VALUES:[Ljy/sdk/common/utils/http/HttpMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Ljy/sdk/common/utils/http/HttpMode;->Code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/http/HttpMode;
    .registers 2

    .line 4
    const-class v0, Ljy/sdk/common/utils/http/HttpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/http/HttpMode;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/http/HttpMode;
    .registers 1

    .line 4
    sget-object v0, Ljy/sdk/common/utils/http/HttpMode;->$VALUES:[Ljy/sdk/common/utils/http/HttpMode;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/http/HttpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/http/HttpMode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 14
    iget v0, p0, Ljy/sdk/common/utils/http/HttpMode;->Code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 19
    invoke-virtual {p0}, Ljy/sdk/common/utils/http/HttpMode;->getCode()I

    move-result v0

    sget-object v1, Ljy/sdk/common/utils/http/HttpMode;->Get:Ljy/sdk/common/utils/http/HttpMode;

    invoke-virtual {v1}, Ljy/sdk/common/utils/http/HttpMode;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_f

    const-string v0, "GET"

    return-object v0

    :cond_f
    const-string v0, "POST"

    return-object v0
.end method
