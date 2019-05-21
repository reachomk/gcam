.class public Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;
.super Landroid/widget/FrameLayout;
.source "FilmstripShortTallBottomBarBackground.java"


# instance fields
.field public apiHelper:Lcom/android/camera/util/ApiHelper;

.field private filmstripShortBottomBarGradient:Landroid/view/View;

.field private filmstripTallBottomBarGradient:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private final setPortrait()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->filmstripShortBottomBarGradient:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->filmstripTallBottomBarGradient:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/util/ApiHelper;->isTablet(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->setPortrait()V

    .line 69
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 66
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->setPortrait()V

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->setPortrait()V

    goto :goto_0

    .line 1044
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->filmstripShortBottomBarGradient:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->filmstripTallBottomBarGradient:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 31
    invoke-static {p0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->from(Landroid/view/View;)Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v1

    .line 32
    const v0, 0x7f110101

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->filmstripShortBottomBarGradient:Landroid/view/View;

    .line 33
    const v0, 0x7f110102

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->filmstripTallBottomBarGradient:Landroid/view/View;

    .line 34
    return-void
.end method
