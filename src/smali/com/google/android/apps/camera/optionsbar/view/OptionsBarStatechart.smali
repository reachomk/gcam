.class public Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;
.source "OptionsBarStatechart.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$FadingOut;,
        Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$FadingIn;,
        Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$Hidden;,
        Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$Shown;
    }
.end annotation


# instance fields
.field private fadeInAnimation:Landroid/animation/ObjectAnimator;

.field private fadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private leftPlaceholderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

.field private optionsBarView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->optionsBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->leftPlaceholderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->optionsBarView:Landroid/view/View;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->leftPlaceholderMagnet:Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    .line 1038
    const/high16 v0, 0x10b0000

    invoke-static {p3, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1040
    const v0, 0x10b0001

    invoke-static {p3, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1043
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1044
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1046
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1047
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->fadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->onAnimationComplete()V

    .line 127
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
