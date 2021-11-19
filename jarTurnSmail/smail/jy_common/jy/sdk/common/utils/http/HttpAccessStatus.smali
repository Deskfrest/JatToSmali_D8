.class public final enum Ljy/sdk/common/utils/http/HttpAccessStatus;
.super Ljava/lang/Enum;
.source "HttpAccessStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/http/HttpAccessStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/http/HttpAccessStatus;

.field public static final enum Done:Ljy/sdk/common/utils/http/HttpAccessStatus;

.field public static final enum Error:Ljy/sdk/common/utils/http/HttpAccessStatus;

.field public static final enum NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

.field public static final enum Timeout:Ljy/sdk/common/utils/http/HttpAccessStatus;


# instance fields
.field private Code:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 11
    new-instance v0, Ljy/sdk/common/utils/http/HttpAccessStatus;

    const-string v1, "Timeout"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Ljy/sdk/common/utils/http/HttpAccessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Timeout:Ljy/sdk/common/utils/http/HttpAccessStatus;

    new-instance v0, Ljy/sdk/common/utils/http/HttpAccessStatus;

    const-string v1, "Error"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Ljy/sdk/common/utils/http/HttpAccessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Error:Ljy/sdk/common/utils/http/HttpAccessStatus;

    new-instance v0, Ljy/sdk/common/utils/http/HttpAccessStatus;

    const-string v1, "NotDone"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Ljy/sdk/common/utils/http/HttpAccessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpAccessStatus;->NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

    new-instance v0, Ljy/sdk/common/utils/http/HttpAccessStatus;

    const-string v1, "Done"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Ljy/sdk/common/utils/http/HttpAccessStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Done:Ljy/sdk/common/utils/http/HttpAccessStatus;

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Ljy/sdk/common/utils/http/HttpAccessStatus;

    sget-object v1, Ljy/sdk/common/utils/http/HttpAccessStatus;->Timeout:Ljy/sdk/common/utils/http/HttpAccessStatus;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/http/HttpAccessStatus;->Error:Ljy/sdk/common/utils/http/HttpAccessStatus;

    aput-object v1, v0, v3

    sget-object v1, Ljy/sdk/common/utils/http/HttpAccessStatus;->NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

    aput-object v1, v0, v4

    sget-object v1, Ljy/sdk/common/utils/http/HttpAccessStatus;->Done:Ljy/sdk/common/utils/http/HttpAccessStatus;

    aput-object v1, v0, v5

    sput-object v0, Ljy/sdk/common/utils/http/HttpAccessStatus;->$VALUES:[Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Code:I

    return-void
.end method

.method public static valueOf(I)Ljy/sdk/common/utils/http/HttpAccessStatus;
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    .line 30
    :pswitch_5
    sget-object p0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Done:Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-object p0

    .line 28
    :pswitch_8
    sget-object p0, Ljy/sdk/common/utils/http/HttpAccessStatus;->NotDone:Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-object p0

    .line 26
    :pswitch_b
    sget-object p0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Error:Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-object p0

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/http/HttpAccessStatus;
    .registers 2

    .line 9
    const-class v0, Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/http/HttpAccessStatus;
    .registers 1

    .line 9
    sget-object v0, Ljy/sdk/common/utils/http/HttpAccessStatus;->$VALUES:[Ljy/sdk/common/utils/http/HttpAccessStatus;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/http/HttpAccessStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/http/HttpAccessStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 20
    iget v0, p0, Ljy/sdk/common/utils/http/HttpAccessStatus;->Code:I

    return v0
.end method
