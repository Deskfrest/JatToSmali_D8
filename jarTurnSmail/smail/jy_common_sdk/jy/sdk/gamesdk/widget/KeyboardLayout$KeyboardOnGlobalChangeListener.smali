.class Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/widget/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardOnGlobalChangeListener"
.end annotation


# instance fields
.field mScreenHeight:I

.field final synthetic this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;


# direct methods
.method private constructor <init>(Ljy/sdk/gamesdk/widget/KeyboardLayout;)V
    .registers 2

    .line 61
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    return-void
.end method

.method synthetic constructor <init>(Ljy/sdk/gamesdk/widget/KeyboardLayout;Ljy/sdk/gamesdk/widget/KeyboardLayout$1;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;-><init>(Ljy/sdk/gamesdk/widget/KeyboardLayout;)V

    return-void
.end method

.method private getScreenHeight()I
    .registers 2

    .line 66
    iget v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    if-lez v0, :cond_7

    .line 67
    iget v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    return v0

    .line 69
    :cond_7
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    .line 70
    iget v0, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->mScreenHeight:I

    return v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    iget-object v1, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    invoke-virtual {v1}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 78
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->getScreenHeight()I

    move-result v1

    .line 79
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v1, v1, 0x5

    if-le v2, v1, :cond_2f

    const/4 v1, 0x1

    .line 83
    iget-object v2, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    # setter for: Ljy/sdk/gamesdk/widget/KeyboardLayout;->mKeyboardHeight:I
    invoke-static {v2, v0}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->access$102(Ljy/sdk/gamesdk/widget/KeyboardLayout;I)I

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 85
    :goto_30
    iget-object v2, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    # setter for: Ljy/sdk/gamesdk/widget/KeyboardLayout;->mIsKeyboardActive:Z
    invoke-static {v2, v1}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->access$202(Ljy/sdk/gamesdk/widget/KeyboardLayout;Z)Z

    .line 86
    iget-object v2, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    # getter for: Ljy/sdk/gamesdk/widget/KeyboardLayout;->mListener:Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;
    invoke-static {v2}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->access$300(Ljy/sdk/gamesdk/widget/KeyboardLayout;)Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 87
    iget-object v2, p0, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardOnGlobalChangeListener;->this$0:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    # getter for: Ljy/sdk/gamesdk/widget/KeyboardLayout;->mListener:Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;
    invoke-static {v2}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->access$300(Ljy/sdk/gamesdk/widget/KeyboardLayout;)Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;->onKeyboardStateChanged(ZI)V

    :cond_46
    return-void
.end method
