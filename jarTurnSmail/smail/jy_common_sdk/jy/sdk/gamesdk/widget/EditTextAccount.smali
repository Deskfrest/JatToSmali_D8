.class public Ljy/sdk/gamesdk/widget/EditTextAccount;
.super Landroid/widget/EditText;
.source "EditTextAccount.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;,
        Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;,
        Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;,
        Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

.field private arrowState:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

.field private checkHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;

.field private curUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

.field private deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

.field private listView:Landroid/widget/ListView;

.field private mArrowDown:Landroid/graphics/drawable/Drawable;

.field private mArrowUp:Landroid/graphics/drawable/Drawable;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "jy_sdk"

    .line 39
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->TAG:Ljava/lang/String;

    .line 128
    sget-object p1, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->NONE:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->arrowState:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    .line 57
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "jy_sdk"

    .line 39
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->TAG:Ljava/lang/String;

    .line 128
    sget-object p1, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->NONE:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->arrowState:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    .line 62
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->init()V

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/widget/EditTextAccount;)Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;
    .registers 1

    .line 37
    iget-object p0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/widget/EditTextAccount;)Landroid/widget/PopupWindow;
    .registers 1

    .line 37
    iget-object p0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private addPopWindow()V
    .registers 6

    .line 176
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 178
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 181
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3d

    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3d

    .line 182
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->TAG:Ljava/lang/String;

    const-string v2, "pop"

    invoke-static {v0, v2}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0, v1, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_44

    .line 185
    :cond_3d
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->TAG:Ljava/lang/String;

    const-string v2, "no pop "

    invoke-static {v0, v2}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setFocusable(Z)V

    .line 189
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setFocusableInTouchMode(Z)V

    .line 190
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 191
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->measure(II)V

    .line 67
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setSingleLine()V

    const/high16 v0, 0x10000000

    .line 68
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setImeOptions(I)V

    .line 69
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->initImage()V

    .line 70
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->NONE:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V

    return-void
.end method

.method private initImage()V
    .registers 5

    .line 116
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 117
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowDown:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 118
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v3, "jy_arrow_down"

    invoke-virtual {v1, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowDown:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    :cond_21
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowUp:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_36

    .line 122
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v3, "jy_arrow_up"

    invoke-virtual {v1, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowUp:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_36
    return-void
.end method

.method private refListData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljy/sdk/gamesdk/entity/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_1b

    .line 75
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "jy_history_account_layout"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->listView:Landroid/widget/ListView;

    .line 77
    :cond_1b
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    if-eqz v0, :cond_2f

    .line 78
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->clear()V

    .line 79
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->addAll(Ljava/util/Collection;)V

    .line 80
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->notifyDataSetChanged()V

    return-void

    .line 83
    :cond_2f
    new-instance v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "jy_login_history_list_item"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2, p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;-><init>(Ljy/sdk/gamesdk/widget/EditTextAccount;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    .line 84
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->listView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V
    .registers 6

    .line 153
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->arrowState:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    .line 155
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$1;->$SwitchMap$jy$sdk$gamesdk$widget$EditTextAccount$ArrowState:[I

    invoke-virtual {p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_58

    goto :goto_57

    .line 165
    :pswitch_11
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v0, v3, v0

    .line 165
    invoke-virtual {p0, p1, v1, v2, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_57

    .line 161
    :pswitch_28
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v0, v3, v0

    .line 161
    invoke-virtual {p0, p1, v1, v2, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_57

    .line 157
    :pswitch_40
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v0, v3, v0

    .line 157
    invoke-virtual {p0, p1, v1, v2, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_40
        :pswitch_28
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 201
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->TAG:Ljava/lang/String;

    const-string v1, "pop  onDismiss"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setFocusable(Z)V

    .line 203
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setFocusableInTouchMode(Z)V

    .line 204
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->requestFocus()Z

    .line 205
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1f

    .line 206
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->NONE:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V

    return-void

    .line 209
    :cond_1f
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getCount()I

    move-result v1

    if-ne v1, v0, :cond_2d

    .line 210
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->NONE:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V

    goto :goto_32

    .line 212
    :cond_2d
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->DOWN:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V

    :goto_32
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 318
    :try_start_0
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 319
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 321
    :cond_d
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->adapter:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {p1, p3}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljy/sdk/gamesdk/entity/UserInfo;

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->curUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

    .line 322
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->checkHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;

    if-eqz p1, :cond_27

    .line 323
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->checkHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;

    iget-object p2, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->curUserInfo:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-interface {p1, p2}, Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;->onCheckUser(Ljy/sdk/gamesdk/entity/UserInfo;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    :goto_27
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    .line 133
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-eqz v0, :cond_46

    .line 134
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 135
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getWidth()I

    move-result v2

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_35

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_46

    .line 137
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->arrowState:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    sget-object v1, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->UP:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    if-eq v0, v1, :cond_46

    .line 138
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->UP:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V

    .line 139
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->addPopWindow()V

    .line 143
    :cond_46
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCheckHistoryUserListener(Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;)V
    .registers 2

    .line 307
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->checkHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$CheckHistoryUserListener;

    return-void
.end method

.method public setDeleteHistoryUserListener(Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;)V
    .registers 2

    .line 294
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount;->deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

    return-void
.end method

.method public setHistoryUsers(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljy/sdk/gamesdk/entity/UserInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_52

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_52

    .line 94
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 95
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->NONE:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V

    goto :goto_1b

    .line 99
    :cond_16
    sget-object v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;->DOWN:Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->setArrowAndPopState(Ljy/sdk/gamesdk/widget/EditTextAccount$ArrowState;)V

    .line 102
    :goto_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljy/sdk/gamesdk/entity/UserInfo;

    .line 105
    new-instance v2, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v2}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    .line 106
    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljy/sdk/gamesdk/entity/UserInfo;->setPassword(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljy/sdk/gamesdk/entity/UserInfo;->getLastGame()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljy/sdk/gamesdk/entity/UserInfo;->setLastGame(Ljava/lang/String;)V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 111
    :cond_4e
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->refListData(Ljava/util/List;)V

    return-void

    :cond_52
    :goto_52
    return-void
.end method
