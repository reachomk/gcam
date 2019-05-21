.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1166
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final combineMeasuredStates(II)I
    .locals 1

    .prologue
    .line 1329
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public final getAlpha(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1173
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method final getFrameTime()J
    .locals 2

    .prologue
    .line 1169
    invoke-static {}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLayerType(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1181
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getLayerType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 1218
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public final getMeasuredState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1205
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1197
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final getTranslationX(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1209
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getTranslationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public final getTranslationY(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1213
    invoke-static {p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->getTranslationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1334
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1335
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1339
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1340
    return-void
.end method

.method public final resolveSizeAndState(III)I
    .locals 1

    .prologue
    .line 1193
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public final setAlpha(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1231
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setAlpha(Landroid/view/View;F)V

    .line 1232
    return-void
.end method

.method public final setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1177
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1178
    return-void
.end method

.method public final setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1319
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 1320
    return-void
.end method

.method public final setTranslationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1223
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setTranslationX(Landroid/view/View;F)V

    .line 1224
    return-void
.end method

.method public final setTranslationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1227
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs;->setTranslationY(Landroid/view/View;F)V

    .line 1228
    return-void
.end method
