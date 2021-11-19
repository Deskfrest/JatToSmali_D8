.class public Ljy/sdk/common/utils/misc/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/common/utils/misc/PhoneInfo$Oper;
    }
.end annotation


# static fields
.field public static brand:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static volatile instance:Ljy/sdk/common/utils/misc/PhoneInfo;

.field public static model:Ljava/lang/String;


# instance fields
.field public IMEI:Ljava/lang/String;

.field public IMSI:Ljava/lang/String;

.field public androidLevel:I

.field public androidVersion:Ljava/lang/String;

.field public android_Id:Ljava/lang/String;

.field public device_UUID:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mac:Ljava/lang/String;

.field public operatCodeStr:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public uuidstr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->brand:Ljava/lang/String;

    .line 34
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->model:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->androidLevel:I

    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->androidVersion:Ljava/lang/String;

    const-string v0, "000000000000000"

    .line 42
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMEI:Ljava/lang/String;

    const-string v0, "ffffffffffffffff"

    .line 44
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v0, "1"

    .line 46
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->operatCodeStr:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->android_Id:Ljava/lang/String;

    const-string v0, ""

    .line 50
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->resolution:Ljava/lang/String;

    const-string v0, ""

    .line 52
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->serial:Ljava/lang/String;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mac:Ljava/lang/String;

    const-string v0, ""

    .line 57
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->device_UUID:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    .line 81
    :try_start_31
    sget-object p1, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception p1

    const-string v0, "jy_utils"

    .line 83
    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_44
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->collectMachineInfomation()V

    return-void
.end method

.method private collectMachineInfomation()V
    .registers 3

    .line 94
    :try_start_0
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->generateUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->uuidstr:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMEI:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    .line 97
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->android_Id:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->android_Id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "default"

    .line 99
    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->android_Id:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v0

    const-string v1, "jy_utils"

    .line 102
    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_33
    :goto_33
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->device_UUID:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getResolution()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->resolution:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getOperator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->operatCodeStr:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->lang:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getSerial()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->serial:Ljava/lang/String;

    .line 109
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/NetWorkUtils;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method private generateUUID()Ljava/lang/String;
    .registers 5

    .line 271
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    const-string v1, "UUID"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/SharePreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 273
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jy_utils"

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730\u6ca1\u6709\u4fdd\u5b58UUID,\u91cd\u65b0\u751f\u6210\u4fdd\u5b58\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v1, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    const-string v2, "UUID"

    invoke-static {v1, v2, v0}, Ljy/sdk/common/utils/misc/SharePreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0

    :cond_3c
    const-string v1, "jy_utils"

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5730\u5df2\u4fdd\u5b58\u6709UUID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDeviceUUID()Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "35"

    .line 142
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_94} :catch_ea

    .line 155
    :try_start_94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v0, v2, :cond_b6

    .line 156
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    .line 159
    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_cd} :catch_e5

    .line 162
    :goto_cd
    :try_start_cd
    invoke-direct {p0}, Ljy/sdk/common/utils/misc/PhoneInfo;->getSerial()Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e4} :catch_ea

    return-object v1

    :catch_e5
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_eb

    :catch_ea
    move-exception v1

    :goto_eb
    const-string v2, "jy_utils"

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serial"

    .line 168
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v2, v3, v4, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIMEI()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, ""

    .line 178
    :try_start_2
    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_26

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 180
    iget-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 182
    :cond_13
    iget-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_26

    :catch_1a
    move-exception v0

    const-string v1, "jy_utils"

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->uuidstr:Ljava/lang/String;

    .line 190
    :cond_26
    :goto_26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 191
    iget-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->uuidstr:Ljava/lang/String;

    .line 194
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_38

    .line 195
    iget-object v0, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->uuidstr:Ljava/lang/String;

    :cond_38
    return-object v0
.end method

.method private getIMSI()Ljava/lang/String;
    .registers 4

    const-string v0, "ffffffffffffffff"

    .line 203
    :try_start_2
    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_18

    .line 204
    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v1

    goto :goto_18

    :catch_e
    move-exception v1

    const-string v2, "jy_utils"

    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Ljy/sdk/common/utils/misc/PhoneInfo;
    .registers 3

    .line 65
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    .line 68
    :cond_a
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->instance:Ljy/sdk/common/utils/misc/PhoneInfo;

    if-nez v0, :cond_21

    .line 69
    const-class v0, Ljy/sdk/common/utils/misc/PhoneInfo;

    monitor-enter v0

    .line 70
    :try_start_11
    sget-object v1, Ljy/sdk/common/utils/misc/PhoneInfo;->instance:Ljy/sdk/common/utils/misc/PhoneInfo;

    if-nez v1, :cond_1c

    .line 71
    new-instance v1, Ljy/sdk/common/utils/misc/PhoneInfo;

    invoke-direct {v1, p0}, Ljy/sdk/common/utils/misc/PhoneInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Ljy/sdk/common/utils/misc/PhoneInfo;->instance:Ljy/sdk/common/utils/misc/PhoneInfo;

    .line 73
    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_1e

    throw p0

    .line 75
    :cond_21
    :goto_21
    sget-object p0, Ljy/sdk/common/utils/misc/PhoneInfo;->instance:Ljy/sdk/common/utils/misc/PhoneInfo;

    return-object p0
.end method

.method private getOperator()I
    .registers 4

    .line 242
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->OTHER:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    .line 243
    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 244
    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46007"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46020"

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_76

    .line 247
    :cond_33
    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46009"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_73

    .line 249
    :cond_52
    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, p0, Ljy/sdk/common/utils/misc/PhoneInfo;->IMSI:Ljava/lang/String;

    const-string v2, "46011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 250
    :cond_70
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHCHINATELE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    goto :goto_78

    .line 248
    :cond_73
    :goto_73
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHINA_UNI:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    goto :goto_78

    .line 246
    :cond_76
    :goto_76
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->CHINA_MOBILE:Ljy/sdk/common/utils/misc/PhoneInfo$Oper;

    .line 253
    :cond_78
    :goto_78
    invoke-virtual {v0}, Ljy/sdk/common/utils/misc/PhoneInfo$Oper;->getCode()I

    move-result v0

    return v0
.end method

.method private getResolution()Ljava/lang/String;
    .registers 4

    .line 219
    :try_start_0
    sget-object v0, Ljy/sdk/common/utils/misc/PhoneInfo;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 220
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 221
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 222
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 223
    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_31

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    return-object v0

    :catch_46
    move-exception v0

    const-string v1, "jy_utils"

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0x0"

    return-object v0
.end method

.method private getSerial()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 116
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 117
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_b
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "serial"

    return-object v0
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 3

    .line 129
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "jy_utils"

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zh_CN"

    return-object v0
.end method
