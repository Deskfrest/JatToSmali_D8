.class public final enum Ljy/sdk/common/utils/misc/StringUtils$CompareMode;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/utils/misc/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/misc/StringUtils$CompareMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

.field public static final enum EndWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

.field public static final enum Equal:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

.field public static final enum Include:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

.field public static final enum StartWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 219
    new-instance v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    const-string v1, "Equal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Equal:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    new-instance v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    const-string v1, "StartWith"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->StartWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    new-instance v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    const-string v1, "EndWith"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->EndWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    new-instance v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    const-string v1, "Include"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Include:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    const/4 v0, 0x4

    .line 218
    new-array v0, v0, [Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Equal:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->StartWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    aput-object v1, v0, v3

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->EndWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    aput-object v1, v0, v4

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Include:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    aput-object v1, v0, v5

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->$VALUES:[Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->mCode:I

    return-void
.end method

.method public static valueOf(I)Ljy/sdk/common/utils/misc/StringUtils$CompareMode;
    .registers 1

    packed-switch p0, :pswitch_data_10

    .line 240
    sget-object p0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Include:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    return-object p0

    .line 238
    :pswitch_6
    sget-object p0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->EndWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    return-object p0

    .line 236
    :pswitch_9
    sget-object p0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->StartWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    return-object p0

    .line 234
    :pswitch_c
    sget-object p0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Equal:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/misc/StringUtils$CompareMode;
    .registers 2

    .line 218
    const-class v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/misc/StringUtils$CompareMode;
    .registers 1

    .line 218
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->$VALUES:[Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 228
    iget v0, p0, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->mCode:I

    return v0
.end method
