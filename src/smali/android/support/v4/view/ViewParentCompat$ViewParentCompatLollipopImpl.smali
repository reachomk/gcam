.class final Landroid/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;
.super Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 1

    .prologue
    .line 190
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public final onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 197
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public final onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 0

    .prologue
    .line 184
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 185
    return-void
.end method

.method public final onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 177
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 179
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 165
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 167
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 158
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public final onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 171
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 172
    return-void
.end method
