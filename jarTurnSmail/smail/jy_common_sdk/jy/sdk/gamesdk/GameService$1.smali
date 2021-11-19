.class final Ljy/sdk/gamesdk/GameService$1;
.super Ljava/lang/Object;
.source "GameService.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/GameService;->getInitData(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$initListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;Landroid/app/Activity;)V
    .registers 3

    .line 108
    iput-object p1, p0, Ljy/sdk/gamesdk/GameService$1;->val$initListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;

    iput-object p2, p0, Ljy/sdk/gamesdk/GameService$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUpdate(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "updateInfo"

    .line 157
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_d

    .line 159
    invoke-interface {p2, v0}, Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;->initSuc(Ljava/util/Map;)V

    return-void

    :cond_d
    const-string v1, "updateUrl"

    .line 162
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_4f

    :cond_22
    const-string p2, "updateTrip"

    .line 168
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "versionCode"

    .line 170
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    .line 172
    new-instance v0, Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-direct {v0}, Ljy/sdk/gamesdk/update/ApkInfo;-><init>()V

    .line 173
    iput-object p2, v0, Ljy/sdk/gamesdk/update/ApkInfo;->upTrip:Ljava/lang/String;

    .line 174
    iput-object v1, v0, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    .line 175
    iput p3, v0, Ljy/sdk/gamesdk/update/ApkInfo;->versionCode:I

    .line 176
    iget-object p2, v0, Ljy/sdk/gamesdk/update/ApkInfo;->url:Ljava/lang/String;

    invoke-static {p2}, Ljy/sdk/common/utils/encode/MD5Provider;->md5string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Ljy/sdk/gamesdk/update/ApkInfo;->appName:Ljava/lang/String;

    .line 177
    new-instance p2, Ljy/sdk/gamesdk/update/UpdateManager;

    invoke-direct {p2, p1, v0}, Ljy/sdk/gamesdk/update/UpdateManager;-><init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    .line 178
    new-instance p3, Ljy/sdk/gamesdk/GameService$1$1;

    invoke-direct {p3, p0, p2}, Ljy/sdk/gamesdk/GameService$1$1;-><init>(Ljy/sdk/gamesdk/GameService$1;Ljy/sdk/gamesdk/update/UpdateManager;)V

    invoke-static {p1, p3}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void

    .line 165
    :cond_4f
    :goto_4f
    invoke-interface {p2, v0}, Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;->initSuc(Ljava/util/Map;)V

    return-void
.end method

.method private loadAutoUser(Lorg/json/JSONObject;Landroid/app/Activity;)V
    .registers 5

    .line 190
    new-instance v0, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v0}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    const-string v1, "last_sid"

    .line 192
    invoke-static {p2, v1}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 193
    invoke-virtual {v0, p2}, Ljy/sdk/gamesdk/entity/UserInfo;->setSid(Ljava/lang/String;)V

    .line 194
    sput-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    .line 196
    sget-object p2, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    const-string v0, "use_app_token"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Ljy/sdk/gamesdk/utils/SpUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4b

    const/4 p2, 0x0

    :try_start_1c
    const-string v0, "app"

    .line 198
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p1, "jy_sdk"

    const-string v0, "server apptoken res empty!"

    .line 200
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object p1, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    const-string v0, "use_app_token"

    invoke-static {p1, v0, p2}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 204
    :cond_37
    invoke-static {p1}, Ljy/sdk/gamesdk/utils/EncTool;->decryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object p1, Ljy/sdk/gamesdk/entity/InitInfo;->app_token_account:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3f} :catch_40

    goto :goto_4b

    :catch_40
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    sget-object p1, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    const-string v0, "use_app_token"

    invoke-static {p1, v0, p2}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private parseApi(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "apis"

    .line 217
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 221
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 222
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CODE_NAME"

    .line 223
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CODE_VALUE"

    .line 224
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "AUTH_SERVER_URL"

    .line 226
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 227
    sput-object v1, Ljy/sdk/gamesdk/api/ApiConstants;->AUTH_SERVER_URL:Ljava/lang/String;

    goto :goto_57

    :cond_37
    const-string v3, "PAY_SERVER_URL"

    .line 228
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 229
    sput-object v1, Ljy/sdk/gamesdk/api/ApiConstants;->PAY_SERVER_URL:Ljava/lang/String;

    goto :goto_57

    :cond_42
    const-string v3, "NSVipServer"

    .line 230
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 231
    sput-object v1, Ljy/sdk/common/abs/ComConstants;->BASE_USER:Ljava/lang/String;

    goto :goto_57

    :cond_4d
    const-string v3, "NSPayServer"

    .line 232
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 233
    sput-object v1, Ljy/sdk/common/abs/ComConstants;->BASE_PAY:Ljava/lang/String;

    :cond_57
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_5a
    return-void
.end method

.method private parseBody(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "buoy"

    .line 300
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 304
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 305
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CODE_NAME"

    .line 306
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CODE_VALUE"

    .line 307
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "url"

    .line 309
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 310
    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->buoyCenterUrl:Ljava/lang/String;

    .line 311
    sput-object v1, Ljy/sdk/gamesdk/api/ApiConstants;->BUOY_CENTER:Ljava/lang/String;

    goto :goto_47

    :cond_3b
    const-string v3, "logo"

    .line 312
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 313
    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->buoyUrl:Ljava/lang/String;

    :cond_47
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_4a
    return-void
.end method

.method private parseConfig(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "config"

    .line 240
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 244
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_ba

    .line 245
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CODE_NAME"

    .line 246
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CODE_VALUE"

    .line 247
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b6

    const-string v3, "kefumsg"

    .line 249
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 250
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->findPassTip:Ljava/lang/String;

    :cond_32
    const-string v3, "kefuqq"

    .line 252
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 253
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->kefuQQ:Ljava/lang/String;

    :cond_3e
    const-string v3, "sdklogo"

    .line 255
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 256
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->logoUrl:Ljava/lang/String;

    :cond_4a
    const-string v3, "ht"

    .line 258
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 260
    :try_start_52
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Ljy/sdk/gamesdk/entity/InitInfo;->ht:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception v3

    .line 262
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    :goto_5f
    const-string v3, "userGreement"

    .line 265
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 266
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->userpro:Ljava/lang/String;

    :cond_6b
    const-string v3, "queOrdNum"

    .line 268
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 270
    :try_start_73
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Ljy/sdk/gamesdk/entity/InitInfo;->querySum:I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception v3

    .line 272
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_80
    :goto_80
    const-string v3, "topic"

    .line 275
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 276
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    :cond_8c
    const-string v3, "regHide"

    .line 278
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 280
    :try_start_94
    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Ljy/sdk/gamesdk/entity/InitInfo;->regHide:I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9c} :catch_9d

    goto :goto_a1

    :catch_9d
    move-exception v3

    .line 283
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a1
    :goto_a1
    const-string v3, "defaultCheck"

    .line 286
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 288
    :try_start_a9
    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Ljy/sdk/gamesdk/entity/InitInfo;->defaultCheck:I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b1} :catch_b2

    goto :goto_b6

    :catch_b2
    move-exception v1

    .line 290
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b6
    :goto_b6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_ba
    return-void
.end method

.method private parseNotice(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 4

    const-string p1, "noticeInfo"

    .line 139
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 142
    :try_start_8
    new-instance p2, Ljy/sdk/gamesdk/entity/Notice;

    invoke-direct {p2}, Ljy/sdk/gamesdk/entity/Notice;-><init>()V

    const-string v0, "id"

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Ljy/sdk/gamesdk/entity/Notice;->id:I

    const-string v0, "notice_type"

    .line 144
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Ljy/sdk/gamesdk/entity/Notice;->type:I

    const-string v0, "jumpAction"

    .line 145
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Ljy/sdk/gamesdk/entity/Notice;->jumpAction:I

    const-string v0, "notice_content"

    .line 146
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljy/sdk/gamesdk/entity/Notice;->content:Ljava/lang/String;

    const-string v0, "url"

    .line 147
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Ljy/sdk/gamesdk/entity/Notice;->jumpUrl:Ljava/lang/String;

    .line 148
    sget-object p1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sput-object p2, Ljy/sdk/gamesdk/entity/InitInfo;->initNotice:Ljy/sdk/gamesdk/entity/Notice;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "YHCSH_000"

    const-string v1, "status"

    .line 112
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 113
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$1;->val$initListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;->initFailed(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_34
    :try_start_34
    new-instance v0, Ljy/sdk/gamesdk/entity/InitInfo;

    invoke-direct {v0}, Ljy/sdk/gamesdk/entity/InitInfo;-><init>()V

    sput-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    const-string v0, "data"

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/GameService$1;->parseBody(Lorg/json/JSONObject;)V

    .line 121
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/GameService$1;->parseConfig(Lorg/json/JSONObject;)V

    .line 122
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/GameService$1;->parseApi(Lorg/json/JSONObject;)V

    .line 125
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/GameService$1;->loadAutoUser(Lorg/json/JSONObject;Landroid/app/Activity;)V

    .line 127
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Ljy/sdk/gamesdk/GameService$1;->parseNotice(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 129
    iget-object v0, p0, Ljy/sdk/gamesdk/GameService$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Ljy/sdk/gamesdk/GameService$1;->val$initListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;

    invoke-direct {p0, v0, v1, p1}, Ljy/sdk/gamesdk/GameService$1;->checkUpdate(Landroid/app/Activity;Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;Lorg/json/JSONObject;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5b} :catch_5c

    goto :goto_67

    :catch_5c
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    iget-object p1, p0, Ljy/sdk/gamesdk/GameService$1;->val$initListener:Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;

    const-string v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    invoke-interface {p1, v0}, Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;->initFailed(Ljava/lang/String;)V

    :goto_67
    return-void
.end method
