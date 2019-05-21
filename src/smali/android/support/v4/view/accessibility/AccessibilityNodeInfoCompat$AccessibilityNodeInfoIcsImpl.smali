.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1575
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatKitKat;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1593
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->addAction(Ljava/lang/Object;I)V

    .line 1594
    return-void
.end method

.method public final addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1598
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    .line 1599
    return-void
.end method

.method public final getActions(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1608
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getActions(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1613
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1614
    return-void
.end method

.method public final getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1618
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1619
    return-void
.end method

.method public final getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1633
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1638
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1643
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1653
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final isCheckable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1663
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isCheckable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isChecked(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1668
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isClickable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1673
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1678
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocusable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1683
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isFocusable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocused(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1688
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isLongClickable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1693
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isLongClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPassword(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1698
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isScrollable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1703
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1708
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1588
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final recycle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1808
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->recycle(Ljava/lang/Object;)V

    .line 1809
    return-void
.end method

.method public final setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1718
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1719
    return-void
.end method

.method public final setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1723
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1724
    return-void
.end method

.method public final setCheckable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1728
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setCheckable(Ljava/lang/Object;Z)V

    .line 1729
    return-void
.end method

.method public final setChecked(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1733
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setChecked(Ljava/lang/Object;Z)V

    .line 1734
    return-void
.end method

.method public final setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1738
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1739
    return-void
.end method

.method public final setClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1743
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setClickable(Ljava/lang/Object;Z)V

    .line 1744
    return-void
.end method

.method public final setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1748
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1749
    return-void
.end method

.method public final setEnabled(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1753
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setEnabled(Ljava/lang/Object;Z)V

    .line 1754
    return-void
.end method

.method public final setFocusable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1758
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setFocusable(Ljava/lang/Object;Z)V

    .line 1759
    return-void
.end method

.method public final setFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1763
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setFocused(Ljava/lang/Object;Z)V

    .line 1764
    return-void
.end method

.method public final setLongClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1768
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setLongClickable(Ljava/lang/Object;Z)V

    .line 1769
    return-void
.end method

.method public final setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1773
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1774
    return-void
.end method

.method public final setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1778
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    .line 1779
    return-void
.end method

.method public final setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1788
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setScrollable(Ljava/lang/Object;Z)V

    .line 1789
    return-void
.end method

.method public final setSelected(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1793
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setSelected(Ljava/lang/Object;Z)V

    .line 1794
    return-void
.end method

.method public final setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1798
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 1799
    return-void
.end method
