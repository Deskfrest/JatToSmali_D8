.class public Ljy/sdk/gamesdk/utils/SpUtil;
.super Ljava/lang/Object;
.source "SpUtil.java"


# static fields
.field public static final AUTO_LOGIN_CHECK:Ljava/lang/String; = "auto_login_check"

.field public static final LAST_SID:Ljava/lang/String; = "last_sid"

.field public static final LAST_SID_USERNAME:Ljava/lang/String; = "last_sid_username"

.field public static final LAST_USER_NAME:Ljava/lang/String; = "last_user_name"

.field public static final LAST_USER_PASS:Ljava/lang/String; = "last_user_pass"

.field private static final SHARE_INFO:Ljava/lang/String; = "jy_sdk_data"

.field public static final USE_APP_TOKEN:Ljava/lang/String; = "use_app_token"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 7

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-wide p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, ""

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 61
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 63
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    .line 59
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 52
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 54
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    .line 50
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 43
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 45
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    .line 41
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-class v0, Ljy/sdk/gamesdk/utils/SpUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "jy_sdk_data"

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 31
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 29
    monitor-exit v0

    throw p0
.end method
