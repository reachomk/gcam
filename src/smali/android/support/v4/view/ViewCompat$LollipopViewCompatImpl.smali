.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1617
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .prologue
    .line 1756
    .line 1758
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    .line 1757
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->dispatchApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1756
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1730
    invoke-static {p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 1745
    invoke-static {p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getElevation(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1640
    invoke-static {p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getTranslationZ(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1650
    invoke-static {p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getZ(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1763
    invoke-static {p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1773
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1774
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1778
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1779
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .prologue
    .line 1750
    .line 1751
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1750
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public final requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1630
    invoke-static {p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->requestApplyInsets(Landroid/view/View;)V

    .line 1631
    return-void
.end method

.method public final setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 1735
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 1736
    return-void
.end method

.method public final setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 1740
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 1741
    return-void
.end method

.method public final setElevation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1635
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->setElevation(Landroid/view/View;F)V

    .line 1636
    return-void
.end method

.method public final setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 1

    .prologue
    .line 1656
    if-nez p2, :cond_0

    .line 1657
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    .line 1671
    :goto_0
    return-void

    .line 1661
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;-><init>(Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 1670
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    goto :goto_0
.end method

.method public final stopNestedScroll(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1690
    invoke-static {p1}, Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;->stopNestedScroll(Landroid/view/View;)V

    .line 1691
    return-void
.end method
