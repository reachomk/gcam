.class Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AccessibilityNodeProviderImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2151
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 2152
    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2159
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 2160
    return-void
.end method

.method public static setScrollX(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2175
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 2176
    return-void
.end method

.method public static setScrollY(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2179
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 2180
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 2183
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2184
    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2191
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 2192
    return-void
.end method


# virtual methods
.method public newAccessibilityNodeProviderBridge(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    return-object v0
.end method
