.class public Ljy/sdk/common/utils/misc/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/common/utils/misc/StringUtils$CompareMode;,
        Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;
    }
.end annotation


# static fields
.field static final CHARSET:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 "

.field static ID_REG:Ljava/lang/String; = "^(?![0-9]+$)[0-9A-Za-z]{6,20}$"

.field static MAIL:Ljava/lang/String; = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

.field public static final M_ENCODE_TYPE_GB2312:Ljava/lang/String; = "GB2312"

.field public static final M_ENCODE_TYPE_GBK:Ljava/lang/String; = "GBK"

.field public static final M_ENCODE_TYPE_ISO8859_1:Ljava/lang/String; = "ISO8859-1"

.field public static final M_ENCODE_TYPE_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static M_PROP_NAME_FILE_SEPARATOR:Ljava/lang/String; = "file.separator"

.field private static M_PROP_NAME_LINE_SEPARATOR:Ljava/lang/String; = "line.separator"

.field private static M_PROP_NAME_PATH_SEPARATOR:Ljava/lang/String; = "path.separator"

.field static PASS_REG:Ljava/lang/String; = "[\u4e00-\u9fa5]"

.field static PHONE:Ljava/lang/String; = "^1[23456789]\\d{9}$"

.field private static final mEncodeTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    .line 298
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "GB2312"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GBK"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ISO8859-1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils;->mEncodeTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkID(Ljava/lang/String;)Z
    .registers 2

    .line 396
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils;->ID_REG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 398
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static checkMail(Ljava/lang/String;)Z
    .registers 3

    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 421
    :cond_8
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils;->MAIL:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 422
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 423
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public static checkPass(Ljava/lang/String;)Z
    .registers 3

    .line 406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 409
    :cond_8
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils;->PASS_REG:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 410
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 411
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static checkPhone(Ljava/lang/String;)Z
    .registers 3

    .line 430
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 433
    :cond_8
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils;->PHONE:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 435
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public static dealPhone(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 443
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 448
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "***"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5d} :catch_62

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_62
    move-exception p0

    const-string v0, "jy_utils"

    .line 453
    invoke-static {v0, p0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static dealemail(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 461
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 466
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "@"

    .line 467
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 469
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-le v2, v3, :cond_47

    .line 470
    aget-object v2, p0, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v2, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "**"

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    aget-object v2, p0, v1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4c

    .line 474
    :cond_47
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4c
    const-string v1, "@"

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object p0, p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_56} :catch_5b

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_5b
    move-exception p0

    const-string v0, "jy_utils"

    .line 478
    invoke-static {v0, p0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static formatMoney(I)Ljava/lang/String;
    .registers 5

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-string p0, "%.2f"

    const/4 v2, 0x1

    .line 373
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0x30

    if-ne v1, v3, :cond_4a

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-ne p0, v3, :cond_4a

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 385
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSeparator()Ljava/lang/String;
    .registers 1

    .line 358
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils;->M_PROP_NAME_FILE_SEPARATOR:Ljava/lang/String;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/StringUtils;->getPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFixLengthStr(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4

    .line 215
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Right:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    const/16 v1, 0x20

    invoke-static {p0, p1, v1, v0}, Ljy/sdk/common/utils/misc/StringUtils;->getFixLengthStr(Ljava/lang/Object;ICLjy/sdk/common/utils/misc/StringUtils$PaddingMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFixLengthStr(Ljava/lang/Object;IC)Ljava/lang/String;
    .registers 4

    .line 207
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Right:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    invoke-static {p0, p1, p2, v0}, Ljy/sdk/common/utils/misc/StringUtils;->getFixLengthStr(Ljava/lang/Object;ICLjy/sdk/common/utils/misc/StringUtils$PaddingMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFixLengthStr(Ljava/lang/Object;ICLjy/sdk/common/utils/misc/StringUtils$PaddingMode;)Ljava/lang/String;
    .registers 8

    if-gez p1, :cond_a

    .line 155
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length must >=0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez p1, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    .line 165
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    if-le p0, p1, :cond_24

    .line 170
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    if-ne p0, p1, :cond_27

    return-object v0

    :cond_27
    sub-int p0, p1, p0

    .line 180
    sget-object p1, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$PaddingMode:[I

    invoke-virtual {p3}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_66

    .line 192
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknow pad mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3c
    move p1, p0

    const/4 p0, 0x0

    goto :goto_47

    .line 185
    :pswitch_3f
    div-int/lit8 p1, p0, 0x2

    sub-int/2addr p0, p1

    move v3, p1

    move p1, p0

    move p0, v3

    goto :goto_47

    :pswitch_46
    const/4 p1, 0x0

    .line 195
    :goto_47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_4d
    if-ge v2, p0, :cond_55

    .line 197
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 199
    :cond_55
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_58
    if-ge v1, p1, :cond_60

    .line 201
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 203
    :cond_60
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3f
        :pswitch_3c
    .end packed-switch
.end method

.method public static getFixLengthStr(Ljava/lang/Object;ILjy/sdk/common/utils/misc/StringUtils$PaddingMode;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x20

    .line 211
    invoke-static {p0, p1, v0, p2}, Ljy/sdk/common/utils/misc/StringUtils;->getFixLengthStr(Ljava/lang/Object;ICLjy/sdk/common/utils/misc/StringUtils$PaddingMode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLineSeparator()Ljava/lang/String;
    .registers 1

    .line 354
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils;->M_PROP_NAME_LINE_SEPARATOR:Ljava/lang/String;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/StringUtils;->getPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewLine()Ljava/lang/String;
    .registers 1

    const-string v0, "\r\n"

    return-object v0
.end method

.method public static getPathSeparator()Ljava/lang/String;
    .registers 1

    .line 362
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils;->M_PROP_NAME_PATH_SEPARATOR:Ljava/lang/String;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/StringUtils;->getPropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPropValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 345
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception p0

    .line 347
    invoke-static {p0}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .registers 1

    .line 123
    invoke-static {p0, p0}, Ljy/sdk/common/utils/misc/StringUtils;->getRandomString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomString(II)Ljava/lang/String;
    .registers 2

    const-string p1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 "

    .line 119
    invoke-static {p1, p0, p0}, Ljy/sdk/common/utils/misc/StringUtils;->getRandomString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2

    .line 115
    invoke-static {p0, p1, p1}, Ljy/sdk/common/utils/misc/StringUtils;->getRandomString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/StringUtils;->isEmpty(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "char set null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    if-gez p1, :cond_19

    .line 90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minLength < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    if-le p1, p2, :cond_23

    .line 94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minLength > maxLength"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 99
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    if-le p2, p1, :cond_38

    sub-int/2addr p2, p1

    .line 103
    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 106
    :cond_38
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3d
    if-ge v0, p1, :cond_4d

    .line 108
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 109
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 111
    :cond_4d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStrEncodeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const-string p0, "argument str is null, no encode type returned."

    .line 310
    invoke-static {p0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;)V

    return-object v0

    .line 315
    :cond_9
    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils;->mEncodeTypes:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_39

    aget-object v5, v1, v0

    .line 317
    sget-object v6, Ljy/sdk/common/utils/misc/StringUtils;->mEncodeTypes:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v7, :cond_2f

    aget-object v9, v6, v8

    .line 319
    :try_start_1b
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v9, v10, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 320
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_28} :catch_2c

    if-eqz v9, :cond_2c

    const/4 v4, 0x1

    goto :goto_31

    :catch_2c
    :cond_2c
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_2f
    move-object v5, v4

    const/4 v4, 0x0

    :goto_31
    if-eqz v4, :cond_35

    move-object v4, v5

    goto :goto_39

    :cond_35
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    goto :goto_f

    :cond_39
    :goto_39
    return-object v4
.end method

.method public static in(Ljava/lang/String;Ljava/lang/Iterable;Ljy/sdk/common/utils/misc/StringUtils$CompareMode;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljy/sdk/common/utils/misc/StringUtils$CompareMode;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-nez p0, :cond_8

    return v1

    :cond_8
    const-string v2, ""

    .line 253
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 257
    :cond_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_24

    goto :goto_15

    .line 261
    :cond_24
    sget-object v3, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$CompareMode:[I

    invoke-virtual {p2}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4e

    goto :goto_15

    .line 278
    :pswitch_30
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_15

    return v1

    .line 273
    :pswitch_37
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    .line 268
    :pswitch_3e
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    .line 263
    :pswitch_45
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_4c
    return v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_30
    .end packed-switch
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x1

    .line 35
    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/StringUtils;->isEmpty(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/lang/String;Z)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_a

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_a
    const-string p1, ""

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isSame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, p1, v0}, Ljy/sdk/common/utils/misc/StringUtils;->isSame(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSame(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    if-nez p1, :cond_a

    return v0

    :cond_a
    if-eqz p2, :cond_19

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 48
    :cond_19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static patternMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_6

    goto :goto_1e

    .line 72
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    .line 76
    :cond_11
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_1e
    :goto_1e
    return v0
.end method
