.class public Ljy/sdk/gamesdk/ui/LoginMainFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "LoginMainFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CHECK_ACCOUNT:I = 0x2

.field public static final CHECK_PHONE:I = 0x1

.field public static final open_FastRegFragment:I = 0x1

.field public static final open_RegisterAccountFragment:I = 0x2


# instance fields
.field private accountParams:[Ljava/lang/String;

.field containerId:I

.field private currentFragment:Landroid/app/Fragment;

.field private iv_logo:Landroid/widget/ImageView;

.field private loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

.field private loginMainFragmentDisMissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

.field private loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

.field private radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    .line 151
    new-instance v0, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/ui/LoginMainFragment$1;-><init>(Ljy/sdk/gamesdk/ui/LoginMainFragment;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainFragmentDisMissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
    .registers 1

    .line 32
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    return-object p0
.end method

.method static synthetic access$002(Ljy/sdk/gamesdk/ui/LoginMainFragment;Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;
    .registers 2

    .line 32
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    return-object p1
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/ui/LoginMainFragment;)Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;
    .registers 1

    .line 32
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    return-object p0
.end method

.method static synthetic access$102(Ljy/sdk/gamesdk/ui/LoginMainFragment;Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;)Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;
    .registers 2

    .line 32
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    return-object p1
.end method

.method private regMethod(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .registers 6

    .line 94
    sget-object v0, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget v0, Ljy/sdk/gamesdk/entity/InitInfo;->regHide:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_18

    goto :goto_16

    :pswitch_9
    const/16 p2, 0x8

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 99
    :pswitch_f
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 96
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected fastReg(Landroid/app/Activity;)V
    .registers 4

    .line 211
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment$2;-><init>(Ljy/sdk/gamesdk/ui/LoginMainFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Ljy/sdk/gamesdk/api/ApiClient;->sdkFastReg(Landroid/app/Activity;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_login_main_fragment"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 6

    .line 57
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_logo"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->iv_logo:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/gamesdk/utils/JyImageUtil;->build(Landroid/content/Context;)Ljy/sdk/gamesdk/utils/JyImageUtil;

    move-result-object v0

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->logoUrl:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->iv_logo:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/utils/JyImageUtil;->bindBitmap(Ljava/lang/String;Landroid/widget/ImageView;Ljy/sdk/gamesdk/utils/JyImageUtil$ImageLoderListener;)V

    .line 59
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_login_main_container"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->containerId:I

    .line 62
    new-instance v0, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    .line 63
    new-instance v0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;-><init>()V

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    .line 64
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountParam"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->accountParams:[Ljava/lang/String;

    .line 65
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->accountParams:[Ljava/lang/String;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->accountParams:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5b

    .line 66
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->accountParams:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;->setDefPhone(Ljava/lang/String;)V

    .line 68
    :cond_5b
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_login_main_radio_group"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->radioGroup:Landroid/widget/RadioGroup;

    .line 69
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 72
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checkType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_93

    .line 74
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_game_sdk_phone_login_btn"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_a9

    :cond_93
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a9

    .line 77
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_game_sdk_account_login_btn"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 82
    :cond_a9
    :goto_a9
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_fast_reg_game_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "tv_account_reg_jy"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v3, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u8d26\u53f7\u6ce8\u518c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainFragmentDisMissListener:Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;

    invoke-virtual {p0, v2}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    .line 89
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "login_footer"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1, v0, v1}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->regMethod(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4

    .line 111
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p1

    const-string v0, "jy_game_sdk_account_login_btn"

    invoke-virtual {p1, v0}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_1d

    .line 112
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    if-nez p1, :cond_17

    .line 113
    new-instance p1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    invoke-direct {p1}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;-><init>()V

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    .line 115
    :cond_17
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainAccountFragment:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->switchFragment(Landroid/app/Fragment;)V

    goto :goto_39

    .line 116
    :cond_1d
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p1

    const-string v0, "jy_game_sdk_phone_login_btn"

    invoke-virtual {p1, v0}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_39

    .line 117
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    if-nez p1, :cond_34

    .line 118
    new-instance p1, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    invoke-direct {p1}, Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;-><init>()V

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    .line 120
    :cond_34
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->loginMainPhoneFragment:Ljy/sdk/gamesdk/ui/LoginMainPhoneFragment;

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->switchFragment(Landroid/app/Fragment;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 200
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_fast_reg_game_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_15

    const/4 p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->dismiss(I)V

    goto :goto_25

    .line 202
    :cond_15
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_account_reg_jy"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_25

    const/4 p1, 0x2

    .line 203
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->dismiss(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method switchFragment(Landroid/app/Fragment;)V
    .registers 5

    .line 128
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->currentFragment:Landroid/app/Fragment;

    if-ne v0, p1, :cond_23

    .line 129
    sget-object v0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is currentFragment"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_23
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/LoginMainFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 135
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->currentFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_34

    .line 136
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->currentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 139
    :cond_34
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->currentFragment:Landroid/app/Fragment;

    .line 140
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "tag"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 142
    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_57

    .line 145
    :cond_4c
    iget v0, p0, Ljy/sdk/gamesdk/ui/LoginMainFragment;->containerId:I

    const-string v2, "tag"

    invoke-virtual {v1, v0, p1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_57
    return-void
.end method
