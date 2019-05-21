.class final Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusIndicatorAnimatorModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$chipTextView:Landroid/widget/TextView;

.field private synthetic val$focusIndicatorRingDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

.field private synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$focusIndicatorRingDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    iput-object p3, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$chipTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$resources:Landroid/content/res/Resources;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$focusIndicatorRingDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;->setOuterRingDiameterDp(F)V

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$resources:Landroid/content/res/Resources;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$focusIndicatorRingDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;->setOuterRingThickness(F)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$chipTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;->val$chipTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 252
    return-void
.end method
