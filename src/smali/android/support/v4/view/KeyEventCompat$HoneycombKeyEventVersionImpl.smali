.class final Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
.super Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final metaStateHasModifiers(II)Z
    .locals 1

    .prologue
    .line 110
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final metaStateHasNoModifiers(I)Z
    .locals 1

    .prologue
    .line 115
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final normalizeMetaState(I)I
    .locals 1

    .prologue
    .line 105
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method