.class public Ljy/sdk/common/ui/NoticeDialog;
.super Ljava/lang/Object;
.source "NoticeDialog.java"


# static fields
.field public static final TYPE_EXIT:I = 0x3

.field public static final TYPE_NORMAL:I = 0x1

.field public static final TYPE_WARNING:I = 0x2


# instance fields
.field private listener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;

.field private mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/AlertDialog;

.field private msg:Ljava/lang/String;

.field private msg2:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljy/sdk/common/abs/innercallbacks/IDialogListener;)V
    .registers 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u4f60\u7785\u5565?"

    .line 29
    iput-object v0, p0, Ljy/sdk/common/ui/NoticeDialog;->title:Ljava/lang/String;

    const-string v0, "\u7785\u4f60\u548b\u7684!"

    .line 31
    iput-object v0, p0, Ljy/sdk/common/ui/NoticeDialog;->msg:Ljava/lang/String;

    const-string v0, "\u4f60\u518d\u7785\u8bd5\u8bd5?"

    .line 33
    iput-object v0, p0, Ljy/sdk/common/ui/NoticeDialog;->msg2:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Ljy/sdk/common/ui/NoticeDialog;->title:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Ljy/sdk/common/ui/NoticeDialog;->msg:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Ljy/sdk/common/ui/NoticeDialog;->msg2:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    .line 42
    iput-object p5, p0, Ljy/sdk/common/ui/NoticeDialog;->listener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/common/ui/NoticeDialog;)Ljy/sdk/common/abs/innercallbacks/IDialogListener;
    .registers 1

    .line 18
    iget-object p0, p0, Ljy/sdk/common/ui/NoticeDialog;->listener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/common/ui/NoticeDialog;)Landroid/app/AlertDialog;
    .registers 1

    .line 18
    iget-object p0, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Ljy/sdk/common/ui/NoticeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 18
    iput-object p1, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private initExitDialog()Landroid/app/AlertDialog;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_19

    .line 81
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 83
    :goto_19
    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->msg:Ljava/lang/String;

    new-instance v2, Ljy/sdk/common/ui/NoticeDialog$1;

    invoke-direct {v2, p0}, Ljy/sdk/common/ui/NoticeDialog$1;-><init>(Ljy/sdk/common/ui/NoticeDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->msg2:Ljava/lang/String;

    new-instance v2, Ljy/sdk/common/ui/NoticeDialog$2;

    invoke-direct {v2, p0}, Ljy/sdk/common/ui/NoticeDialog$2;-><init>(Ljy/sdk/common/ui/NoticeDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v1, Ljy/sdk/common/ui/NoticeDialog$3;

    invoke-direct {v1, p0}, Ljy/sdk/common/ui/NoticeDialog$3;-><init>(Ljy/sdk/common/ui/NoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private initNormalDialog()Landroid/app/AlertDialog;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_19

    .line 173
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 175
    :goto_19
    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "jy_commonsdk_ndialog"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 176
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "jy_commonsdk_tv_title"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Ljy/sdk/common/ui/NoticeDialog;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "jy_commonsdk_tv_content"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 179
    iget-object v3, p0, Ljy/sdk/common/ui/NoticeDialog;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "jy_commonsdk_tv_comfi"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    new-instance v3, Ljy/sdk/common/ui/NoticeDialog$6;

    invoke-direct {v3, p0}, Ljy/sdk/common/ui/NoticeDialog$6;-><init>(Ljy/sdk/common/ui/NoticeDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v2, Ljy/sdk/common/ui/NoticeDialog$7;

    invoke-direct {v2, p0}, Ljy/sdk/common/ui/NoticeDialog$7;-><init>(Ljy/sdk/common/ui/NoticeDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private initWainningDialog()Landroid/app/AlertDialog;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_19

    .line 123
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 126
    :goto_19
    iget-object v1, p0, Ljy/sdk/common/ui/NoticeDialog;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "jy_commonsdk_wdialog"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "tv_title"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    .line 129
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 130
    iget-object v3, p0, Ljy/sdk/common/ui/NoticeDialog;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "tv_msg"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljy/sdk/common/ui/NoticeDialog;->msg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "confi"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const-string v3, "\u786e\u5b9a"

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "rl_confrim"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 141
    new-instance v1, Ljy/sdk/common/ui/NoticeDialog$4;

    invoke-direct {v1, p0}, Ljy/sdk/common/ui/NoticeDialog$4;-><init>(Ljy/sdk/common/ui/NoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    new-instance v1, Ljy/sdk/common/ui/NoticeDialog$5;

    invoke-direct {v1, p0}, Ljy/sdk/common/ui/NoticeDialog$5;-><init>(Ljy/sdk/common/ui/NoticeDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disMiss()V
    .registers 3

    .line 69
    iget-object v0, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "jy_sdk"

    const-string v1, "disMiss"

    .line 70
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_18
    return-void
.end method

.method public show(I)V
    .registers 3

    .line 47
    iget-object v0, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_21

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 50
    invoke-direct {p0}, Ljy/sdk/common/ui/NoticeDialog;->initNormalDialog()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_21

    :cond_e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 52
    invoke-direct {p0}, Ljy/sdk/common/ui/NoticeDialog;->initWainningDialog()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_21

    :cond_18
    const/4 v0, 0x3

    if-ne p1, v0, :cond_21

    .line 54
    invoke-direct {p0}, Ljy/sdk/common/ui/NoticeDialog;->initExitDialog()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    .line 58
    :cond_21
    :goto_21
    :try_start_21
    iget-object p1, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 59
    iget-object p1, p0, Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_3d

    :cond_2f
    const-string p1, "jy_sdk"

    const-string v0, "dialog is showing..."

    .line 61
    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_37

    goto :goto_3d

    :catch_37
    move-exception p1

    const-string v0, "jy_sdk"

    .line 64
    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3d
    return-void
.end method
