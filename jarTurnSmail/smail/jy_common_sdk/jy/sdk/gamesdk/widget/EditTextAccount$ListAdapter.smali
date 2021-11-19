.class Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditTextAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/widget/EditTextAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljy/sdk/gamesdk/entity/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/widget/EditTextAccount;


# direct methods
.method public constructor <init>(Ljy/sdk/gamesdk/widget/EditTextAccount;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljy/sdk/gamesdk/entity/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->this$0:Ljy/sdk/gamesdk/widget/EditTextAccount;

    .line 219
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_62

    .line 226
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p3

    const-string v0, "jy_login_history_list_item"

    invoke-virtual {p3, v0}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 228
    new-instance p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;

    invoke-direct {p3, p0}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;-><init>(Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;)V

    .line 230
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "iv_list_dot"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->iv_list_dot:Landroid/view/View;

    .line 232
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_list_userid"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->tv_list_userid:Landroid/widget/TextView;

    .line 234
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "fl_list_delete_user"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->fl_delete_user:Landroid/view/View;

    .line 236
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_list_user_lastgame"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->tv_list_user_lastgame:Landroid/widget/TextView;

    .line 237
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_68

    .line 239
    :cond_62
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;

    .line 242
    :goto_68
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/entity/UserInfo;

    .line 244
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->this$0:Ljy/sdk/gamesdk/widget/EditTextAccount;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v2, Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-direct {v2}, Ljy/sdk/gamesdk/entity/UserInfo;-><init>()V

    .line 246
    invoke-virtual {v2, v1}, Ljy/sdk/gamesdk/entity/UserInfo;->setUserName(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, v2}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_98

    invoke-virtual {v2, v0}, Ljy/sdk/gamesdk/entity/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 248
    iget-object v1, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->iv_list_dot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9e

    .line 250
    :cond_98
    iget-object v1, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->iv_list_dot:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_9e
    iget-object v1, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->tv_list_userid:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->tv_list_user_lastgame:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/entity/UserInfo;->getLastGame()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p3, p3, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->fl_delete_user:Landroid/view/View;

    new-instance v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;

    invoke-direct {v0, p0, p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;-><init>(Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
