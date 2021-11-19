.class public Ljy/sdk/common/utils/misc/INFChannel;
.super Ljava/lang/Object;
.source "INFChannel.java"


# static fields
.field private static final CHANNEL_KEY:Ljava/lang/String; = "jychannel"

.field private static final CHANNEL_VERSION_KEY:Ljava/lang/String; = "jychannel_version"

.field private static customChannel:Ljava/lang/String; = null

.field public static defaultChannel:Ljava/lang/String; = "10000000"

.field public static defaultOtherInfo:Ljava/lang/String; = "0"

.field private static mChannel:Ljava/lang/String;

.field private static mOtherInfo:Ljava/lang/String;

.field private static otherSubServerInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 38
    sget-object v0, Ljy/sdk/common/utils/misc/INFChannel;->defaultChannel:Ljava/lang/String;

    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/INFChannel;->getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 50
    sget-object v0, Ljy/sdk/common/utils/misc/INFChannel;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 51
    sget-object p0, Ljy/sdk/common/utils/misc/INFChannel;->mChannel:Ljava/lang/String;

    return-object p0

    .line 54
    :cond_b
    sget-object v0, Ljy/sdk/common/utils/misc/INFChannel;->customChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 55
    sget-object p0, Ljy/sdk/common/utils/misc/INFChannel;->customChannel:Ljava/lang/String;

    return-object p0

    :cond_16
    const-string v0, "jychannel"

    .line 59
    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/INFChannel;->getChannelFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljy/sdk/common/utils/misc/INFChannel;->mChannel:Ljava/lang/String;

    .line 60
    sget-object v0, Ljy/sdk/common/utils/misc/INFChannel;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 62
    sget-object p1, Ljy/sdk/common/utils/misc/INFChannel;->mChannel:Ljava/lang/String;

    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/INFChannel;->saveChannelBySharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    sget-object p0, Ljy/sdk/common/utils/misc/INFChannel;->mChannel:Ljava/lang/String;

    return-object p0

    :cond_2e
    return-object p1
.end method

.method private static getChannelFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 79
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    .line 85
    :try_start_1a
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_56
    .catchall {:try_start_1a .. :try_end_1f} :catchall_53

    .line 86
    :try_start_1f
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 87
    :cond_23
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 88
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 89
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "../"

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_43

    .line 93
    :cond_3c
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_50
    .catchall {:try_start_1f .. :try_end_40} :catchall_4e

    if-eqz v3, :cond_23

    move-object v0, v1

    :cond_43
    :goto_43
    if-eqz v2, :cond_5f

    .line 103
    :try_start_45
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_5f

    :catch_49
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    :catchall_4e
    move-exception p0

    goto :goto_81

    :catch_50
    move-exception p0

    move-object v1, v2

    goto :goto_57

    :catchall_53
    move-exception p0

    move-object v2, v1

    goto :goto_81

    :catch_56
    move-exception p0

    .line 99
    :goto_57
    :try_start_57
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_53

    if-eqz v1, :cond_5f

    .line 103
    :try_start_5c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_49

    :cond_5f
    :goto_5f
    const-string p0, "_"

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_80

    .line 113
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7b

    const/4 p1, 0x0

    .line 114
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_80

    .line 115
    :cond_7b
    array-length v0, p0

    if-lt v0, v3, :cond_80

    .line 116
    aget-object p1, p0, v2

    :cond_80
    :goto_80
    return-object p1

    :goto_81
    if-eqz v2, :cond_8b

    .line 103
    :try_start_83
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :cond_8b
    :goto_8b
    throw p0
.end method

.method public static getCustomChannel()Ljava/lang/String;
    .registers 1

    .line 218
    sget-object v0, Ljy/sdk/common/utils/misc/INFChannel;->customChannel:Ljava/lang/String;

    return-object v0
.end method

.method public static getOtherInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 162
    sget-object v0, Ljy/sdk/common/utils/misc/INFChannel;->mOtherInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 163
    sget-object p0, Ljy/sdk/common/utils/misc/INFChannel;->mOtherInfo:Ljava/lang/String;

    return-object p0

    :cond_b
    const-string v0, "jychannel"

    .line 165
    invoke-static {p0, v0}, Ljy/sdk/common/utils/misc/INFChannel;->getOtherInfoFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ljy/sdk/common/utils/misc/INFChannel;->mOtherInfo:Ljava/lang/String;

    .line 166
    sget-object p0, Ljy/sdk/common/utils/misc/INFChannel;->mOtherInfo:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 167
    sget-object p0, Ljy/sdk/common/utils/misc/INFChannel;->mOtherInfo:Ljava/lang/String;

    return-object p0

    .line 169
    :cond_1e
    sget-object p0, Ljy/sdk/common/utils/misc/INFChannel;->defaultOtherInfo:Ljava/lang/String;

    return-object p0
.end method

.method private static getOtherInfoFromApk(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 175
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 176
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_77

    const/4 v2, 0x0

    .line 182
    :try_start_1c
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_4f
    .catchall {:try_start_1c .. :try_end_21} :catchall_4c

    .line 183
    :try_start_21
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 184
    :cond_25
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 185
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 186
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_39} :catch_49
    .catchall {:try_start_21 .. :try_end_39} :catchall_47

    if-eqz v4, :cond_25

    move-object v1, v2

    :cond_3c
    if-eqz v3, :cond_5b

    .line 197
    :try_start_3e
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_77

    goto :goto_5b

    :catch_42
    move-exception p0

    .line 199
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_77

    goto :goto_5b

    :catchall_47
    move-exception p0

    goto :goto_6c

    :catch_49
    move-exception p0

    move-object v2, v3

    goto :goto_50

    :catchall_4c
    move-exception p0

    move-object v3, v2

    goto :goto_6c

    :catch_4f
    move-exception p0

    .line 193
    :goto_50
    :try_start_50
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4c

    if-eqz v2, :cond_5b

    .line 197
    :try_start_55
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_77

    goto :goto_5b

    :catch_59
    move-exception p0

    goto :goto_43

    :cond_5b
    :goto_5b
    :try_start_5b
    const-string p0, "_"

    .line 203
    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7b

    .line 204
    array-length p1, p0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_7b

    const/4 p1, 0x2

    .line 205
    aget-object p0, p0, p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6a} :catch_77

    move-object v0, p0

    goto :goto_7b

    :goto_6c
    if-eqz v3, :cond_76

    .line 197
    :try_start_6e
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_77

    goto :goto_76

    :catch_72
    move-exception p1

    .line 199
    :try_start_73
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    :cond_76
    :goto_76
    throw p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_77

    :catch_77
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7b
    :goto_7b
    return-object v0
.end method

.method public static getOtherSubServerInfo()Ljava/lang/String;
    .registers 1

    .line 222
    sget-object v0, Ljy/sdk/common/utils/misc/INFChannel;->otherSubServerInfo:Ljava/lang/String;

    return-object v0
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .registers 3

    .line 148
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    .line 150
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static saveChannelBySharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 130
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "jychannel"

    .line 132
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "jychannel_version"

    .line 133
    invoke-static {p0}, Ljy/sdk/common/utils/misc/INFChannel;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public static setCustomChannel(Ljava/lang/String;)V
    .registers 1

    .line 214
    sput-object p0, Ljy/sdk/common/utils/misc/INFChannel;->customChannel:Ljava/lang/String;

    return-void
.end method

.method public static setOtherSubServerInfo(Ljava/lang/String;)V
    .registers 1

    .line 226
    sput-object p0, Ljy/sdk/common/utils/misc/INFChannel;->otherSubServerInfo:Ljava/lang/String;

    return-void
.end method
