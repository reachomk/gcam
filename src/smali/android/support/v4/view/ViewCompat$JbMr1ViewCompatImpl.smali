.class Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1510
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 2568
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 1564
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutDirection(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1529
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getPaddingEnd(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1544
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getPaddingStart(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1539
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1554
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final isPaddingRelative(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1559
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1549
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1550
    return-void
.end method
