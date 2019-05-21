.class Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1496
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1449
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getMinimumHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1486
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getMinimumWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1481
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1476
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public final hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1501
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final hasTransientState(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1425
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1433
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1434
    return-void
.end method

.method public final postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1441
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method public final postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1445
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1446
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1491
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->requestApplyInsets(Landroid/view/View;)V

    .line 1492
    return-void
.end method

.method public final setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1506
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1507
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1456
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1457
    const/4 p2, 0x2

    .line 1459
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1460
    return-void
.end method
