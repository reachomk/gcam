.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2141
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 3232
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public final newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2144
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2155
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2182
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2166
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
