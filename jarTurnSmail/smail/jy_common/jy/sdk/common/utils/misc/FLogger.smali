.class public Ljy/sdk/common/utils/misc/FLogger;
.super Ljava/lang/Object;
.source "FLogger.java"


# static fields
.field public static final COMMON_TAG:Ljava/lang/String; = "jy_sdk"

.field private static final D:I = 0x2

.field private static final E:I = 0x5

.field private static final END_STR:Ljava/lang/String;

.field public static final HTTP_TAG:Ljava/lang/String; = "jy_http"

.field private static final I:I = 0x3

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final MAX_LENGTH:I = 0x2710

.field private static SHOW_LOG_FLAG:Z = true

.field private static final STACK_TRACE_INDEX_5:I = 0x5

.field private static final START_STR:Ljava/lang/String;

.field private static final SUFFIX:Ljava/lang/String; = ".java"

.field private static final TAG_DEFAULT:Ljava/lang/String; = "jy_sdk"

.field public static final UTIL_TAG:Ljava/lang/String; = "jy_utils"

.field private static final V:I = 0x1

.field private static final W:I = 0x4

.field private static mGlobalTag:Ljava/lang/String; = null

.field private static mIsGlobalTagEmpty:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "line.separator"

    .line 49
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljy/sdk/common/utils/misc/FLogger;->LINE_SEPARATOR:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljy/sdk/common/utils/misc/FLogger;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljy/sdk/common/utils/misc/FLogger;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljy/sdk/common/utils/misc/FLogger;->START_STR:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljy/sdk/common/utils/misc/FLogger;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljy/sdk/common/utils/misc/FLogger;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljy/sdk/common/utils/misc/FLogger;->END_STR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ex(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "{0}"

    const/4 v1, 0x1

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljy/sdk/common/utils/misc/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->printEx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Ex(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7

    const-string p0, ""

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_16

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const-string p0, "\r\nOtherInfo:{0}"

    .line 129
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-static {p0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_16
    const/4 p2, 0x0

    const-string v2, "{0}{1}"

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljy/sdk/common/utils/misc/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "__"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Ljy/sdk/common/utils/misc/FLogger;->printEx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Ex(Ljava/lang/Throwable;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "{0}"

    const/4 v2, 0x1

    .line 119
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljy/sdk/common/utils/misc/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljy/sdk/common/utils/misc/FLogger;->printEx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    .line 86
    invoke-static {v0, p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    .line 112
    invoke-static {v0, p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 90
    invoke-static {v0, v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x3

    .line 95
    invoke-static {v0, p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Z)V
    .registers 1

    .line 61
    sput-boolean p0, Ljy/sdk/common/utils/misc/FLogger;->SHOW_LOG_FLAG:Z

    return-void
.end method

.method public static init(ZLjava/lang/String;)V
    .registers 2

    .line 67
    sput-boolean p0, Ljy/sdk/common/utils/misc/FLogger;->SHOW_LOG_FLAG:Z

    .line 68
    sput-object p1, Ljy/sdk/common/utils/misc/FLogger;->mGlobalTag:Ljava/lang/String;

    .line 69
    sget-object p0, Ljy/sdk/common/utils/misc/FLogger;->mGlobalTag:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Ljy/sdk/common/utils/misc/FLogger;->mIsGlobalTagEmpty:Z

    return-void
.end method

.method private static printDefault(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 210
    div-int/lit16 v1, v0, 0x2710

    if-lez v1, :cond_21

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v2, v1, :cond_19

    add-int/lit16 v4, v3, 0x2710

    .line 213
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {p0, p1, v3}, Ljy/sdk/common/utils/misc/FLogger;->printSub(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_a

    .line 217
    :cond_19
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->printSub(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 219
    :cond_21
    invoke-static {p0, p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->printSub(ILjava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method private static printEx(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 135
    sget-boolean v0, Ljy/sdk/common/utils/misc/FLogger;->SHOW_LOG_FLAG:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x5

    .line 138
    invoke-static {v0, p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->wrapperContent(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 139
    aget-object p1, p0, p1

    const/4 v1, 0x1

    .line 140
    aget-object v1, p0, v1

    const/4 v2, 0x2

    .line 141
    aget-object p0, p0, v2

    const-string v2, "ERROR:"

    .line 142
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v2, Ljy/sdk/common/utils/misc/FLogger;->START_STR:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Ljy/sdk/common/utils/misc/FLogger;->printDefault(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object p0, Ljy/sdk/common/utils/misc/FLogger;->END_STR:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static printLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 159
    sget-boolean v0, Ljy/sdk/common/utils/misc/FLogger;->SHOW_LOG_FLAG:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x5

    .line 162
    invoke-static {v0, p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->wrapperContent(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 163
    aget-object p2, p1, p2

    const/4 v0, 0x1

    .line 164
    aget-object v0, p1, v0

    const/4 v1, 0x2

    .line 165
    aget-object p1, p1, v1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->printDefault(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static printSub(ILjava/lang/String;Ljava/lang/String;)V
    .registers 3

    packed-switch p0, :pswitch_data_18

    goto :goto_17

    .line 238
    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 235
    :pswitch_8
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 232
    :pswitch_c
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 229
    :pswitch_10
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 226
    :pswitch_14
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-static {v0, v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 77
    invoke-static {v0, p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1, p0}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x4

    .line 104
    invoke-static {v0, p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static wrapperContent(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 174
    aget-object p0, v0, p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    array-length v2, v1

    const/4 v3, 0x1

    if-lez v2, :cond_2d

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    const-string v1, "$"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    if-gez p0, :cond_5a

    const/4 p0, 0x0

    .line 192
    :cond_5a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    goto :goto_6a

    .line 194
    :cond_61
    sget-boolean p1, Ljy/sdk/common/utils/misc/FLogger;->mIsGlobalTagEmpty:Z

    if-nez p1, :cond_68

    .line 195
    sget-object p1, Ljy/sdk/common/utils/misc/FLogger;->mGlobalTag:Ljava/lang/String;

    goto :goto_6a

    :cond_68
    const-string p1, "jy_sdk"

    .line 199
    :goto_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")#"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ] "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 201
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    const/4 p1, 0x2

    aput-object p0, v0, p1

    return-object v0
.end method
