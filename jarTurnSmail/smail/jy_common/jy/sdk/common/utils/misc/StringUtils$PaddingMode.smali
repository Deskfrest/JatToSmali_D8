.class public final enum Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;
.super Ljava/lang/Enum;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/utils/misc/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaddingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

.field public static final enum Both:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

.field public static final enum Left:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

.field public static final enum Right:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 127
    new-instance v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Left:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    new-instance v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    const-string v1, "Both"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Both:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    new-instance v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    const-string v1, "Right"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Right:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    const/4 v0, 0x3

    .line 126
    new-array v0, v0, [Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Left:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Both:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    aput-object v1, v0, v3

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Right:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    aput-object v1, v0, v4

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->$VALUES:[Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->mCode:I

    return-void
.end method

.method public static valueOf(I)Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return-object p0

    .line 146
    :pswitch_5
    sget-object p0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Right:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    return-object p0

    .line 144
    :pswitch_8
    sget-object p0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Both:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    return-object p0

    .line 142
    :pswitch_b
    sget-object p0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Left:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;
    .registers 2

    .line 126
    const-class v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;
    .registers 1

    .line 126
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->$VALUES:[Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 136
    iget v0, p0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->mCode:I

    return v0
.end method
