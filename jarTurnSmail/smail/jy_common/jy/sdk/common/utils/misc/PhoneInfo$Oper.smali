.class final enum Ljy/sdk/common/utils/misc/PhoneInfo$Oper;
.super Ljava/lang/Enum;
.source "PhoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/utils/misc/PhoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Oper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljy/sdk/common/utils/misc/PhoneInfo$Oper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

.field public static final enum CHCHINATELE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

.field public static final enum CHINA_MOBILE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

.field public static final enum CHINA_UNI:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

.field public static final enum OTHER:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 258
    new-instance v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    const-string v1, "CHINA_MOBILE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHINA_MOBILE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    new-instance v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    const-string v1, "CHINA_UNI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHINA_UNI:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    new-instance v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    const-string v1, "CHCHINATELE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHCHINATELE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    new-instance v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    const-string v1, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->OTHER:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    .line 257
    new-array v0, v6, [Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    sget-object v1, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHINA_MOBILE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    aput-object v1, v0, v2

    sget-object v1, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHINA_UNI:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    aput-object v1, v0, v3

    sget-object v1, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHCHINATELE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    aput-object v1, v0, v4

    sget-object v1, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->OTHER:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    aput-object v1, v0, v5

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->$VALUES:[Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    iput p3, p0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljy/sdk/common/utils/misc/PhoneInfo$Oper;
    .registers 2

    .line 257
    const-class v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    return-object p0
.end method

.method public static values()[Ljy/sdk/common/utils/misc/PhoneInfo$Oper;
    .registers 1

    .line 257
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->$VALUES:[Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    invoke-virtual {v0}, [Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .registers 2

    .line 266
    iget v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->code:I

    return v0
.end method
