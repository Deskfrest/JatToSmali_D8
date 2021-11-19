.class public final enum Ljy/sdk/common/utils/http/HttpErrorType;
.super Ljava/lang/Enum;
.source "HttpErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/http/HttpErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/http/HttpErrorType;

.field public static final enum HTTP_ERR_IO:Ljy/sdk/common/utils/http/HttpErrorType;

.field public static final enum HTTP_ERR_NONE:Ljy/sdk/common/utils/http/HttpErrorType;

.field public static final enum HTTP_ERR_OTHERS:Ljy/sdk/common/utils/http/HttpErrorType;

.field public static final enum HTTP_ERR_SOCKET:Ljy/sdk/common/utils/http/HttpErrorType;

.field public static final enum HTTP_ERR_TIMEOUT:Ljy/sdk/common/utils/http/HttpErrorType;

.field public static final enum HTTP_ERR_URL:Ljy/sdk/common/utils/http/HttpErrorType;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 10
    new-instance v0, Ljy/sdk/common/utils/http/HttpErrorType;

    const-string v1, "HTTP_ERR_NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljy/sdk/common/utils/http/HttpErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_NONE:Ljy/sdk/common/utils/http/HttpErrorType;

    .line 15
    new-instance v0, Ljy/sdk/common/utils/http/HttpErrorType;

    const-string v1, "HTTP_ERR_OTHERS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Ljy/sdk/common/utils/http/HttpErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_OTHERS:Ljy/sdk/common/utils/http/HttpErrorType;

    .line 19
    new-instance v0, Ljy/sdk/common/utils/http/HttpErrorType;

    const-string v1, "HTTP_ERR_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Ljy/sdk/common/utils/http/HttpErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_TIMEOUT:Ljy/sdk/common/utils/http/HttpErrorType;

    .line 23
    new-instance v0, Ljy/sdk/common/utils/http/HttpErrorType;

    const-string v1, "HTTP_ERR_IO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Ljy/sdk/common/utils/http/HttpErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_IO:Ljy/sdk/common/utils/http/HttpErrorType;

    .line 27
    new-instance v0, Ljy/sdk/common/utils/http/HttpErrorType;

    const-string v1, "HTTP_ERR_URL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Ljy/sdk/common/utils/http/HttpErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_URL:Ljy/sdk/common/utils/http/HttpErrorType;

    .line 29
    new-instance v0, Ljy/sdk/common/utils/http/HttpErrorType;

    const-string v1, "HTTP_ERR_SOCKET"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Ljy/sdk/common/utils/http/HttpErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_SOCKET:Ljy/sdk/common/utils/http/HttpErrorType;

    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [Ljy/sdk/common/utils/http/HttpErrorType;

    sget-object v1, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_NONE:Ljy/sdk/common/utils/http/HttpErrorType;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_OTHERS:Ljy/sdk/common/utils/http/HttpErrorType;

    aput-object v1, v0, v3

    sget-object v1, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_TIMEOUT:Ljy/sdk/common/utils/http/HttpErrorType;

    aput-object v1, v0, v4

    sget-object v1, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_IO:Ljy/sdk/common/utils/http/HttpErrorType;

    aput-object v1, v0, v5

    sget-object v1, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_URL:Ljy/sdk/common/utils/http/HttpErrorType;

    aput-object v1, v0, v6

    sget-object v1, Ljy/sdk/common/utils/http/HttpErrorType;->HTTP_ERR_SOCKET:Ljy/sdk/common/utils/http/HttpErrorType;

    aput-object v1, v0, v7

    sput-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->$VALUES:[Ljy/sdk/common/utils/http/HttpErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Ljy/sdk/common/utils/http/HttpErrorType;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/http/HttpErrorType;
    .registers 2

    .line 5
    const-class v0, Ljy/sdk/common/utils/http/HttpErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/http/HttpErrorType;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/http/HttpErrorType;
    .registers 1

    .line 5
    sget-object v0, Ljy/sdk/common/utils/http/HttpErrorType;->$VALUES:[Ljy/sdk/common/utils/http/HttpErrorType;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/http/HttpErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/http/HttpErrorType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 38
    iget v0, p0, Ljy/sdk/common/utils/http/HttpErrorType;->mCode:I

    return v0
.end method
