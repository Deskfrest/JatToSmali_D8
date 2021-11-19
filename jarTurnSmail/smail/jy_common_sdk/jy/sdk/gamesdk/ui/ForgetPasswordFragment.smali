.class public Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private btn_time_down:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

.field private et_phone_number:Landroid/widget/EditText;

.field private et_sms_verify:Landroid/widget/EditText;

.field private open_LoginMainFragment:I

.field private open_ResetPassFragment:I

.field private tv_kefuqq:Landroid/widget/TextView;

.field private tv_next_step:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->open_ResetPassFragment:I

    const/4 v0, 0x2

    .line 76
    iput v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->open_LoginMainFragment:I

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;)I
    .registers 1

    .line 28
    iget p0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->open_ResetPassFragment:I

    return p0
.end method

.method private startCheck(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 148
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;

    invoke-direct {v2, p0, p1, p2}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;-><init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkFindPassCheckVerify(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_forget_password"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 41
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "rl_title_back_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_next_step"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_title_name"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "btn_time_down"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->btn_time_down:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    .line 46
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->btn_time_down:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    invoke-virtual {v0, p0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_next_step"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->tv_next_step:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->tv_next_step:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_sms_verify"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->et_sms_verify:Landroid/widget/EditText;

    .line 50
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "et_phone_number"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->et_phone_number:Landroid/widget/EditText;

    .line 51
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_find_tips"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->tv_kefuqq:Landroid/widget/TextView;

    .line 52
    sget-object p1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object p1, Ljy/sdk/gamesdk/entity/InitInfo;->findPassTip:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 53
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->tv_kefuqq:Landroid/widget/TextView;

    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v0, Ljy/sdk/gamesdk/entity/InitInfo;->findPassTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d3

    .line 55
    :cond_af
    sget-object p1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object p1, Ljy/sdk/gamesdk/entity/InitInfo;->kefuQQ:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d3

    .line 56
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->tv_kefuqq:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u70b9\u51fb\u8054\u7cfb\u5ba2\u670dQQ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->kefuQQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_d3
    :goto_d3
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->tv_kefuqq:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance p1, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$1;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$1;-><init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;)V

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    return-void
.end method

.method protected nextStep(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 171
    new-instance v0, Ljy/sdk/gamesdk/ui/ResetPassFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/ResetPassFragment;-><init>()V

    .line 172
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "phone"

    .line 173
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vcode"

    .line 174
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 176
    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->setCancelable(Z)V

    .line 177
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "ForgetPasswordFragment"

    invoke-virtual {v0, p1, p2}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    iget p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->open_ResetPassFragment:I

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->dismiss(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 82
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "rl_title_back_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 84
    iget p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->open_LoginMainFragment:I

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->dismiss(I)V

    goto/16 :goto_101

    .line 86
    :cond_17
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "btn_time_down"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_6a

    .line 87
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->et_phone_number:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 90
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_3f
    invoke-static {p1}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 94
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_4d
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->btn_time_down:Ljy/sdk/gamesdk/widget/CountDownTimerButton;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/CountDownTimerButton;->startTimeDown()V

    .line 98
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Ljy/sdk/gamesdk/api/ApiClient$Vtype;->RESET_PASS:Ljy/sdk/gamesdk/api/ApiClient$Vtype;

    new-instance v3, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$2;

    invoke-direct {v3, p0}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$2;-><init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetVerify(Landroid/app/Activity;Ljy/sdk/gamesdk/api/ApiClient$Vtype;Ljy/sdk/gamesdk/api/IApiCallBack;[Ljava/lang/String;)V

    goto/16 :goto_101

    .line 112
    :cond_6a
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_next_step"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_a6

    .line 117
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->et_phone_number:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->et_sms_verify:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Ljy/sdk/gamesdk/utils/RegMsgUtil;->checkPhoneVcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 123
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_a2
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->startCheck(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    .line 129
    :cond_a6
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_find_tips"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_101

    .line 131
    sget-object p1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object p1, Ljy/sdk/gamesdk/entity/InitInfo;->kefuQQ:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 132
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u5ba2\u670dQQ\u914d\u7f6e\u4e3a\u7a7a, \u65e0\u6cd5\u8df3\u8f6c"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_c4
    :try_start_c4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v2, Ljy/sdk/gamesdk/entity/InitInfo;->kefuQQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&version=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 139
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u6b63\u5728\u8df3\u8f6c\u81f3\u5ba2\u670dQQ"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_f5} :catch_f6

    goto :goto_101

    :catch_f6
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u7a0b\u5e8f\u5f02\u5e38\uff0c\u6216\u8005\u5b89\u88c5\u7684QQ\u7248\u672c\u4e0d\u652f\u6301"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_101
    :goto_101
    return-void
.end method
