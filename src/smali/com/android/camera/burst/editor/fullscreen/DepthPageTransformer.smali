.class final Lcom/android/camera/burst/editor/fullscreen/DepthPageTransformer;
.super Ljava/lang/Object;
.source "DepthPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 29
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 37
    cmpg-float v1, p2, v2

    if-lez v1, :cond_0

    .line 44
    cmpg-float v1, p2, v3

    if-gez v1, :cond_0

    .line 46
    sub-float v1, v3, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 49
    int-to-float v0, v0

    neg-float v1, p2

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 52
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 61
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 62
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method
