.class synthetic Ljy/sdk/common/utils/misc/StringUtils$1;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/utils/misc/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$jy$sdk$common$utils$misc$StringUtils$CompareMode:[I

.field static final synthetic $SwitchMap$jy$sdk$common$utils$misc$StringUtils$PaddingMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 261
    invoke-static {}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->values()[Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$CompareMode:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$CompareMode:[I

    sget-object v2, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Equal:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    invoke-virtual {v2}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$CompareMode:[I

    sget-object v3, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->StartWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    invoke-virtual {v3}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$CompareMode:[I

    sget-object v4, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->EndWith:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    invoke-virtual {v4}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v3, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$CompareMode:[I

    sget-object v4, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->Include:Ljy/sdk/common/utils/misc/StringUtils$CompareMode;

    invoke-virtual {v4}, Ljy/sdk/common/utils/misc/StringUtils$CompareMode;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    .line 180
    :catch_35
    invoke-static {}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->values()[Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$PaddingMode:[I

    :try_start_3e
    sget-object v3, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$PaddingMode:[I

    sget-object v4, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Left:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    invoke-virtual {v4}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_48

    :catch_48
    :try_start_48
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$PaddingMode:[I

    sget-object v3, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Both:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    invoke-virtual {v3}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_52

    :catch_52
    :try_start_52
    sget-object v0, Ljy/sdk/common/utils/misc/StringUtils$1;->$SwitchMap$jy$sdk$common$utils$misc$StringUtils$PaddingMode:[I

    sget-object v1, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->Right:Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;

    invoke-virtual {v1}, Ljy/sdk/common/utils/misc/StringUtils$PaddingMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method
