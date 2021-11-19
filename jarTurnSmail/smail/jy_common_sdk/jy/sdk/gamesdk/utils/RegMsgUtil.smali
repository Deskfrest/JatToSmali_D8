.class public Ljy/sdk/gamesdk/utils/RegMsgUtil;
.super Ljava/lang/Object;
.source "RegMsgUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2b

    .line 96
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    const-string p0, "\u4e24\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u4e00\u81f4"

    return-object p0

    .line 100
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x6

    if-ge p0, p1, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    return-object p0

    :cond_28
    :goto_28
    const-string p0, "\u5bc6\u7801\u5e94\u4e3a6-16\u4f4d"

    return-object p0

    :cond_2b
    :goto_2b
    const-string p0, "\u5bc6\u7801\u6216\u786e\u8ba4\u5bc6\u7801\u8f93\u5165\u4e3a\u7a7a"

    return-object p0
.end method

.method public static checkPasswordLogin(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    .line 85
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return-object p0

    :cond_1b
    :goto_1b
    const-string p0, "\u5bc6\u7801\u5e94\u4e3a4-16\u4f4d"

    return-object p0
.end method

.method public static checkPasswordReg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "\u5bc6\u7801\u8f93\u5165\u4e3a\u7a7a"

    return-object p0

    .line 73
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return-object p0

    :cond_1b
    :goto_1b
    const-string p0, "\u5bc6\u7801\u5e94\u4e3a6-16\u4f4d"

    return-object p0
.end method

.method public static checkPhone(Ljava/lang/String;)Z
    .registers 3

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "^1[23456789]\\d{9}$"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public static checkPhoneVcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    .line 29
    :cond_9
    invoke-static {p0}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPhone(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef"

    return-object p0

    .line 33
    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x4

    if-ge p0, p1, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    return-object p0

    :cond_22
    :goto_22
    const-string p0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    return-object p0
.end method

.method public static checkUserNameLogin(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "\u8d26\u53f7\u8f93\u5165\u4e3a\u7a7a"

    return-object p0

    .line 62
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return-object p0

    :cond_1b
    :goto_1b
    const-string p0, "\u8d26\u53f7\u5e94\u4e3a4-12\u4f4d"

    return-object p0
.end method

.method public static checkUserNameReg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p0

    .line 45
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_19

    goto :goto_2e

    :cond_19
    const-string v0, "^[a-zA-z]"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_2c

    const-string p0, "\u8d26\u53f7\u5e94\u4ee5\u5b57\u6bcd\u5f00\u5934"

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0

    :cond_2e
    :goto_2e
    const-string p0, "\u8d26\u53f7\u5e94\u4e3a6-10\u4f4d"

    return-object p0
.end method
